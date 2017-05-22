<?php include 'includes/header.php' ?>
<!-- Billedekarrusel -->
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

    <!-- Wrapper til slides -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="images/slider/1.jpg" alt="...">
            <div class="carousel-caption">
                <a href="rejse.php"><h3>Klik Her for at begynde din bestillingsrejse!    <i class="fa fa-arrow-right" aria-hidden="true"></i>
</h3></a>
            </div>
        </div>
        <div class="item">
            <img src="images/slider/%C2%A82.jpg" alt="...">
            <div class="carousel-caption">
            </div>
        </div>
        <div class="item">
            <img src="images/slider/" alt="...">
            <div class="carousel-caption">
            </div>
        </div>
    </div>

    <!-- Kontrolpile til slider -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
</div>

<!-- Karrusel script. Ændr interval at øge eller mindske tiden mellem slide skift -->
<script>
    $('.carousel').carousel({
        interval: 323000
    })

</script>

<!-- Inkluder footer -->
<?php include 'includes/footer.php' ?>
