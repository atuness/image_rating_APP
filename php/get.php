<?php
    $pdo = new PDO('mysql:host=localhost;dbname=capt!','root','root');

    $value = $_GET['value'];
    $action = $_GET['action'];
    $imgID = $_GET['imgID'];
    $rating = $_GET['rating'];
    $cID = $_GET['cID'];

    switch ($action) {
        case 'newCaption':
            $query = "INSERT INTO Caption (text, imgID)
            VALUES (?, ?)";
            $sql = $pdo->prepare($query);
            $sql->bindParam(1, $value, PDO::PARAM_STR, 255);
            $sql->bindParam(2, $imgID);
            break;
        case 'randCaption':
            $query = 'SELECT Text, cID FROM Caption 
                        WHERE ImgID = ?
                        ORDER BY RAND() LIMIT 1';
            $sql = $pdo->prepare($query);
            $sql->bindParam(1, $imgID);
            break;
        case 'randImg':
            $query = "SELECT URI, ImgID FROM Image ORDER BY RAND() LIMIT 1";
            $sql = $pdo->prepare($query);
            break;
        case 'newRating':
            $query = 'INSERT INTO Votes (Rating, cID)
            VALUES (?, ?)';
            $sql = $pdo->prepare($query);
            $sql->bindParam(1, $rating);
            $sql->bindParam(2, $cID);
            break;
        case 'avgRating':
            $query = 'SELECT AVG(Rating) AS Average FROM Votes
            WHERE cID = ?';
            $sql = $pdo->prepare($query);
            $sql->bindParam(1, $cID);
    }
    

    // EXECUTE SQL-QUERY
    $sql->execute();
    
    // TURN RESPONSE INTO ARRAY
    $answer = $sql->fetchAll(\PDO::FETCH_ASSOC);
    
    // ENCODE AS JSON
    $answer = json_encode($answer);
    
    // SEND TO BROWSER (CLIENT)
    echo $answer;

?>