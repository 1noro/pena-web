<!DOCTYPE html>
<html lang="gl">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Pena</title>
    </head>
    <body style="width: 800px;">
        <header>
            <h1>Pena</h1>
            <hr>
        </header>
        <main>
            <h2>Semanas xogadas</h2>
            <?php
                setlocale(LC_ALL,"es_ES");

                $servername = "mysql";
                $username = "readonly";
                $password = "12345678";
                $dbname = "penadb";

                // Create connection
                $conn = new mysqli($servername, $username, $password, $dbname);

                // Check connection
                if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
                }

                $sql = "SELECT id, numero, fecha_lunes FROM semana";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    // output data of each row
                    echo "<ul>";
                    while($row = $result->fetch_assoc()) {
                        $numero = $row["numero"];
                        $fecha = strtotime($row["fecha_lunes"]);
                        $ano = date("Y", $fecha);
                        $mes = date("m", $fecha);
                        $dia = date("d", $fecha);
                        echo "<li>Semana número $numero do $ano que comeza o lúns $dia/$mes/$ano.</li>";
                    }
                    echo "</ul>";
                } else {
                    echo "<p>0 resultados 😲</p>";
                }

                $conn->close();
            ?>
        </main>
        <footer>
            <hr>
            <p>pena by 1noro<!-- <a href="mailto:example@example.net">&lt;example@example.net&gt;</a>--></p>
        </footer>
    </body>
</html>
