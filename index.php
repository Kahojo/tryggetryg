<?php include 'includes/header.php' ?>
<!-- Billedekarrusel -->
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

    <!-- Wrapper til slides -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="images/slider/1.jpg" alt="...">
            <div class="carousel-caption">
            </div>
        </div>
        <div class="item">
            <img src="images/slider/%C2%A82.jpg" alt="...">
            <div class="carousel-caption">
            </div>
        </div>
        <div class="item">
            <img src="images/slider/3.jpg" alt="...">
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
        interval: 3000
    })

</script>

<!-- Inkluder footer -->
<?php include 'includes/footer.php' ?>
