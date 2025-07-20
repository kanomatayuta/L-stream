<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0.
 *
 * @category  Core
 *
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 *
 * @version   GIT: <1.0.0>
 *
 * @see      https://digidinos.com
 */

namespace App\Repositories;

use App\Exceptions\DDException;
use Carbon\Carbon;
use DB;
use Illuminate\Container\Container as App;
use Illuminate\Database\Eloquent\Model;
use Str;

/**
 * BaseRepository class.
 *
 * @category Core
 *
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 *
 * @see     https://digidinos.com
 */
abstract class BaseRepository
{
    /**
     * @var Model
     */
    protected $model;

    public function __construct()
    {
        $this->app = new App();
        $this->setModelClass();
    }

    /**
     * Magic method support by model.
     *
     * @param string $method     method name
     * @param array  $parameters list of parameters
     *
     * @return mixed
     */
    public function __call($method, $parameters)
    {
        return $this->model->{$method}(...$parameters);
    }

    /**
     * Get model.
     *
     * @return Model
     */
    abstract public function getModel();

    /**
     * @return Model
     */
    public function setModelClass()
    {
        $model = $this->app->make($this->getModel());
        if (!$model instanceof Model) {
            throw new DDException("Class {$this->getModel()} must be an instance of Illuminate\\Database\\Eloquent\\Model");
        }

        return $this->model = $model;
    }

    /**
     * Filter query.
     *
     * @param mixed $query query
     * @param array $data  list of conditions
     *
     * @return mixed
     */
    public function filter($query, array $data = [])
    {
        if (count($data) && method_exists($this, 'search')) {
            foreach ($data as $key => $value) {
                $query = $this->search($query, $key, $value);
            }
        }

        return $query;
    }

    /**
     * Get list model.
     *
     * @param mixed $conditions list of conditions
     *
     * @return collection $entities
     */
    public function list(array $conditions, bool $isReturnQuery = false)
    {
        $selectable = [];
        if (empty($conditions['select'])) {
            $selectable = $this->model->selectable ?? ['*'];
        } else {
            $selectable = $conditions['select'];
        }

        // select list column
        $entities = $this->model->select($selectable);

        // relations
        if (isset($conditions['with'])) {
            $entities = $entities->with($conditions['with']);
        }

        // realtion counts
        if (isset($conditions['with_count'])) {
            $entities = $entities->withCount($conditions['with_count']);
        }

        // joinWith other table
        if (isset($conditions['join_with']) && method_exists($this, 'joinWith')) {
            $entities = $this->joinWith($entities, $conditions);
        }

        // filter data
        if (count($conditions)) {
            $entities = $this->filter($entities, $conditions);
        }

        // order by
        if (isset($conditions['order_by'], $conditions['order_type'])) {
            $entities = $entities->orderBy($conditions['order_by'], $conditions['order_type'] ? 'asc' : 'desc');
        } else {
            $entities = $entities->orderBy('created_at', 'desc');
        }

        // first
        if (isset($conditions['first'])) {
            return $entities->first();
        }

        // all
        if (isset($conditions['all'])) {
            return $entities->get();
        }

        // limit
        if (isset($conditions['limit'])) {
            return $entities->paginate($conditions['limit']);
        }

        // query builder
        if ($isReturnQuery) {
            return $entities;
        }

        return $entities->get();
    }

    /**
     * Create model.
     *
     * @param array $data data create
     *
     * @return Model
     */
    public function create(array $data = [])
    {
        return $this->model->create($data);
    }

    /**
     * Get model detail.
     *
     * @param Model $entity    model
     * @param array $relations relationship tables
     *
     * @return Model
     */
    public function detail(Model $entity, $relations = [])
    {
        if (count($relations)) {
            return $entity->load($relations);
        }

        return $entity;
    }

    /**
     * Update model.
     *
     * @param Model $entity model
     * @param array $data   data update
     *
     * @return Model
     */
    public function update(Model $entity, $data = [])
    {
        $entity->update($data);

        return $entity;
    }

