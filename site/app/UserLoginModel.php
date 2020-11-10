<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserLoginModel extends Model
{
    public $table='user_login';
    public $primaryKey='id';
    public $incrementing=true;
    public $keyType='int';
    public  $timestamps=false;
}
