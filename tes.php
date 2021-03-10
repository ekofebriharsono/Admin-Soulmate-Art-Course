<!-- <!DOCTYPE html>
<html>
<body>

<form action="upload.php" method="post" enctype="multipart/form-data">
Pilih image yang akan di-upload:
<input type="file" name="file" >
<input type="submit" value="Upload Image" name="submit">
</form>

</body>
</html> -->







<?php

function formatText($text, $num_char = 30){
    return substr($text, 0, $num_char) . '...';
}
?>