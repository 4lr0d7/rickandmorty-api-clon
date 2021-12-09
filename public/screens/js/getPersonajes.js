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
            <p class="dubbingActor"><b>Actor de dobleje:</b> ${personaje[i].actorDoblaje}</p>
            <p class="firstAppearance"><b>Primera aparición:</b> ${personaje[i].epAparicion}</p>
            <p class="lastAppearance"><b>Ultima aparición:</b> ${personaje[i].ultAparicion}</p>
        
            <div class="card-info-horizontal">
                <p class="age"><b>Edad</b> ${personaje[i].edad}</p>
                <p class="height"><b>Estatura</b> ${personaje[i].estatura} m</p>
                <p class="weight"><b>Peso</b> ${personaje[i].peso} kg</p>
            </div>
        </div>
    </div>`
    }
}