<!DOCTYPE html>
<html lang="gl">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Pena</title>
    </head>
    <body style="max-width: 800px;">
        <header>
            <h1>Pena</h1>
            <hr>
        </header>
        <main>
            <h2>Semanas xogadas</h2>
            <?php
                $conn = new mysqli(getenv('DB_HOST'), getenv('DB_USER'), getenv('DB_PASS'), getenv('DB_NAME'));
                if ($conn->connect_error) {
                    die("<p>Connection failed: " . $conn->connect_error . "</p>\n");
                }

                $sql = "SELECT id, numero, fecha_lunes FROM semana";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    // output data of each row
                    echo "<ul>\n";
                    while($row = $result->fetch_assoc()) {
                        $id = $row["id"];
                        $numero = $row["numero"];
                        $fecha = strtotime($row["fecha_lunes"]);
                        $ano = date("Y", $fecha);
                        $mes = date("m", $fecha);
                        $dia = date("d", $fecha);
                        echo "<li><a href=\"semana.php?id=$id\">Semana número $numero</a> do $ano que comeza o lúns $dia/$mes/$ano.</li>\n";
                    }
                    echo "</ul>\n";
                } else {
                    echo "<p>0 resultados 😲</p>\n";
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
