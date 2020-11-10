<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\BrandModel;

class BrandController extends Controller
{
    public function brandIndex()
    {
        return view('admin.component.addBrand');
    }

    public function AddBrand(Request $req)
    {
        $data = json_decode($_POST['data']);
        $name = $data['0']->name;
        $description = $data['0']->description;
        $photoPath =  $req->file('photo')->store('public');
        $photoName = (explode('/', $photoPath))[1];
        $host = $_SERVER['HTTP_HOST'];
        $location = "http://" . $host . "/storage/" . $photoName;
        $result = BrandModel::insert([
            'name' => $name,
            'image' => $location,
            'description' => $description,
        ]);
        if ($result == true) {
            return 1;
        } else {
            return 0;
        }
    }




    public function brandShow()
    {
        return view('admin.component.brandList');
    }

    public function getBrandList()
    {
        $result = json_encode(BrandModel::orderBy('id', 'desc')->get());
        return $result;
    }
}
