<!DOCTYPE html>
<html>
<head>
	<title>Tomas Domingo Bicicletas</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/pure-min.css">
	<link rel="stylesheet" type="text/css" href="../css/style-php.css">
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet">
</head>
<body>
	<div class="pagina">
		<div class="menu-negro">CESTA VACÍA</div><br/>
			<div class="logo"><a href="http://www.tomasdomingo.com/"><img src="../img/logo-domingo.png"></a></div>
			<div class="menu-pequeno">
			<a href="http://www.tomasdomingo.com/es/estaticas/faqs/">FAQS</a> &nbsp; <a href="http://www.tomasdomingo.com/es/estaticas/trabaja-con-nosotros/">TRABAJA CON NOSOTROS</a> &nbsp; <a href="http://www.tomasdomingo.com/es/estaticas/tiendascontacto/">TIENDAS/CONTACTO</a> &nbsp;&nbsp;&nbsp; <a href="https://www.facebook.com/pages/Tomas-Domingo-The-Bike-House/270923404115"><img src="../img/facebook-icono-domingo.jpg" /></a></div>

		<br/>
		<br/>
		<br/>
		<br/>
			<menu><a class="menu" href="http://www.tomasdomingo.com/es/catalogo/bicis/0/0/desc/">BICIS</a>&nbsp;&nbsp; &nbsp;<a class="menu" href="http://www.tomasdomingo.com/es/catalogo/complementos/0/0/desc/">COMPLEMENTOS</a> &nbsp;&nbsp;<a class="menu" href="http://www.tomasdomingo.com/es/catalogo/partes/0/0/desc/">PARTES</a>&nbsp;&nbsp; <a class="menu" href="http://www.tomasdomingo.com/es/catalogo/ropa/0/0/desc/">ROPA</a> &nbsp;&nbsp;<a class="menu" href="http://www.tomasdomingo.com/es/catalogo/segunda-mano/0/0/desc/">2ª MANO</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a class="menu" href="http://www.tomasdomingo.com/es/corporativas/empresa/">EMPRESA</a> </menu>
			&nbsp;&nbsp;&nbsp;&nbsp;<img class="ofertas" src="../img/outlet.png" />
		<br/>
		<br/>
		<br/>
			<div class="main">
				<div class="main-left"><h1 class="form">RESULTADOS:</h1>
				<?php
					
					$conexion = mysqli_connect('localhost', 'root', '', 'bd_proyecto1');
					$acentos = mysqli_query($conexion, "SET NAMES 'utf8'");

						if (!$conexion) {
		   					echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
		    				echo "error de depuración: " . mysqli_connect_errno() . PHP_EOL;
		    				echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
		    			exit;
						}

						$numserie=$_REQUEST["numserie"];
						$marca=$_REQUEST["marca"];
						$ubicacion=$_REQUEST["ubicacion"];
						$modelo=$_REQUEST["modelo"];
						$color=$_REQUEST["color"];


						$sql = "SELECT * FROM anunci ";

						$sql.=" WHERE anu_marca LIKE '%$marca%'";
						
						
						
						if (!empty($numserie)) {
							$sql.=" AND '$numserie' LIKE anu_numero_serie";

						}
						if (!empty($modelo)) {
							$sql.=" AND anu_model LIKE '%$modelo%'";
						} 

						if (!empty($color)) {
							$sql.=" AND anu_color LIKE '%$color%'";
						} 

						if ($ubicacion!=1) {
							$sql.=" AND '$ubicacion' LIKE anu_ubicacio_robatori";
						}
							
					
							
							$anuncis = mysqli_query($conexion, $sql);
							if(mysqli_num_rows($anuncis)>0){
								echo "Número de anuncios: " . mysqli_num_rows($anuncis) . "<br/><br/>";
								while($anunci = mysqli_fetch_array($anuncis)){
									echo "<h2>" . $anunci['anu_titol'] . "</h2>";
									echo "<b>" . $anunci['anu_data_anunci'] . "</b> &nbsp;/&nbsp; ";
									echo "<b>" . $anunci['anu_ubicacio_robatori'] . "</b><br/><br/>";
									echo "Descripción robo: " . $anunci['anu_descripcio_robatori'] . "<br/>";
									echo "Marca: " . $anunci['anu_marca'] . "<br/>";
									echo "Modelo: " . $anunci['anu_model'] . "<br/>";
									echo "Color: " . $anunci['anu_color'] . "<br/>";
									echo "Antigüedad: " . $anunci['anu_antiguitat'] . "<br/>";
									echo "Descripción: " . $anunci['anu_descripcio'] . "<br/>";
									echo "Número serie: " . $anunci['anu_numero_serie'] . "<br/>";
									echo "Compensación: " . $anunci['anu_compensacio'] . "<br/><br/><br/>";
									$foto='../img/'.$anunci['anu_foto'];

									if (file_exists ($foto)){
										echo "<img src='../img/" . $foto . "' width='300'/><br/><br/><br/><br/>";
									} else {
										echo "<img src='../img/0.jpg' width='300'/><br/><br/><br/><br/>";
									}
									echo "<hr/>";
								}
							} else {
								echo "No hay ninguna bicicleta relacionada con tu búsqueda!";
							}


		
		
	


		mysqli_close($conexion);
?>


				</div>
				<p><a href="index.html">Volver al formulario</a></p>
			</div>
	</div>
</body>
</html>