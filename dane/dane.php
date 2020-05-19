<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<style>
    table, th, td {
        border: 1px solid black;
        margin: 10px;
    }
</style>
<body>
    <?php
        function daty($sql){
            $servername = "127.0.0.1";
    $username = "root";
    $password = "";
    $dbname = "bartek saracen";
    $conn = new mysqli($servername, $username, $password, $dbname);
            $result=$conn->query($sql);
            echo("<table>");
            echo("<tr>
            <th>Numer</th>
            <th>Data</th>
            <th>Nazwa</th>
            </tr>");
            while($row=$result->fetch_assoc()){
                echo("<tr>");
                echo("<td>".$row['Numer']."</td><td>".$row['Data']."</td><td>".$row['Nazwa']."</td>");
                echo("</tr>");
            }
            echo("</table>");
            mysqli_close($conn);
        }
        function siema($sql){
            $servername = "127.0.0.1";
    $username = "root";
    $password = "";
    $dbname = "bartek saracen";
    $conn = new mysqli($servername, $username, $password, $dbname);
            $result=$conn->query($sql);
            echo("<table>");
            echo("<tr>
            <th>Numer</th>
            <th>wyświetlenia</th>
            </tr>");
            while($row=$result->fetch_assoc()){
                echo("<tr>");
                echo("<td>".$row['Numer']."</td><td>".$row['Wyswietlenia']."</td>");
                echo("</tr>");
            }
            echo("</table>");
            mysqli_close($conn);
        }
        daty("SELECT * from daty");
        siema("SELECT * from wyswietlenia");

    ?>
</body>
</html>
