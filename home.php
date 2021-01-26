<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php 
    include "./includes/styles.php"; 
    include './database.php'; 
    ?>
    <title>Bad-Event</title>
</head>
<body class="" >
    <main class="border d-flex flex-column justify-content-center  align-items-center">
        <img src="./images/logo.png" alt="" srcset="" class="img-fluid" style="width: 20rem;">
        <section class="shadow bg-white mt-3 p-4 container">
            <form action="" method="post" class="d-flex">
                <select name="pays" id="pays" class="form-select mx-3 border-top-0 border-end-0 border-start-0 border-3 rounded-0 " style="border-color: #ff5252 !important;">
                    <option value="">Choisissez un pays</option>
                    <?php
                        @$recuppays = $db->query("SELECT * FROM pays ORDER BY nom ASC")->fetchAll();
                        foreach($recuppays as $pays){
                            echo '<option value="'.$pays['id'] .'">'.$pays['nom'] .'</option>';
                        }      
                    ?>
                </select>
                <select name="ville" id="ville" class="form-select mx-auto  border-top-0 border-end-0 border-start-0 border-3 rounded-0 " style="border-color: #ff5252 !important;">
                    <option value="">Choisissez un pays</option>
                </select>
                <button type="submit" class="btn btn-danger mx-3"> Rechercher </button>
            </form>
        </section>
    </main>
    <?php include "./includes/script.php";?>
</body>
</html>