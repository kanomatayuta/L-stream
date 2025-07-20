<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0.
 *
 * @category  PHP
 *
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 *
 * @version   GIT: <1.0.0>
 *
 * @see      https://digidinos.com
 * @see       https://digidinos.com
 */

namespace App\Services;

use App\Exceptions\DDException;
use App\Repositories\BaseRepository;
use Illuminate\Container\Container as App;

/**
 * BaseService class.
 *
 * @category Core
 *
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 *
 * @see     https://digidinos.com
 */
abstract class BaseService
{
    /**
     * Base Repository.
     *
     * @var Repository
     */
    protected $repository;

    /**
     * Contructor.
     */
    public function __construct()
    {
        $this->app = new App();
        $this->setRepositoryClass();
    }

    /**
     * Call magic method in BaseRepository.
     *
     * @param string $method     method name
     * @param mixed  $parameters list of parameters
     *
     * @return void
     */
    public function __call($method, $parameters)
    {
        return $this->repository->{$method}(...$parameters);
    }

    /**
     * Get repository.
     *
     * @return void
     */
    abstract public function getRepository();

    /**
     * Set repository.
     *
     * @return void
     */
    public function setRepositoryClass()
    {
        $repository = $this->app->make($this->getRepository());
        if (!$repository instanceof BaseRepository) {
            throw new DDException("Class {$this->getRepository()} must be an instance of App\\Repositories\\BaseRepository");
        }

        $this->repository = $repository;
    }
}
