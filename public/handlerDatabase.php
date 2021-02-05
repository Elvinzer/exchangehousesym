<?php  
    header("Access-Control-Allow-Headers: *");
    // header('Access-Control-Allow-Origin');
    header("Access-Control-Allow-Origin: *"); // Changer avec l'adresse du serv où se trouve la partie JS
    header("Vary: Origin");

    date_default_timezone_set('Europe/Paris');

    $connection = new mysqli("localhost", "exchangehouse", "okgoogle2020&", "exchangehouse");

   // Module Gestion de connexion login
    $_POST = json_decode(array_keys($_POST)[0], true);
    if ( $_POST['action'] == 'login') {
        if ( $_POST['identifiant'] === 'c' && $_POST['password'] === 'c')
            echo 'login success';
            // On gere la connexion à la base
        else
            echo 'login failed';
    }
    
    // Module récupération des maisons
    if ( $_POST['action'] == 'getAllHouses') {
        $query = "SELECT * FROM catalog limit 21;";
        $result = mysqli_query($connection, $query);

        $data = array();
        while ($row = mysqli_fetch_assoc($result)) {
            $data[] = $row;
        }
        echo json_encode($data);
    }

    if ( $_POST['action'] == 'searchTypeahead') {
        echo "typeahead ok !";
    }


    // $data = json_decode(file_get_contents("php://input"), TRUE);
    // var_dump($data);
    //echo $data['encodedString'];
    //$username = $data['username'];
    
    // $creationRequest = $connection->prepare("INSERT INTO USERS (uuid, firstname, lastname, email, password, phone, secretquestion, secretanswer, isOwner, isKeykeeper, date_creation) 
    // VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    // $creationRequest->bind_param('sssssssssss', $uniqueId, $firstNameKeeper, $lastNameKeeper, $emailKeeper, $passwordKeeper, $phoneKeeper, 
    // $secretQuestionKeeper, $secretAnswerKeeper, $isOwner, $isKeykeeper, $today);
    // $creationRequest->execute();

    mysqli_close($connection);