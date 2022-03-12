<?php

function formatToTwoDecimals($number) {
    return number_format($number, 2, ",", ".");
}

function getSemanaById($conn, $id) {
    $sql = "SELECT id, numero, fecha_lunes FROM semana WHERE id = " . $_GET["id"];
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        return [
            "numero" => $row["numero"],
            "ano" => date("Y", strtotime($row["fecha_lunes"])),
            "mes" => date("m", strtotime($row["fecha_lunes"])),
            "dia" => date("d", strtotime($row["fecha_lunes"]))
        ];
    } else {
        return null;
    }
}

function getSorteos($conn) {
    $sql = "SELECT id, nombre, dias, precio FROM sorteo";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $sorteos = [];
        while($row = $result->fetch_assoc()) {
            $sorteos[] = [
                "id" => $row["id"],
                "nombre" => $row["nombre"],
                "dias" => $row["dias"],
                "precio" => $row["precio"]
            ];
        }
        return $sorteos;
    } else {
        return null;
    }
}

// function getTiposNumero($conn) {
//     $sql = "SELECT id, nombre FROM tipo_numero";
//     $result = $conn->query($sql);
//     if ($result->num_rows > 0) {
//         $tiposNumero = [];
//         while($row = $result->fetch_assoc()) {
//             $tiposNumero[] = [
//                 "id" => $row["id"],
//                 "nombre" => $row["nombre"]
//             ];
//         }
//         return $tiposNumero;
//     } else {
//         return null;
//     }
// }

function getBoletosSemana($conn, $semanaId) {
    $sql = "CALL get_semana($semanaId)";
    $result = $conn->query($sql);
    $boletos = [];
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $boletos[] = [
                "sorteo_id" => $row["sorteo_id"],
                "numeros" => json_decode($row["numero"], true)
            ];
        }
        return $boletos;
    } else {
        return null;
    }
}

function getBoletosPorSorteo($sorteos, $boletosSemana) {
    $boletosPorSorteo = [];
    foreach($sorteos as $sorteo) {
        $sorteo["numeros"] = [];
        foreach($boletosSemana as $boleto) {
            if ($sorteo["id"] == $boleto["sorteo_id"]) {
                $boletoOrganizado = [];
                foreach($boleto["numeros"] as $numero) {
                    if (!array_key_exists($numero["tipo"], $boletoOrganizado)) {
                        $boletoOrganizado[$numero["tipo"]] = [];
                    }
                    array_push($boletoOrganizado[$numero["tipo"]], $numero["numero"]);
                }
                array_push($sorteo["numeros"], $boletoOrganizado);
            }
        }
        array_push($boletosPorSorteo, $sorteo);
    }
    return $boletosPorSorteo;
}

function getSorteosHTML($boletosPorSorteo) {
    $html = "";
    foreach($boletosPorSorteo as $sorteo) {
        if ($sorteo["numeros"] > 0) {
            $precioBoleto = formatToTwoDecimals($sorteo["precio"]);
            $totalInvertido = formatToTwoDecimals($sorteo["precio"] * count($sorteo["numeros"]));
            $html .= "<div class='sorteo'>";
            $html .= "<h3>" . $sorteo["nombre"] . "</h3>";
            $html .= "<p>Invertiuse un total de $totalInvertido € ($precioBoleto € por boleto).</p>";
            $html .= "<table>";
            $html .= "<tr>";
            $tipos = array_keys($sorteo["numeros"][0]);
            foreach ($tipos as $tipo) {
                $html .= "<th>" . $tipo . "</th>";
            }
            $html .= "<tr>";
            foreach($sorteo["numeros"] as $numero) {
                $html .= "<tr>";
                if (count($tipos) == 1) {
                    // lot nac xov/sab
                    $html .= "<td>" . sprintf('%05d', $numero[$tipos[0]][0]) . "</td>";
                } else {
                    // resto
                    foreach($tipos as $tipo) {
                        $html .= "<td>";
                        foreach($numero[$tipo] as $componente) {
                            $html .= sprintf('%02d', $componente) . " ";
                        }
                        $html .= "</td>";
                    }
                }
                $html .= "</tr>";
            }
            $html .= "</table>";
            $html .= "</div>";
        }
    }
    return $html;
}

?>
