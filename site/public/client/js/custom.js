
//header cart option 
axios.get('/cartInfo')
    .then(function (response) {

        if (response.status = 200) {
            // console.log(response.data);
            var dataJSON = response.data;
            var price = dataJSON.totalPrice;
            var quantity = dataJSON.totaltQuantity;
            var product = dataJSON.total_product;
            // console.log(price);
            if ((product == null) && (price == null)) {
                $('#total_product').html("");
                $('#total_price').html("Empty");
            } else {
                $('#total_product').html(product);
                $('#total_price').html("$" + price);
            }

        }
    }).catch(function (error) {


    });






    
$('#payment').click(function () {
    $('#payment-option').removeClass('d-none');
    $('#checkpayment').addClass('d-none');
})






