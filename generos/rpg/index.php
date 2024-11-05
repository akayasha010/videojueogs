<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lista de Videojuegos</title>
    <link rel="stylesheet" href="catalogo-rpg.css">
</head>
<body>
<div class="navbar">
        <a href="../../index.html"><img src="../../imagenes/barra-de-navegacion/regresar-carrera.png" alt="Logo" class="navbar-logo-img">
        <a href="../../index.html"><img src="../../imagenes/imagenes-menu/akagames-logos.png" alt="Logo" class="navbar-logo-img">
		<a href="../../index.html"><div class="navbar-logo"><span>AKAgames</span></div></a>
		
		<div class="dropdown">
			<a href="#">Juegos</a>
			<div class="dropdown-content">
				<a href="../../generos/carreras/index.php">carreras</a>
				<a href="../../generos/peleas/index.php">peleas</a>
				<a href="../../generos/rpg/index.php">RPG</a>
				<a href="../../generos/shooters/index.php">shooters</a>
			
			</div>
		</div>
	</div>
	    <div class="imagen"> <!-- seccion del encabezado de pagina --></div>
</div>
    <div class="container">
        <h2>Lista de Videojuegos</h2>
        <div class="grid">
            <?php
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "videojuegos";

            $conn = new mysqli($servername, $username, $password, $dbname);

            if ($conn->connect_error) {
                die("Conexión fallida: " . $conn->connect_error);
            }

            // Obtener los primeros 15 juegos
            $sql = "SELECT * FROM rpg LIMIT 15";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<div class='card'>
                            <a href='juego.php?id=" . $row["id"] . "'>
                                <div class='image-container'>";
                    if (file_exists($row["imagen"])) {
                        echo "<img src='" . htmlspecialchars($row["imagen"]) . "' alt='" . htmlspecialchars($row["titulo"]) . "'>";
                    } else {
                        echo "<img src='placeholder.jpg' alt='Imagen no disponible'>";
                    }
                    echo "      </div>
                                <div class='card-content'>
                                    <h3>" . htmlspecialchars($row["titulo"]) . "</h3>
                                    <p>Desde $" . htmlspecialchars($row["precio"]) . " €</p>
                                </div>
                            </a>
                          </div>";
                }
            } else {
                echo "<p>No hay videojuegos disponibles</p>";
            }

            $conn->close();
            ?>
        </div>
    </div>
</body>
</html>