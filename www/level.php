<?
$x=$_GET["x"];
$y=$_GET["y"];
$l=$_GET["l"];

$f=$x.$y.$l.".sh";
echo(file_get_contents($f));
?>
