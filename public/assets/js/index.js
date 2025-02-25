
function renderCard(data){
    if (data.length > 0) {
        $.each(data, function (i, item) {
            $("#books-panel").append(
                '<div class="col-md-4">' +
                '<div class="card">' +
                '<img src="' + item.image + '" class="card-img-top" alt="...">' +
                '<div class="card-body">' +
                '<h5 class="card-title">' + item.title + ' - ' + item.author + ' ( ' + item.price + ' €)' + '</h5>' +
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
}


function getAllBooks() {
    $.get("/bookListApi", function (response) {
        let jsonResponse = JSON.parse(response);

        renderCard(jsonResponse);
    });
}