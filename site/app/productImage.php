<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class productImage extends Model
{
    public $table = 'product_images';
    public $primaryKey = 'id';
    public $incrementing = true;
    public $keyType = 'int';
    public  $timestamps = true;
}
