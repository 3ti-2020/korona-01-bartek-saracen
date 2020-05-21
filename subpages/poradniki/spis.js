const chowaj = document.querySelector(".chowaj");
const spis = document.getElementById("spis");

chowaj.addEventListener('click',function (){
    if(spis.style.transform === "translateX(-480px)"){
        spis.style.transform = "translateX(0px)";
        chowaj.innerHTML = "<";
    }
    else {
        spis.style.transition = "transform 1s";
        spis.style.transform = "translateX(-480px)";
        chowaj.innerHTML = ">";
    }
})