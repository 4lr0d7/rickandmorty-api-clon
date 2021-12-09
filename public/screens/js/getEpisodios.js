window.onload = init;
var headers = {"Access-Control-Allow-Origin" : null}
var url = "http://localhost:3000"

function init () {
    loadEpisodios()
}

function loadEpisodios(){
    axios.get(url + "/episode", headers).then(function(res){
        displayEpisodios(res.data.message)
    }).catch(function(err){
        console.log(err)
    })
}

function displayEpisodios(episodio){
    var body = document.querySelector("main")
    for(var i = 0; i < episodio.length; i++){
        body.innerHTML += `<div class="card-container">
        <div class="card-info">
            <p class="name">${episodio[i].nombreEpisodio}</p>
            <p class="episode">Episodio #${episodio[i].idEpisodio}</p>
            <p class="releaseDate">Fecha de estreno: ${episodio[i].fechaEstreno}</p>
            <p class="mainCharacters">Espectadores: ${episodio[i].viewer} millones</p>
            <p class="songs">Temporada: ${episodio[i].temporada}</p>
        </div>
    </div>`
    }
}