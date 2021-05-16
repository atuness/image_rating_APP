<?php

$pdo = new PDO('mysql:host=localhost;dbname=Capt!', 'root','root');

$filename = $_FILES['fileToUpload']['name'];
$filetmpname = $_FILES['fileToUpload']['tmp_name'];
//folder where images will be uploaded
$folder = '../images/';
//function for saving the uploaded images in a specific folder
// DET HÄR SPARA PÅ BEFINTLIG PLATS
move_uploaded_file($filetmpname, $folder.$filename);
echo $filetmpname;

//inserting image details (ie image name) in the database
$query = "INSERT INTO Image (URI)  VALUES (?)";
$sql = $pdo->prepare($query);
$sql->bindParam(1, $filename);	
$sql->execute();
echo $filename;

?>
