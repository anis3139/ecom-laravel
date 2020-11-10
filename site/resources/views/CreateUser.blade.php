@extends('Layout.app')
@section('title','Admin Login')
@section('content')

<div class="container ">
<div class="row justify-content-center d-flex mt-5 mb-5">

<div class="col-md-10 card">
  <div class="row">
    <div style="" class="col-md-10 offset-md-1 p-3">
        <h2 class="text-center">Create User Account</h2>
        <hr>
      <form  action=" "  class="m-5 loginForm">
        <div class="form-group">
            <label for="exampleInputEmail1">Name</label>
            <input required="" name="name" value="" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Name">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1"> Phone No.</label>
            <input required="" name="phone" value="" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter User Phone No">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1"> Email</label>
            <input required="" name="email" value="" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter User Email">
        </div>
        <div class="form-group d-flex">
            <div class="mr-2 mt-2">
                <h5>Gender: </h5>
            </div>
            <select name="gender" id=""  required="" value="">
                <option value="0">Male</option>
                <option value="1">Female</option>
            </select>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1"> Address</label>
            <textarea required="" name="address" value="" id="exampleInputEmail1" class="form-control" cols="30" rows="10" placeholder="Enter Your Address"></textarea>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1"> Shipping Address</label>
            <textarea required="" name="shippingAddress" value="" id="exampleInputEmail1" class="form-control" cols="30" rows="10" placeholder="Enter Your Shipping Address"></textarea>
        </div>
        <div class="form-group">
             <label for="exampleInputEmail1">District</label>
             <input required="" name="district" value="" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your District">
        </div>
        <div class="form-group">
             <label for="exampleInputEmail1">City  (Optional)</label>
             <input  name="city" value="" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your City">
        </div>
        <div class="form-group">
             <label for="exampleInputEmail1">Country</label>
             <input required="" name="country" value="" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Country">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1"> Massage</label>
            <textarea  name="massage" value="" id="exampleInputEmail1" class="form-control" cols="30" rows="10" placeholder="Write Your Massage"></textarea>
        </div>
        <div class="form-group">
             <label for="exampleInputEmail1">User Name</label>
             <input  name="userName" value="" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter User name">
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Password</label>
          <input  required="" name="userPassword"  value="" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
        </div>
        <div class="form-group">
          <button name="submit" type="submit" class="btn btn-block btn-danger">Create User</button>
        </div>
    </form>
</div>
</div>
</div>
</div>
</div>


@endsection




@section('script')
<script type="text/javascript">


    $('.loginForm').on('submit',function (event) {
        event.preventDefault();
        let formData=$(this).serializeArray();
        let userName=formData[0]['value'];
        let password=formData[1]['value'];
        let name=formData[2]['value'];
        let phone=formData[3]['value'];
        let email=formData[4]['value'];
        let address=formData[5]['value'];
        let shippingAddress=formData[6]['value'];
        let district=formData[7]['value'];
        let city=formData[8]['value'];
        let country=formData[9]['value'];
        let massage=formData[10]['value'];
        let gender=formData[11]['value'];
        let url="/onCreateUser";
        axios.post(url,{
            user:userName,
            pass:password,
            name:name,
            phone:phone,
            email:email,
            address:address,
            shippingAddress:shippingAddress,
            district:district,
            city:city,
            country:country,
            massage:massage,
            gender:gender,
        }).then(function (response) {
           if(response.status==200 && response.data==1){
            toastr.succsess('Account Created Successfully');
               window.location.href="/";
           }
           else{
               toastr.error('Login Fail ! Try Again');
           }

        }).catch(function (error) {
            toastr.error('Login Fail ! Try Again');
        })


    })

</script>
@endsection
