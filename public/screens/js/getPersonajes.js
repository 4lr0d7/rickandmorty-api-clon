window.onload = init;
var headers = {"Access-Control-Allow-Origin" : null}
var url = "https://rick-and-morty--api.herokuapp.com"

function init () {
    loadPersonajes()
}

function loadPersonajes(){
    axios.get(url + "/character", headers).then(function(res){
        displayPersonajes(res.data.message)
    }).catch(function(err){
        console.log(err)
    })
}

function displayPersonajes(personaje){
    var body = document.querySelector("main")
    for(var i = 0; i < personaje.length; i++){
        body.innerHTML += `<div class="card-container">
        <div class="card-image">
            <img src="${personaje[i].urlFoto}" alt="image character">
        </div>
        <div class="card-info">
            <p class="name">${personaje[i].nombrePersonaje}</p>
            <p class="dubbingActor">${personaje[i].actorDoblaje}</p>
            <p class="firstAppearance">Primera aparición: ${personaje[i].epAparicion}</p>
            <p class="lastAppearance">Ultima aparición: ${personaje[i].ultAparicion}</p>
        
            <div class="card-info-horizontal">
                <p class="age">Edad: ${personaje[i].edad}</p>
                <p class="height">Estatura: ${personaje[i].estatura} m</p>
                <p class="weight">Peso: ${personaje[i].peso} kg</p>
            </div>
        </div>
    </div>`
    }
}