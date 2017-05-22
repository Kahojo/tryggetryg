<?php include 'includes/header.php' ?>
<section id="contact">
    <div class="container">
        <div class="row">
            <div class="about_our_company">
                <h1>Kontakt os!</h1>
                <br>
                <p>Har du spørgsmål eller brug for vejledning så skriv en besked, send os en e-mail eller ring til os!</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
                <form name="sentMessage" id="contactForm" novalidate="">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Dit Navn..  *" id="name" required="" data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" placeholder="Din Email *" id="email" required="" data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <input type="tel" class="form-control" placeholder="Dit Tlf. Nr. *" id="phone" required="" data-validation-required-message="Please enter your phone number.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <textarea class="form-control" placeholder="Din Besked *" id="message" required="" data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-lg-12 text-center">
                            <div id="success"></div>
                            <button type="submit" class="btn btn-xl get">Send Besked</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-4">
                <p>
                    <strong><i class="fa fa-map-marker"></i> Adresse:</strong><br> Klepgabsvej 14, borridsø 8881 Thorsø
                </p>
                <p><strong><i class="fa fa-phone"></i> Telefon Nummer:</strong><br>26 49 30 88
                </p>
                <p>
                    <strong><i class="fa fa-envelope"></i>  Email Adresse:</strong><br><a href="mailto:info@trygsen.dk"> info@trygsen.dk</a>
                </p>
                <p></p>
            </div>
        </div>
    </div>
</section>
<?php include 'includes/footer.php' ?>
