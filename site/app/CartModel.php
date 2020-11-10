<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CartModel extends Model
{
    public $table = 'cart';
    public $primaryKey = 'id';
    public $incrementing = true;
    public $keyType = 'int';
    public  $timestamps = true;
}
