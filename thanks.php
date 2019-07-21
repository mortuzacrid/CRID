<?php
    $PAGENAME = "Thanks";
    include 'inc/header.php';
    include 'inc/navbar.php';

    if (isset($_POST['submit'])) {
        echo "SUBMITED";
    } else {
        header("Location: index.php"); 
        exit();
    }

?>


    <section class="container text-center">
        <img src="images/thanks/1.gif" alt="Thanks Image">
        <h1>Thanks For your Email. <br> We will get back to you as soon as possible.</h1>
        <a href="/"><p class="btn btn-primary btn-lg">Home</p></a>
    </section>

<?php
    include 'inc/footer.php';
?>
