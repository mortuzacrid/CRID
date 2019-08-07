<?php
    $handle = fopen($_SERVER["DOCUMENT_ROOT"]."/counter.txt", "r");
    if(!$handle)
    {
        echo "could not open the file";
    }
    else 
    {
        $counter=(int )fread($handle,20);fclose($handle);
        $counter++;
        $handle= fopen($_SERVER["DOCUMENT_ROOT"]."counter.txt", "w" );
        fwrite($handle,$counter);
        fclose ($handle);
    }

?>