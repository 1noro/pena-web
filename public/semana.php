<?php
    if (isset($_GET["id"])) {
        include "utils.php";

        $boletosPorSorteo = [];
        $inversion_semanal = 0;
        $saldo_semanal = 0;
        $saldo_semanal_persoa = 0;
        $saldo_semanal_persoa_proba = 0;
        $saldo_color = "inherit";

        $datosSemana = getSemanaById($_GET["id"]);
        if ($datosSemana != null) {
            $inversion_semanal = getTotalInvertido($_GET["id"]);
            $saldo_semanal = $datosSemana["total_ganado"] - $inversion_semanal;
            $saldo_semanal_persoa = $saldo_semanal / $datosSemana["participantes"];
            $saldo_semanal_persoa_proba = $saldo_semanal_persoa / 5;
            if ($saldo_semanal < 0) {
                $saldo_color = "#a51b0b";
            }
            $sorteos = getSorteos();
            // $tiposNumero = getTiposNumero($conn);
            $boletosSemana = getBoletosSemana($_GET["id"]);
            if ($boletosSemana != null) {
                $boletosPorSorteo = getBoletosPorSorteo($sorteos, $boletosSemana);
            }
        } else {
            die("<h1>Erro 404</h1>\n<p>A semana " . $_GET["id"] . " non existe.</p>\n");
        }
    } else {
        die("<h1>Erro 400</h1>\n<p>Tes que solicitar unha semana.</p>\n");
    }
?>
<!DOCTYPE html>
<html lang="gl">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Pena</title>
        <style>
            table { text-align: center; }
            table:not(.noborder), td:not(.noborder) {
                border: 1px outset grey;
                padding: 1px;
            }
            th.left { text-align: left; }
            td.right { text-align: right; }
        </style>
    </head>
    <body style="max-width: 800px;">
        <header>
            <h1>Pena</h1>
            <p><a href="index.php">Lista de semanas</a></p>
            <hr>
        </header>
        <main>
            <h2>Semana número <?= $datosSemana["numero"] ?> do ano <?= $datosSemana["ano"] ?></h2>
            <p>
                Semana comezada o 
                <?= $datosSemana["dia"] . "/" . $datosSemana["mes"] . "/" . $datosSemana["ano"] ?>.
            </p>
            <p>
                <table class="noborder">
                    <tr>
                        <th class="left">Participantes:</th>
                        <td class="right noborder"><?= $datosSemana["participantes"] ?> persoas</td>
                    </tr>
                    <tr>
                        <th class="left">Total invertido:</th>
                        <td class="right noborder"><?= formatToTwoDecimals($inversion_semanal) ?> €</td>
                    </tr>
                    <tr>
                        <th class="left">Total gañado:</th>
                        <td class="right noborder"><?= formatToTwoDecimals($datosSemana["total_ganado"]) ?> €</td>
                    </tr>
                    <tr>
                        <th class="left">Saldo semanal:</th>
                        <td class="right noborder" style="color: <?= $saldo_color ?>;"><?= formatToTwoDecimals($saldo_semanal) ?> €</td>
                    </tr>
                    <tr>
                        <th class="left">Saldo semanal por persoa:</th>
                        <td class="right noborder" style="color: <?= $saldo_color ?>;"><?= formatToTwoDecimals($saldo_semanal_persoa) ?> €</td>
                    </tr>
                    <tr>
                        <th class="left">Saldo semanal por persoa en proba:</th>
                        <td class="right noborder" style="color: <?= $saldo_color ?>;"><?= formatToTwoDecimals($saldo_semanal_persoa_proba) ?> €</td>
                    </tr>
                </table>
            </p>
            <!-- <pre><?php /*print_r($boletosPorSorteo)*/ ?></pre> -->
            <?php
                if ($boletosPorSorteo != []) {
                    echo getSorteosHTML($boletosPorSorteo);
                } else {
                    echo "<p>0 resultados 😲</p>";
                }
            ?>
            <p><a href="index.php">[Voltar á lista de semanas]</a></p>
        </main>
        <footer>
            <hr>
            <p>pena by 1noro<!-- <a href="mailto:example@example.net">&lt;example@example.net&gt;</a>--></p>
        </footer>
    </body>
</html>
