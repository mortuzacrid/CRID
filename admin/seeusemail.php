<?php
  $PAGE = 'Emails';
  include 'inc/header.php';
  include 'inc/navbar.php';

  // for visitor counting
    $counter = 0;
    $handle = fopen("../counter.txt", "r");
    if(!$handle)
    {
        echo "could not open the file";
    }
    else 
    {
        $counter=(int )fread($handle,20);
        fclose($handle);
    }

?>




    <section id="main">
      <div class="container">
        <div class="row">
          <div class="col-md-3">

            <?php
                include 'inc/sidebar.php';
            ?>

          </div>
          <div class="col-md-9">


<?php
    // For Contact Us Last 5 unread email
    $sql = "SELECT * FROM contactus ORDER BY id DESC";
    $result = mysqli_query($con,$sql);
    $countemais = mysqli_num_rows($result);

?>


            <div class="panel panel-default">
                <div class="panel-heading main-color-bg">
                    <h3 class="panel-title">Emails</h3>
                </div>
                <div class="panel-body">

                    <?php

                        if ($countemais > 0) {
                            while ($row = mysqli_fetch_assoc($result)) {
                                $emails[] = $row;
                            }
                    ?>

                    <table class="table table-striped table-hover">
                        <tr>
                            <th>Subject</th>
                            <th>Email</th>
                            <th></th>
                        </tr>

                    <?php foreach ($emails as $email) { ?>
                        <tr>
                            <td><?php echo $email['subject']; ?></td>
                            <!-- glyphicon glyphicon-remove -->
                            <td><?php echo $email['email']; ?></td>
                            <td><a class="btn btn-default" href="viewemail.php?id=<?php echo $email['id'] ?>">View</a></td>
                        </tr>

                    <?php } ?>
                    
                    </table>

                    <?php } else { ?>
                        
                        No email send via contact form.
                    
                    <?php } ?>

                </div>
            </div>



          </div>
        </div>
      </div>
    </section>

<?php
    include 'inc/footer.php';
?>