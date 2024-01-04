// variabili da utilizzare per mostrare e nascondere i form

const displayForm = document.querySelector("#form");
const displayRicevuta = document.querySelector("#ricevuta");

// variabili delle opzioni operatore selezionabili come gestore

const tim = document.modulo.gestore_telefonico.tim;
const windTre = document.modulo.gestore_telefonico.wind_tre;
const vodafone = document.modulo.gestore_telefonico.vodafone;
const lyca = document.modulo.gestore_telefonico.lyca_mobile;
const poste = document.modulo.gestore_telefonico.poste_mobile;
//const altro = document.modulo.gestore_telefonico.altro;

const altroGestore = document.querySelector("#gestore_altro"); // div da mostrare nel form alla selezione di altro

// definizione funzione per la scelta del gestore (tra quelli esistenti) e l'invio dei dati alla ricevuta

function sceltaGestore(){
    let gestoreScelto = document.modulo.scegli_gestore_telefonico.value;
    
    if(gestoreScelto !== altro){
        document.getElementById("gestore_ric").innerHTML = gestoreScelto;
    }
} 

/* Codice da cambiare/rivedere per fare in modo che: 

    1. Alla selezione di "Altro", il div con l'input text passi da d-none a d-block
    2. Alla selezione di una qualsiasi altra opzione già esistente, il valore viene correttamente inviato per essere stampato nella ricevuta (FATTO)
    3. Se non si seleziona nessun gestore, lasciando quello predefinito (che ho reso non selezionabile nell'HTML), partirà un alert di avviso

    let gestoreAggiunto = document.modulo.altro_gestore.value;
    if(gestoreScelto === altro){
        altroGestore.classList.remove("d-none"); 
        altroGestore.classList.add("d-block");  
        document.getElementById("gestore_ric").innerHTML = gestoreAggiunto;

    } else if(gestoreScelto !== altro){
        document.getElementById("gestore_ric").innerHTML = gestoreScelto;
       
    } else if(gestoreScelto === scegli){
        alert("Non hai selezionato un gestore telefonico!");
    }
    
    document.getElementById("altroGestore").classList.remove("d-none");
    document.getElementById("altroGestore").classList.remove("d-block");

    document.modulo.altroGestore.focus(); // indicatore per scrivere automaticamente sull'input 

*/        

// definizione della funzione che mostra/nasconde i form
function mostraNascondiForm(){
    displayForm.classList.remove("d-block");
    displayForm.classList.add("d-none"); 
    displayRicevuta.classList.remove("d-none");
    displayRicevuta.classList.add("d-block"); // superfluo ma scritto per ordine
}

// evento al click del pulsante di invio dati

document.getElementById("pulsante_invia").addEventListener("click", apriRicevuta);

function apriRicevuta(e){
    
    //prelevare i file di input del form e stamparli a schermo nel div con innerHTML
    let nomeRicevuta = document.modulo.nome.value;
    document.getElementById("nome_ric").innerHTML = nomeRicevuta[0].toUpperCase() + nomeRicevuta.substring(1); // seleziono il primo carattere per renderlo maiuscolo, e poi restituisco il resto della stringa a partire dal secondo carattere

    let cognomeRicevuta = document.modulo.cognome.value;
    document.getElementById("cognome_ric").innerHTML = cognomeRicevuta[0].toUpperCase() + cognomeRicevuta.substring(1); 

    let codiceFiscaleRicevuta = document.modulo.codice_fiscale.value;
    document.getElementById("codice_fiscale_ric").innerHTML = codiceFiscaleRicevuta.toUpperCase(); 

    let cittaRicevuta = document.modulo.citta.value;
    document.getElementById("citta_ric").innerHTML = cittaRicevuta[0].toUpperCase() + cittaRicevuta.substring(1);
    
    // chiamo la funzione per la scelta e l'invio dei dati del gestore

    sceltaGestore();

    let telefonoRicevuta = document.modulo.telefono.value;
    document.getElementById("telefono_ric").innerHTML = telefonoRicevuta;

    let marcaRicevuta = document.modulo.marca.value;
    document.getElementById("marca_ric").innerHTML = marcaRicevuta[0].toUpperCase() + marcaRicevuta.substring(1);

    let modelloRicevuta = document.modulo.modello.value;
    document.getElementById("modello_ric").innerHTML = modelloRicevuta[0].toUpperCase() + modelloRicevuta.substring(1); 

    let problemaRicevuta = document.modulo.problema.value;
    document.getElementById("problema_ric").innerHTML = problemaRicevuta[0].toUpperCase() + problemaRicevuta.substring(1);

    // condizione per valore input del recapito

    let recapitoRicevuta = document.modulo.recapito.value;
    if(recapitoRicevuta !== ""){
        document.getElementById("recapito_ric").innerHTML = recapitoRicevuta;
    } else if(recapitoRicevuta === ""){
        document.getElementById("recapito_ric").innerHTML = telefonoRicevuta;
    }

    //chiamo la funzione per nascondere/mostrare i form al click
    mostraNascondiForm();

    //evito che la pagina si ricarichi ad ogni click e impedisca l'invio dei dati della ricevuta, bloccando l'evento submit associato al bottone del form
    e.preventDefault();
}

// evento al click del pulsante di salvataggio

document.getElementById("pulsante_salvataggio").addEventListener("click", salvaRicevuta);

// alert di conferma salvataggio ricevuta

function salvaRicevuta() {
    alert("Ricevuta salvata correttamente!");
}


