let next = 1;

function schowaj(){
    $("#slajd").fadeOut(500);
}

function nextslajd(){
    next++;
    if(next>=3) {
        next=1;
    }
    var plik = "<img src=\"images/slajdy/slajd"+next+".png\" />";
    document.querySelector("#slajd").innerHTML = plik;
    $("#slajd").fadeIn(500);
    setTimeout("nextslajd()",4000);
    setTimeout("schowaj()",3500);
}