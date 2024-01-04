/* Ogni button sposta la guardia di 50px nella direzione prescelta;
 Per ogni mossa della guardia, il ladro si sposta di 50px in una direzione a caso;
 I bordi e gli angoli della stanza non sono valicabili (né vale l'effetto Pacman), cioè
guardia e ladro devono restare nella stanza;
 La guardia ha a disposizione 20 mosse per catturare il ladro finendo sulle sue stesse
coordinate;
 La situazione corrente va mostrata e aggiornata dopo ogni mossa nel div "esito" sotto
forma di mosse restanti ovvero se guardia o ladro hanno vinto;
 Vince il giocatore se la guardia cattura il ladro entro 20 mosse, vince computer se il
ladro resta libero dopo 20 mosse;
 A gioco terminato i button dovranno essere automaticamente disabilitati. */

/* 

Versione 1

document.getElementById("nord").addEventListener("click", guardiaNord);

function guardiaNord() {

    let nord = document.getElementById("guardia").style.top;
    nord = Number(nord.substring(0, nord.length-2)) - 50;

    if (nord >= 0) {
        document.getElementById("guardia").style.top = nord + "px";
    } 
}

Versione 2

let btn = document.querySelector("#nord");
btn.onclick = function() {
    let sopra = document.getElementById("guardia").style.top;
        sopra = Number(sopra.substring(0, sopra.length-2)) - 50;

        if (sopra >= 0) {
            document.getElementById("guardia").style.top = sopra + "px";
        } 
} */

let contatoreMosse = 20;
document.getElementById("esito").innerHTML = "Mosse rimanenti: " + contatoreMosse; 

function ladro(){
    let direzione = Math.floor(Math.random() * 4);
    if (direzione == 0) {
        ladroSopra();
    } else if (direzione == 1) {
        ladroDestra();
    } else if (direzione == 2) {
        ladroSotto()
    } else {
        ladroSinistra();
    }
}

function ladroSopra () {
    let sopra = document.getElementById("ladro").style.top;
        sopra = Number(sopra.substring(0, sopra.length-2)) - 50;

        if (sopra >= 0) {
            document.getElementById("ladro").style.top = sopra + "px";
        } 
}
function ladroSinistra () {
    let sinistra = document.getElementById("ladro").style.left;
        sinistra = Number(sinistra.substring(0, sinistra.length-2)) - 50;

        if (sinistra >= 0) {
            document.getElementById("ladro").style.left = sinistra + "px";
        }
}
function ladroSotto () {
    let sotto = document.getElementById("ladro").style.top;
        sotto = Number(sotto.substring(0, sotto.length-2)) + 50;

        if (sotto < 500) {
            document.getElementById("ladro").style.top = sotto + "px";
        }
}
function ladroDestra () {
    let destra = document.getElementById("ladro").style.left;
        destra = Number(destra.substring(0, destra.length-2)) + 50;

        if (destra < 500) {
            document.getElementById("ladro").style.left = destra + "px";
        }
}

document.getElementById("nord").addEventListener("click", su);
    function su() {
        let sopra = document.getElementById("guardia").style.top;
        sopra = Number(sopra.substring(0, sopra.length-2)) - 50;

        if (sopra >= 0) {
            document.getElementById("guardia").style.top = sopra + "px";
        } 
        ladro();
        controlloEsito();
    }
    
document.getElementById("ovest").addEventListener("click", sinL);
    function sinL() {
        let sinistra = document.getElementById("guardia").style.left;
        sinistra = Number(sinistra.substring(0, sinistra.length-2)) - 50;

        if (sinistra >= 0) {
            document.getElementById("guardia").style.left = sinistra + "px";
        }
        ladro();
        controlloEsito();
    }

document.getElementById("est").addEventListener("click", desR);
    function desR() {
        let destra = document.getElementById("guardia").style.left;
        destra = Number(destra.substring(0, destra.length-2)) + 50;

        if (destra < 500) {
            document.getElementById("guardia").style.left = destra + "px";
        }
        ladro();
        controlloEsito();
    }

document.getElementById("sud").addEventListener("click", giu);
    function giu() {
        let sotto = document.getElementById("guardia").style.top;
        sotto = Number(sotto.substring(0, sotto.length-2)) + 50;

        if (sotto < 500) {
            document.getElementById("guardia").style.top = sotto + "px";
        }
        ladro();
        controlloEsito();
    }

function controlloEsito() {
	contatoreMosse--;
  document.getElementById("esito").innerHTML = "Mosse rimaste: " + contatoreMosse;
  
  if (contatoreMosse == 0) {
  document.getElementById("esito").innerHTML = "<font color='red'>Hai perso!</font><br /><button class='pulsante' style='height: 52px' onClick='window.location.reload();'>Gioca ancora</button>";
  document.getElementById("nord").removeEventListener("click", su);
  document.getElementById("est").removeEventListener("click", desR);
  document.getElementById("sud").removeEventListener("click", giu);
  document.getElementById("ovest").removeEventListener("click", sinL);
  }
  
  if (document.getElementById("guardia").style.top == document.getElementById("ladro").style.top && document.getElementById("guardia").style.left == document.getElementById("ladro").style.left) {
  document.getElementById("esito").innerHTML = "<font color='blue'>Hai vinto!</font><br /><button class='pulsante' style='height: 52px' onClick='window.location.reload();'>Try Again?</button>";
  document.getElementById("nord").removeEventListener("click", su);
  document.getElementById("est").removeEventListener("click", desR);
  document.getElementById("sud").removeEventListener("click", giu);
  document.getElementById("ovest").removeEventListener("click", sinL);
  }
}