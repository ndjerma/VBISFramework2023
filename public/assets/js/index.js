
function addToCart(id, title, author, price, image, description){

    let data = {
        id: id,
        title: title,
        author: author,
        price: price,
        image: image,
        description: description,
        quantity: 1
    };

    let currentState = JSON.parse(localStorage.getItem(localStorageConstants.cart));

    if(currentState){
        currentState = changeState(currentState, data);
        localStorage.setItem(localStorageConstants.cart, JSON.stringify(currentState));
    } else {
        let cartData = {
            items: [data]
        }

        localStorage.setItem(localStorageConstants.cart, JSON.stringify(cartData));
    }

    showCartNotification();
    totalPrice();

    toastr.remove();
    toastr.success("Cart is updated!");
}

function removeFromCart(id){

    let currentState = JSON.parse(localStorage.getItem(localStorageConstants.cart));

    if(currentState){
        for (let i = 0; i < currentState.items.length; i++){
            if(currentState.items[i].id === id){
                let currentQuantity = currentState.items[i].quantity;

                if(currentQuantity <= 1){
                    currentState.items.splice(i,1);
                } else {
                    currentState.items[i].quantity = currentQuantity - 1;
                }
            }
        }
    }

    localStorage.setItem(localStorageConstants.cart, JSON.stringify(currentState));

    showCartNotification();
    totalPrice();

    toastr.remove();
    toastr.success("Cart is updated!");
}

function renderCard(data){
    if (data.length > 0) {
        $.each(data, function (i, item) {
            $("#panel").append(
                '<div class="col-md-4">' +
                '<div class="card">' +
                '<img src="' + item.image + '" class="card-img-top" alt="...">' +
                '<div class="card-body">' +
                '<h5 class="card-title">' + item.title + ' - ' + item.author + ' ( ' + item.price + ' €)' + '</h5>' +
                '<p class="card-text"> ' + item.description + ' </p>' +
                '<div class="d-flex justify-content-between">'+
                '<button class="btn btn-danger add-car" data-id="' + item.id + '" data-title="' + item.title + '" data-author="' + item.author + '" data-price="' + item.price + '" data-image="' + item.image + '" data-description="' + item.description + '">+</button>'+
                '<button class="btn btn-light quantity" id="quantity-button-' + item.id + '">' + checkQuantity(item.id) + '</button>'+
                '<button class="btn btn-dark remove-car" data-id="' + item.id + '">-</button>'+
                '</div>' +
                '</div>' +
                '</div>' +
                '</div>'
            );
        });
    }

    totalPrice();
}

function totalPrice(){
    let currentState = JSON.parse(localStorage.getItem(localStorageConstants.cart));
    let totalPrice = 0;

    if(currentState && currentState.items && currentState.items.length > 0){
        for (let i = 0; i < currentState.items.length; i++){
            totalPrice = totalPrice + (currentState.items[i].quantity * currentState.items[i].price);
        }
    }

    $("#checkout-button").empty();
    $("#checkout-button").html("Checkout - " + totalPrice + " €");
}

function getAllBooks() {
    $.get("/bookListApi", function (response) {
        let jsonResponse = JSON.parse(response);

        renderCard(jsonResponse);
    });
}

function getCart() {
    let currentState = JSON.parse(localStorage.getItem(localStorageConstants.cart));

    if(currentState && currentState.items && currentState.items.length > 0){
        renderCard(currentState.items);
    } else {
        window.location.href = "/noItemsInCart";
    }
}

function changeState(currentState, data){
    let addNewItem = true;

    for (let i = 0; i < currentState.items.length; i++){
        if(currentState.items[i].id === data.id){
            let currentQuantity = currentState.items[i].quantity;

            currentState.items[i] = data;

            currentState.items[i].quantity = currentQuantity + 1;

            addNewItem = false;
        }
    }

    if(addNewItem){
        currentState.items.push(data);
    }

    return currentState;
}

function checkQuantity(id){
    let currentState = JSON.parse(localStorage.getItem(localStorageConstants.cart));
    let quantity = 0;

    if(currentState){
        for (let i = 0; i < currentState.items.length; i++){
            if(currentState.items[i].id == id){
                quantity = currentState.items[i].quantity;
            }
        }
    }

    return quantity;
}

function showCartNotification(){

    let currentState = JSON.parse(localStorage.getItem(localStorageConstants.cart));

    if(currentState && currentState.items && currentState.items.length > 0){
        $("#shopping-cart").addClass("notification bg-primary rounded-circle");
    } else {
        $("#shopping-cart").removeClass("notification bg-primary rounded-circle");
    }

}
