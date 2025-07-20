<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0
 *
 * @category  PHP
 * @package   Web_System
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 * @version   GIT: <1.0.0>
 * @link      https://digidinos.com
 */
namespace Modules\Role\Controllers;

use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Modules\Role\Models\Role;
use Modules\Role\Requests\RoleRequest;
use Modules\Role\Requests\SearchRequest;
use Modules\Role\Resources\PermissionResource;
use Modules\Role\Resources\RoleResource;
use Modules\Role\Services\RoleService;

/**
 * RoleController class
 *
 * @category Role
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 *
 *  @OA\Tag(
 *      name="Role",
 *      description="Role Resource",
 * )
 *
 *  @OA\Schema(
 *      schema="role",
 *      @OA\Property(
 *          property="name",
 *          type="number",
 *          example=1,
 *      ),
 *      @OA\Property(
 *          property="guard_name",
 *          type="number",
 *          example=1,
 *      ),
 *  )
 */
class RoleController extends Controller
{
    /**
     * Role service
     *
     * @var \Modules\Role\Services\RoleService $roleService RoleService.
     */
    protected $roleService;

    /**
     * RoleService construct.
     *
     * @param RoleService $roleService Role service.
     */
    public function __construct(RoleService $roleService)
    {
        $this->roleService = $roleService;
    }

    /**
     * Display a listing of the resource.
     *
     * @param \Modules\Role\Requests\SearchRequest $request Handle request info.
     *
     * @return \Illuminate\Http\Response
     *
     *  @OA\Get(
     *      path="/api/role",
     *      tags={"Role"},
     *      operationId="indexRole",
     *      summary="List Role",
     *      @OA\Parameter(ref="#/components/parameters/page"),
     *      @OA\Parameter(ref="#/components/parameters/limit"),
     *      @OA\Parameter(ref="#/components/parameters/order_by"),
     *      @OA\Parameter(ref="#/components/parameters/order_type"),
     *      @OA\Response(
     *          response=200,
     *          description="Listed",
     *          @OA\JsonContent(
     *              @OA\Property(
     *                  property="data",
     *                  type="array",
     *                  @OA\Items(ref="#/components/schemas/role")
     *              ),
     *          ),
     *      ),
     *  )
     */
    public function index(SearchRequest $request)
    {
        try {
            $data = $request->all();

            if ($request->has('not_admin')) {
                $data['not'] = Role::ADMIN;
            }
            $roles = $this->roleService->list($data);
            $result = RoleResource::collection($roles);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Modules\Role\Requests\RoleRequest $request Handle request info.
     *
     * @return \Illuminate\Http\Response
     *
     *  @OA\Post(
     *      path="/api/role",
     *      tags={"Role"},
     *      operationId="storeRole",
     *      summary="Create Role",
     *      @OA\RequestBody(
     *          required=true,
     *          @OA\JsonContent(ref="#/components/schemas/role"),
     *      ),
     *      @OA\Response(
     *          response=200,
     *          description="Created",
     *          @OA\JsonContent(
     *              @OA\Property(
     *                  property="data",
     *                  ref="#/components/schemas/role",
     *              ),
     *          ),
     *      ),
     *  )
     */
    public function store(RoleRequest $request)
    {
        try {
            $data = $request->only('name');
            $data['guard_name'] = 'web';
            $role = $this->roleService->create($data);
            if ($request->has('permissions')) {
                $role->syncPermissions($request->permissions);
            }
            $result = new RoleResource($role);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \Modules\Role\Models\Role $role Role model.
     *
     * @return \Illuminate\Http\Response
     *
     *  @OA\Get(
     *      path="/api/role/{id}",
     *      tags={"Role"},
     *      operationId="showRole",
     *      summary="Get Role",
     *      @OA\Parameter(
     *          name="id",
     *          in="path",
     *          required=true,
     *          @OA\Schema(
     *              type="integer",
     *              format="int64",
     *          ),
     *      ),
     *      @OA\Response(
     *          response=200,
     *          description="Getted",
     *          @OA\JsonContent(
     *              @OA\Property(
     *                  property="data",
     *                  ref="#/components/schemas/role",
     *              ),
     *          ),
     *      ),
     *  )
     */
    public function show(Role $role)
    {
        try {
            if ($role->name == Role::ADMIN) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $result = new RoleResource($role->load('permissions'));

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Modules\Role\Requests\RoleRequest $request Handle request.
     * @param \Modules\Role\Models\Role          $role    Role model.
     *
     * @return \Illuminate\Http\Response
     *
     *  @OA\Put(
     *      path="/api/role/{id}",
     *      tags={"Role"},
     *      operationId="updateRole",
     *      summary="Update Role",
     *      @OA\Parameter(
     *          name="id",
     *          in="path",
     *          required=true,
     *          @OA\Schema(
     *              type="integer",
     *              format="int64",
     *          ),
     *      ),
     *      @OA\RequestBody(
     *          required=true,
     *          @OA\JsonContent(ref="#/components/schemas/role"),
     *      ),
     *      @OA\Response(
     *          response=200,
     *          description="Updated",
     *          @OA\JsonContent(
     *              @OA\Property(
     *                  property="data",
     *                  ref="#/components/schemas/role",
     *              ),
     *          ),
     *      ),
     *  )
     */
    public function update(RoleRequest $request, Role $role)
    {
        try {
            if ($role->name == Role::ADMIN) {
                return response()->json(['message' => 'Access denied'], 403);
            }

            $data = $request->only('name');
            $data['guard_name'] = 'web';
            $role->update($data);

            if ($request->has('permissions')) {
                $role->syncPermissions($request->permissions);
            }
            $result = new RoleResource($role);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \Modules\Role\Models\Role $role Role model.
     *
     * @return \Illuminate\Http\Response
     *
     *  @OA\Delete(
     *      path="/api/role/{id}",
     *      tags={"Role"},
     *      operationId="deleteRole",
     *      summary="Delete Role",
     *      @OA\Parameter(
     *          name="id",
     *          in="path",
     *          required=true,
     *          @OA\Schema(
     *              type="integer",
     *              format="int64",
     *          ),
     *      ),
     *      @OA\Response(
     *          response=204,
     *          description="Deleted",
     *      ),
     *  )
     */
    public function destroy(Role $role)
    {
        try {
            if ($role->name == Role::ADMIN) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $this->roleService->clean($role);
            $role->delete();

            return response()->success($role);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Get permission list.
     *
     * @return Response
     *
     *  @OA\Get(
     *      path="/api/permissions",
     *      tags={"Role"},
     *      operationId="permission",
     *      summary="List Permission",
     *      @OA\Response(
     *          response=200,
     *          description="Listed",
     *      ),
     *  )
     */
    public function getPermissions()
    {
        try {
            $permissions = $this->roleService->getPermissions();
            $result = PermissionResource::collection($permissions);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }
}
