// Maak in read_all.php de volgende code:
<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
// database connection will be here
// include database and object files
include_once '../config/database.php';
include_once '../objects/product.php';
// instantiate database and product object
$id = null;
if(isset($_GET["id"])){
    $id = $_GET["id"];
}
$naam = null;
if(isset($_GET["naam"])){
    $naam = $_GET["naam"];
}
$beschrijving = null;
if(isset($_GET["beschrijving"])){
    $beschrijving = $_GET["beschrijving"];
}
$prijs = null;
if(isset($_GET["prijs"])){
    $prijs = $_GET["prijs"];
}
$catogorie_id = null;
if(isset($_GET["catogorie_id"])){
    $catogorie_id = $_GET["catogorie_id"];
}
$database = new Database();
$db = $database->getConnection();
// initialize object
$product = new Product($db);
// read products will be here
// query products
if($product->update($id, $naam, $beschrijving, $prijs, $catogorie_id)){
    http_response_code(200);
}
else {
    http_response_code(404);
}
