<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name_user', 'email', 'password', 'username', 'address', 'phone', 'gender', 'birthday', 'role', 'status', 'remember_token', 'photo'
    ];
    // protected $guard = [''];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    function product()
    {
        return $this->hasMany('App\Product');
    }
}
