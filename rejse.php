<!DOCTYPE HTML>

<html>
	<head>
		<title>Bestilling</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/rejsecss.css">

	</head>

	<body>
        
 <?php include 'includes/header.php' ?>
        

 <div class="container">
     
        <div class="baggrund">
            <img src="images/baggrund.png" height="500px" width="900px;" />
        </div>
     
     
        <div class="popcorn">
			<figure>
                <a href="#" data-toggle="modal" data-target="#myModalpop"> <img src="images/popcorn.png" /> </a>
            </figure>
		</div>
    
		<div class="slush">
			<figure>
                <a href="#" data-toggle="modal" data-target="#myModalslush"> <img src="images/slushice.png" /> </a>
            </figure>
		</div>
     
		<div class="softice">
			<figure>
                <a href="#" data-toggle="modal" data-target="#myModalsoft"><img src="images/softice.png" /> </a>
            </figure>
		</div>
</div>
        
<div id="myModalpop" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal Indhold-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Popcornmaskine</h4>
      </div>
      <div class="modal-body">
          <p>Festen der aldrig stopper?</p>
          <p>Det er over midnat, og festen er stadig igang. </p>
              <p>Den perfekte aftensnack: Lækre, saltede, varme popcorn.</p>
          <p>Pris: xxx kr for en hel weekend plus forbrug</p>
      </div>
      <div class="modal-footer">
          
        <button type="button" class="btn btn-default" data-dismiss="modal">Luk</button>
      </div>
    </div>        
    </div>
        </div>
<div id="myModalslush" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal Indhold-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Softicemaskine</h4>
      </div>
      <div class="modal-body">
          <p>Sommeren er lige om hjørnet, og varmen trænger sig på.</p>
          <p>Gør din sommerfest lidt mere lækker, med en slushicemaskine.</p>
          <p>Pris: xxx kr for en hel weekend plus forbrug</p>
      </div>
      <div class="modal-footer">
          
        <button type="button" class="btn btn-default" data-dismiss="modal">Luk</button>
      </div>
    </div>

  </div>
</div>        
<div id="myModalsoft" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal Indhold-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Softicemaskine</h4>
      </div>
      <div class="modal-body">
          <p>Sommeren er lige om hjørnet, og varmen trænger sig på.</p>
          <p>Gør din sommerfest lidt mere lækker, med en softicemaskine.</p>
          <p>Pris: 800 kr for en hel weekend plus forbrug</p>
      </div>
      <div class="modal-footer">
          
        <button type="button" class="btn btn-default" data-dismiss="modal">Luk</button>
      </div>
    </div>

  </div>
</div>        
        
<div class="container2">
  <div class="balloon">
    <div>
        <span class="rabat">10%</span>
      </div>

  </div>
</div>


<?php include 'includes/footer.php' ?>
        
	</body>
</html>