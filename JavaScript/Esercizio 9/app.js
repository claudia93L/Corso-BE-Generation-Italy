
let immaginiSlot = new Array("1.png", "2.png", "3.png", "4.png", "5.png");

document.getElementById("pulsanteGioca").addEventListener("click", attivaSlot);

let ripeti;


function attivaSlot(){

  document.getElementById("pulsanteGioca").removeEventListener("click", start);
  document.getElementById("pulsanteStop").addEventListener("click", disattivaSlot);
  
  document.images.uno.src = immaginiSlot[Math.floor(Math.random()*5)];
  document.images.due.src = immaginiSlot[Math.floor(Math.random()*5)];
  document.images.tre.src = immaginiSlot[Math.floor(Math.random()*5)];
  ripeti = setTimeout("attivaSlot()", 100);

}

function disattivaSlot(){
  clearTimeout(ripeti);
  document.getElementById("pulsanteGioca").removeEventListener("click", disattivaSlot);
  document.getElementById("pulsanteStop").addEventListener("click", attivaSlot);

  let slotUno = document.images.uno.src;
  let slotDue = document.images.due.src;
  let slotTre = document.images.tre.src;

  if(slotUno == slotDue && slotDue == slotTre){
    document.getElementById("esito").innerHTML = "Complimenti, hai vinto!";
  } else {
    document.getElementById("esito").innerHTML = "Ci dispiace, hai perso!";
  }
  
}



