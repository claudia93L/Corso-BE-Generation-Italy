function ajaxGet(url, callback){
    let req = new XMLHttpRequest();
    req.open("GET", url);

    req.addEventListener("load", function(){

        if(req.status >= 200 && req.status < 400){ // 404 è "Page not found" - Seconda modalità di controllo disponibilità della pagina
            callback(req.responseText);
        } else {
            console.error(req.status + " " + req.statusText + " " + url); // mostro i codici di errore in console(non interessano l'utente)
        }
    });

    req.addEventListener("error", function(){
        console.error("Errore sull'indirizzo web " + url);
    });

    req.send(null);
}

let form = document.querySelector("form");
form.addEventListener("submit", function(e){ // faccio riferimento all'input type submit di input, non potendo inserire il button nel form
    e.preventDefault();
    let citta = form.elements.nomeCitta.value; // modalità alternativa a document.nomeForm.nomeInput.value
    let lang = "&lang=it"; // impostiamo la lingua italiana secondo le modalità previste dalla pagina cui collegarci
    let tempo = "&units=metric"; // impostiamo l'unità di misur in gradi centigradi

    ajaxGet("http://api.openweathermap.org/data/2.5/weather?q=" + citta + "&APPID=171afc4ace2796c30471c8a140f31231" + lang + tempo, function(esito){
        let data = JSON.parse(esito);
        let nomeCitta = document.createElement("h2"); // creo nel file HTML un titolo h2
        nomeCitta.textContent = data.name; // scrivo il testo del titolo h2, il nome della città prelevato dall'url
        let temperatura = document.createElement("h2");
        temperatura.textContent = data.main.temp + "°C"; // scrivo la temperatura prelevata dall'url
        let iconCode = data.weather[0].icon; 
        let iconUrl = "http://openweathermap.org/img/w/" + iconCode + ".png"; // il link all'immagine dell'icona sulla situazione meteo
        let icon = document.createElement("img"); // creo un'immagine nel file HTML
        icon.setAttribute("src", iconUrl); // definisco l'immagine da caricare

        // non posso usare innerHTML, avendo creato i tre oggetti tramite script collegati al file JSON di openweathermap
        document.getElementById("resp").appendChild(nomeCitta); 
        document.getElementById("resp").appendChild(temperatura);
        document.getElementById("resp").appendChild(icon);
    });

});