    /**
     * Update or create model.
     *
     * @param array $condition conditions for create or update
     * @param array $data      data for create or update
     *
     * @return Model
     */
    public function updateOrCreate($condition = [], $data = [])
    {
        return $this->model->updateOrCreate($condition, $data);
    }

    /**
     * Delete model.
     *
     * @param Model $entity model
     *
     * @return null|bool
     */
    public function delete(Model $entity)
    {
        return $entity->delete();
    }

    /**
     * Synchro model relation with data.
     *
     * @param Model  $entity   model
     * @param string $relation relationship
     * @param array  $data     data sync
     *
     * @return statement
     */
    public function sync(Model $entity, $relation, $data = [])
    {
        return $entity->{$relation}()->sync($data);
    }

    /**
     * Get model count.
     *
     * @return int
     */
    public function count()
    {
        return $this->model->count();
    }

    /**
     * Get model total.
     *
     * @param mixed $field
     *
     * @return int
     */
    public function total($field)
    {
        return $this->model->sum($field);
    }

    /**
     * Insert multiple values.
     *
     * @param array $data data insert
     *
     * @return int
     */
    public function insert($data)
    {
        $data = array_map(function ($item) {
            $item['created_at'] = Carbon::now()->format('Y-m-d H:i:s');
            $item['updated_at'] = Carbon::now()->format('Y-m-d H:i:s');

            return $item;
        }, $data);

        return $this->model->insert($data);
    }

    /**
     * Group model by column.
     *
     * @param string $field column name
     *
     * @return Collection
     */
    public function groupBy($field)
    {
        $raw = $field . ', count(' . $field . ') as ' . $field . '_count';

        return $this->model->select(DB::raw($raw))->groupBy($field)->get();
    }

    /**
     * Find model by id.
     *
     * @param mixed $id        id (string|int)
     * @param array $relations relationship tables
     *
     * @return Model
     */
    public function find($id, $relations = [])
    {
        $entity = $this->model->find($id);

        if (empty($entity)) {
            return $entity;
        }

        if (count($relations)) {
            return $entity->load($relations);
        }

        return $entity;
    }

    /**
     * Find model by id.
     *
     * @param mixed $id        id (string|int)
     * @param array $relations relationship
     *
     * @return Model
     */
    public function findOrFail($id, array $relations = [])
    {
        return $this->model->findOrFail($id, $relations);
    }

    /**
     * Get model's fillable attribute.
     *
     * @return array
     */
    public function getFillable()
    {
        return $this->model->getFillable();
    }

    /**
     * Batch update.
     *
     * @param array $condition condition
     * @param array $data      data
     *
     * @return mixed
     */
    public function batchUpdate(array $condition, array $data)
    {
        $model = $this->model;
        if (count($condition) && method_exists($this, 'search')) {
            foreach ($condition as $key => $value) {
                $model = $this->search($model, $key, $value);
            }
        }

        return $model->update($data);
    }

    /**
     * Delete mutiple items.
     *
     * @param array $ids list id to delete
     *
     * @return bool
     */
    public function deleteMulti(array $ids = [])
    {
        return $this->model->whereIn('id', $ids)->delete();
    }

    /**
     * Cache the query result.
     *
     * @param string $method
     * @param mixed  ...$params
     *
     * @return mixed cached query result
     */
    public function cache($method, ...$params)
    {
        if (!method_exists($this, $method)) {
            throw new DDException("Method doesn't exist");
        }
        $name = Str::singular($this->model->getTable()) . '_' . $method;
        $cacheByKey = config('constant.cache_expired.' . $name);
        $expired = $cacheByKey ? $cacheByKey : config('constant.cache_expired.default', 0);

        return cache()->remember($name, $expired, function () use ($method, $params) {
            return $this->{$method}(...$params);
        });
    }

    /**
     * Check role admin from current user.
     *
     * @return bool
     */
    public function isAdminRole()
    {
        $user = auth()->guard('api')->user();
        if (isset($user->role)) {
            $role = $user->role;
            if ($role == config('constant.role.admin')) {
                return true;
            }
        }

        return false;
    }
}
