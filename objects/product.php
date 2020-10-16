<?php
class Product
{
    // database connectie en tabel-naam
    private $conn;
    private $table_name = "product";
    // object properties
    public $id;
    // constructor with $db as database connection
    public function __construct($db)
    {
        $this->conn = $db;
    }
    // read products
    function read($id)
    {
        if ($id == null) {
            $where = '';
        }
        else {
            $where = ' WHERE id ='.$id;
        }
        // select all query
        $query = "SELECT * FROM " . $this->table_name . $where; 
        $result = $this->conn->query($query);
        return $result;
    }

    function create($naam, $beschrijving, $prijs, $categorie_id) {
        $query = "INSERT INTO ".$this->table_name." (naam, beschrijving, prijs, categorie_id)
        VALUES ('$naam', '$beschrijving', '$prijs', '$categorie_id')";
        if ($this->conn->query($query) === TRUE) {
            echo "New record created successfully";
            return true;
        } else {
            echo "Error: " . $query . "<br>" . $this->conn->error;
            return false;
        }
    }

    function update($id, $naam, $beschrijving, $prijs, $categorie_id){
        $query = "UPDATE ".$this->table_name." SET naam = '$naam', beschrijving = '$beschrijving', prijs = '$prijs', categorie_id = '$categorie_id' where id = $id";
        echo $query;
        if ($this->conn->query($query) === TRUE) {
            echo "Record updated successfully";
        } else {
            echo "Error updating did not work: " . $this->conn->error;
        }
    }

        function delete($id){
        $query = "DELETE FROM ".$this->table_name." WHERE id= $id";
        if ($this->conn->query($query) === TRUE) {
            echo "Record deleted successfully";
        } else {
            echo "Error deleting record: " . $this->conn->error;
        }
    }
}