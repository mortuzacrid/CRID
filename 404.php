<?php
    $PAGENAME = "404 Page";
    include $_SERVER["DOCUMENT_ROOT"].'/inc/header.php';
    include $_SERVER["DOCUMENT_ROOT"].'/inc/navbar.php';
?>

    <section class="container text-center">
        <img src="http://<?php echo $_SERVER['SERVER_NAME']; ?>/images/404.gif" alt="404 Error">
        <h1>We are sorry and don't understand what you are looking for.</h1>
        <p>Please find something else or <a href="http://<?php echo $_SERVER['SERVER_NAME']; ?>/">Go home</a>.</p>
        <a href="http://<?php echo $_SERVER['SERVER_NAME']; ?>/"><p class="btn btn-primary btn-lg">Home</p></a>
    </section>

<?php
    include $_SERVER["DOCUMENT_ROOT"].'/inc/footer.php';
?>
