<!DOCTYPE html>
<html lang="da">

<head>

    <title>Trygsen Serice og Udlejning</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="css/stylesheet.sass" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
  

    
    
<!-- Indkøbskurvs Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal Indhold-->
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Din Indkøbskurv</h4>
        </div>
                <div class="modal-body">
                     <div class="table-responsive">
                      <table class="table">
                        <thead>
                          <tr>
                            <th>Vare nr.</th>
                            <th>Varens Navn</th>
                            <th>Antal</th>
                            <th>Pris</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>id:5879</td>
                            <td>Flagstang</td>
                            <td>3</td>
                            <td>35 DKK</td>
                          </tr>
                        </tbody>
                      </table>
                      </div>
                </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Luk</button>
      </div>
    </div>

  </div>
</div>

    
    

    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <nav class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
                <a class="navbar-brand" href="index.php"><img class="logo" src="images/logohvid.png"></a>
            </nav>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-shopping-cart" data-toggle="modal" data-target="#myModal"></span></a></li>

                    <li><a href="produkter.php">PRODUKTER</a></li>
                    <li><a href="galleri.php">GALLERI</a></li>
                    <li><a href="about.php">OM OS</a></li>
                    <li><a href="handelsbetingelser.php">GENERELLE VILKÅR</a></li>
                    <li><a href="kontakt.php">KONTAKT</a></li>
                    <li><input type="text" class="soegefelt" placeholder="       Søg"></li>
                    <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
                </ul>
            </div>
        </div>
    </nav>
