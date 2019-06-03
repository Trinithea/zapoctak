<html>
	<head>
		<title>Trinithea</title>
	</head>
	<body>
		<h1>LABYRINT UVODU DO UNIXU</h1>	
		<h2>Vysledkova listina</h2>
<?
echo "<table>\n";
$f = fopen("vysledky", "r");
while (($line = fgetcsv($f)) !== false) {
	echo "\t<tr>\n";
	foreach ($line as $cell) {
		echo "\t\t<td>" . htmlspecialchars($cell) . "</td>\n";
	}
	echo "\t</tr>\n";
}
fclose($f);
echo "</table>\n";
?>
	</body>
</html>
