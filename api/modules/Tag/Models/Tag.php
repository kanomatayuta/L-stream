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
namespace Modules\Tag\Models;

use Illuminate\Database\Eloquent\Model;
use Modules\Kol\Models\Kol;

/**
 * Tag class
 *
 * @category Tag
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class Tag extends Model
{
    protected $fillable = [
        'user_id',
        'hash_tags',
    ];

    public $selectable = [
        '*',
    ];

    public $sortable = [];

    /**
     * Scope Can Process
     *
     * @return collection
     */
    public function scopeCanProcess()
    {
        return $this->where('user_id', auth()->user()->id);
    }

    /**
     * Tag Kol Relationship
     *
     * @return collection
     */
    public function kols()
    {
        return $this->belongsToMany(Kol::class, 'kol_tags', 'tag_id', 'kol_id')->withTimestamps();
    }
}
