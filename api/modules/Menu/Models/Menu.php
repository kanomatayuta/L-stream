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
namespace Modules\Menu\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\Permission\Traits\HasRoles;

/**
 * Menu class
 *
 * @category Menu
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class Menu extends Model
{
    use HasRoles;

    protected $guard_name = 'web';

    protected $fillable = [
        'title',
        'link',
        'icon',
        'parent_id',
        'position',
    ];

    /**
     * Get menu of current user.
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function menus()
    {
        return $this->hasMany(self::class, 'parent_id')->with('menus')->orderBy('position', 'asc');
    }

    /**
     * Sync roles deep
     *
     * @param array $menus List of menu.
     * @param array $roles List of role.
     *
     * @return void
     */
    public function syncRolesDeep(array $menus, array $roles)
    {
        foreach ($menus as $menu) {
            $menu->syncRoles($roles);
            $this->syncRolesDeep($menu->menus, $roles);
        }
    }

    /**
     * Get increment position.
     *
     * @return integer
     */
    public function getIncrementPosition()
    {
        $lastPosition = $this->max('position') ?? 0;

        return $lastPosition + 1;
    }
}
