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
namespace Modules\Tag\Services;

use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use App\Services\BaseService;
use Modules\Tag\Repositories\KolTagRepository;
use Modules\Tag\Repositories\TagRepository;

/**
 * TagService class
 *
 * @category Tag
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class TagService extends BaseService
{
    /**
     * @var \Modules\Tag\Repositories\KolTagRepository kolTagRepository Kol Tag Repository.
     */
    public $kolTagRepository;

    /**
     * Construct
     *
     * @param Modules\Tag\Repositories\TagRepository    $repository       Tag repository.
     * @param Modules\Tag\Repositories\KolTagRepository $kolTagRepository KolTag Repository.
     *
     * @return void
     */
    public function __construct(
        TagRepository $repository,
        KolTagRepository $kolTagRepository
    )
    {
        parent::__construct();
        $this->repository = $repository;
        $this->kolTagRepository = $kolTagRepository;
    }

    /**
     * @return Tag
     */
    public function getRepository()
    {
        return TagRepository::class;
    }
    
    /**
     * Create Kol Tag.
     *
     * @param array $input Input.
     *
     * @return mixed
     */
    public function createKolTag(array $input)
    {
        try {
            $data['first'] = true;
            $data['id'] = $input['tag_id'];
            $tag = $this->repository->list($data);
            if ($input['status'] === true) {
                return $tag->kols()->attach($input['kol_id']);
            } else {
                return $tag->kols()->detach($input['kol_id']);
            }
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }
}
