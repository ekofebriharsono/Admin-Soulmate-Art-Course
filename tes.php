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

// echo formatText("is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.");

function formatText($text, $num_char = 30){
    return substr($text, 0, $num_char) . '...';
}
?>