<?php 
require_once 'actions/db_connect.php';
$sql = "SELECT * FROM mount_everest";
$result = mysqli_query($connect ,$sql);
$tbody=''; //this variable will hold the body for the table
if(mysqli_num_rows($result)  > 0) {     
    while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){         
        $tbody .=   ' 
        <div class="col">
            <div class="card-group h-100  ">
                <img src="'.$row['image'].'" class="card-img-top" alt="'.$row['name'].'">
            <div class="card-body bg-transparent text-dark">
                <h5 class="card-title">'.$row['name'].'</h5>
                <p class="card-text">'.$row['description'].'</p>
                <a href="update.php?id=' .$row['id'].'"><button class="btn btn-primary btn-primary" type="button" title="Edit"><i class="fa fa-edit"></i></button></a>
                <a href="delete.php?id=' .$row['id'].'"><button class="btn btn-danger btn-primary" type="button" title="Delete"><i class="fas fa-trash-alt"></i></button></a>
                <a href="details.php?id=' .$row['id'].'"><button class="btn btn-info btn-primary" type="button" title="Show more"><i class="fas fa-info-circle"></i></button></a>
            </div>
            </div>
      </div>
            ';
    };
} else {
    $tbody =  "<tr><td colspan='5'><center>No Locations Available </center></td></tr>";
}

mysqli_close($connect);
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Mount Everest Travel Agency Vienna</title>
        <link rel="stylesheet" href="css/index.css">
        <?php require_once 'components/boot.php'?>
    </head>
    <body>
    <header>
        <?php include_once 'components/navigation.php';?>
        <?php include_once 'components/hero.php';?>
    </header>
       <main class="container container w-75 mt-3 mb-3" id="offer">
           <div class="text-center m-5">
           <h2> <b>Our Offers for YOU</b> </h2>
           <hr>
           </div>
            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-3 my-3">
            <tbody>
                    <?= $tbody;?>
                </tbody>
                </div>
                </div>
                <hr>
        </main>      
        <footer>
            <?php require_once 'components/footer.php' ?>
        </footer>
    </body>
</html>