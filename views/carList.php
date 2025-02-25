<div class="row" id="cars-panel"></div>

<script>
    $(document).ready(function () {
        getAllCars();
    });

    function getAllCars() {
        $.get("/carListApi", function (response) {
            let jsonResponse = JSON.parse(response);

            if (jsonResponse.length > 1) {
                $.each(jsonResponse, function (i, item) {
                    $("#cars-panel").append(
                        '<div class="col-md-4">' +
                        '<div class="card">' +
                        '<img src="' + item.image_path + '" class="card-img-top" alt="...">' +
                        '<div class="card-body">' +
                        '<h5 class="card-title">' + item.brand + ' - ' + item.model + ' ( ' + item.price + ' €)' + '</h5>' +
                        '<p class="card-text"> ' + item.description + ' </p>' +
                        '<div class="d-flex justify-content-between">'+
                        '<button class="btn btn-danger add-car">+</button>'+
                        '<button class="btn btn-light quantity">0</button>'+
                        '<button class="btn btn-dark remove-car">-</button>'+
                        '</div>' +
                        '</div>' +
                        '</div>' +
                        '</div>'
                    );
                });
            }
        });
    }
</script>