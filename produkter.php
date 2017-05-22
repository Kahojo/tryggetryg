<!-- Inkludering af header -->
<?php include 'includes/header.php' ?>

<!-- Etablering af forbindelse til database -->
<?php
$servername = "localhost";
$username = "root";
$password = "";
 

try {
    $conn = new PDO("mysql:host=$servername;dbname=trygprodukt", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    //echo "Connected successfully";
    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }
 
$stmt = $conn->prepare("SELECT * FROM categories");
$stmt->execute();
//var_dump($stmt);
$results = $stmt->fetchAll(PDO::FETCH_ASSOC);
//var_dump($results);
?>

<!-- Kategorier -->
<div class="container" id="produkter">
<?php
    foreach ($results as $result) { ?>
    <div id="categories-list" >

        
            <div class="item  col-xs-8 col-lg-4">
                <div class="thumbnail">
                    <img class="group list-group-image" src="images/kategorier/<?php echo $result["img"]; ?>">
                    <div class="caption">
                        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"><?php echo $result["name"]; ?></button>
                            
                        
                    </div>
                </div>
            </div>    
       

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal Indhold-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"><?php echo $result["name"]; ?></h4>
      </div>
      <div class="modal-body">
        <p>ord ord ord ord ord</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Luk</button>
      </div>
    </div>

  </div>
</div>
</div>

  <?php
} ?>


<?php include 'includes/footer.php' ?>
