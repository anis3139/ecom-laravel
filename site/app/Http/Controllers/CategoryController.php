<?php

namespace App\Http\Controllers;

use App\CategoryModel;
use Illuminate\Http\Request;

class CategoryController extends Controller {

    public function AddCategory(Request $req) {

        $data = json_decode($_POST['data']);
        $name = $data['0']->name;
        $description = $data['0']->description;
        $photoPath =  $req->file('photo')->store('public');
        $photoName = (explode('/', $photoPath))[1];
        $host = $_SERVER['HTTP_HOST'];
        $location = "http://" . $host . "/storage/" . $photoName;
        $result = CategoryModel::insert([
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
    public function catindex() {
        return view('admin.component.categoryList');
    }

    public function categoryList() {
        $result = json_encode(CategoryModel::orderBy('id', 'desc')->get());
        return $result;
    }

    function categoryDelete(Request $Req){
        $id=$Req->input('id');
        $result=CategoryModel::where('id', '=', $id)->delete();
        if($result==true){
            return 1;
        }else{
            return 0;
        }
        
    }







}
