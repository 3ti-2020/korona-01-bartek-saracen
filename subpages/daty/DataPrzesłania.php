<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daty przesłanych filmów</title>
    <link rel="stylesheet" href="Data.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Daty przesłanych filmów</h1>
        </header>
        <nav>
            <div class="A"><a href="../../index.html">Strona główna</a></div>
            <div class="A">
                <a href="../poradniki/indexfilmy.html">Poradniki</a>
            </div>
            <div class="A">
                <a href="../cos/OMnie.html">O mnie</a>
            </div>
            <div class="A">
                <a href="../ranking/ranking.html">Ranking</a>
            </div>
        </nav>
        <main>
            <div class="tabele">
                <?php
                    function daty($sql,$cd,$skrrrt) {
                        $servername="127.0.0.1";
                        $username="root";
                        $password="";
                        $dbname="bartek saracen";
                        $conn = new mysqli($servername,$username,$password,$dbname);
                        $result=$conn->query($sql);
                        echo("<table class='tab'><th>Numer</th>$cd");
                        while($row=$result->fetch_assoc()){
                            echo("<tr>");
                            if($skrrrt == 1){
                                echo("<td>".$row['Numer']."</td><td>".$row['Data']."</td><td>".$row['Nazwa']."</td>");
                            }
                            else if($skrrrt == 2){
                                echo("<td>".$row['Numer']."</td><td>".$row['Wyswietlenia']."</td>");
                            }
                            echo("</tr>");
                        }
                        echo("</table>");
                        mysqli_close($conn);
                    }
                    daty("SELECT * from daty", '<th>Daty</th><th>Nazwa</th>','1');
                    daty("SELECT * from wyswietlenia", '<th>Wyświetlenia</th>','2');
                ?>
            </div>
        </main>
        <footer>
            <h1>Mój kanał, kliknij <a href="https://www.youtube.com/user/minecraftNero120" target="_blank">tutaj !</a></h1>
        </footer>
    </div>
</body>
</html>