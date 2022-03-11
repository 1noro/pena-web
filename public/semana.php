<?php
    include "utils.php";

    $conn = new mysqli(getenv('DB_HOST'), getenv('DB_USER'), getenv('DB_PASS'), getenv('DB_NAME'));
    if ($conn->connect_error) {
        die("<p>Connection failed: " . $conn->connect_error . "</p>\n");
    }

    $boletosPorSorteo = [];
    $datosSemana = getSemanaById($conn, $_GET["id"]);
    if ($datosSemana != null) {
        $sorteos = getSorteos($conn);
        // $tiposNumero = getTiposNumero($conn);
        $boletosSemana = getBoletosSemana($conn, $_GET["id"]);
        $boletosPorSorteo = getBoletosPorSorteo($sorteos, $boletosSemana);
    } else {
        die("<h1>Erro 404</h1>\n<p>A semana " . $_GET["id"] . " non existe.</p>\n");
    }

    $conn->close();
?>
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
            <h2>Semana número <?= $datosSemana["numero"] ?> do ano <?= $datosSemana["ano"] ?></h2>
            <p>Na semana comezada o <?= $datosSemana["dia"] . "/" . $datosSemana["mes"] . "/" . $datosSemana["ano"] ?> xoganse os seguintes números.</p>
            <pre>
            <?php
                // if ($result->num_rows > 0) {
                //     // output data of each row
                //     echo '<table border="1">';
                //     while($row = $result->fetch_assoc()) {
                //         $numeroJSON = json_decode($row["numero"]);
                //         $sorteo_id = $row["sorteo_id"];
                //         // echo "<tr><td>$numeroJSON</td></tr>";
                //         if ($sorteo_id == 1) {
                //             $numero = $numeroJSON[0]->numero;
                //             echo "<tr><td>$sorteo_id</td><td>" . sprintf('%05d', $numero) . "</td></tr>";
                //         }
                //     }
                //     echo "</table>";
                // } else {
                //     echo "<p>0 resultados 😲</p>";
                // }

                print_r($boletosPorSorteo);


            ?>
            </pre>
        </main>
        <footer>
            <hr>
            <p>pena by 1noro<!-- <a href="mailto:example@example.net">&lt;example@example.net&gt;</a>--></p>
        </footer>
    </body>
</html>
