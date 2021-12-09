window.onload = init;
var headers = {"Access-Control-Allow-Origin" : null}
var url = "https://rick-and-morty--api.herokuapp.com"

function init () {
    loadCanciones()
}

function loadCanciones(){
    axios.get(url + "/song", headers).then(function(res){
        displayCanciones(res.data.message)
    }).catch(function(err){
        console.log(err)
    })
}

function displayCanciones(cancion){
    var body = document.querySelector("main")
    for(var i = 0; i < cancion.length; i++){
        body.innerHTML += `<div class="card-container">
        <div class="card-image">
            <img src="${cancion[i].urlFoto}" alt="image song">
        </div>
        <div class="card-info">
            <p class="name">${cancion[i].nombreCancion}</p>
            <p class="interpreted">${cancion[i].autor}</p>
            <p class="genre">${cancion[i].genero}</p>
            <p class="btn-spotify"><span class="icon-spotify"></span><a class="link" href="${cancion[i].urlCancion}">Escuchar</a></p>
        </div>
    </div>`
    }
}