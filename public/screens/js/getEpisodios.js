window.onload = init;
var headers = {"Access-Control-Allow-Origin" : null}
var url = "https://rick-and-morty--api.herokuapp.com"

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
        body.innerHTML += `<div class="card-container card-episode">
        <div class="card-info">
            <p class="name">${episodio[i].nombreEpisodio}</p>
            <p class="episode"><b>Episodio</b> #${episodio[i].idEpisodio}</p>
            <p class="releaseDate"><b>Fecha de estreno:</b> ${episodio[i].fechaEstreno}</p>
            <p class="mainCharacters"><b>Espectadores:</b> ${episodio[i].viewer} millones</p>
            <p class="songs"><b>Temporada:</b> ${episodio[i].temporada}</p>
        </div>
    </div>`
    }
}