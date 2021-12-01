const express = require('express');
const app = express();
const { personaje, cancion, episodio, localizacion } = require('./prueba.json');
//Exportar BodyParser
const bodyParser = require('body-parser');
//Use: Todas las peticiones que entren al servidor se les aplicará una función.
// Usa capas para procesar la información que entren al servidor
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}))

/*
VERBOS PRINCIPALES en HTTP:
- GET: Obtener Recursos
- POST: Almacenar / Crear recursos
- PATCH: Modificar una parte de un recurso
- PUT: Modificar un Recurso
- DELETE: Eliminar un Recurso 
*/

app.get("/", (req, res, next) => {
    return res.status(200).send("Bienvenido al API de Rick y Morty");
}); 

//POST
app.post("/personaje",(req, res, next)=>{
        return res.status(200).send(req.body)
})

app.get("/personaje", (req, res, next) => {
    return res.status(200).send(personaje);
});

app.get("/personaje/:id([0-9]{1,2})", (req, res, next) => {
    const id = req.params.id -1;
    if(id >= 0 && id < 15) {
        return res.status(200).send(personaje[req.params.id -1]);
    } else {
        res.status(404);
        res.send("Personaje no encontrado");
    }
});

app.get("/personaje/:name([A-Za-z]+)", (req, res, next) => {
    const nombrePersonaje = req.params.name;
    const character = personaje.filter((p)=>{
        return (p.nombrePersonaje.toUpperCase() == nombrePersonaje.toUpperCase()) ? p : null;
    })
    return (character.length > 0) ? res.status(200).send(character) : res.status(404).send("Personaje no Encontrado")
});

app.get("/cancion", (req, res, next) => {
    return res.status(200).send(cancion);
});

app.get("/cancion/:id([0-9]{1,2})", (req, res, next) => {
    const id = req.params.id -1;
    if(id >= 0 && id < 15) {
        return res.status(200).send(cancion[req.params.id -1]);
    } else {
        return res.status(404).send("Canción no encontrada");
    }
});

app.get("/cancion/:name([A-Za-z]+)", (req, res, next) => {
    const nombreCancion = req.params.name;
    const nameSong  = cancion.filter((c) =>{
        return (c.nombreCancion.toUpperCase() == nombreCancion.toUpperCase()) ? c : null;
    })
    return (nameSong.length > 0) ? res.status(200).send(nameSong) : res.status(404).send("Canción no encontrada")
});

app.get("/episodio", (req, res, next) => {
    return res.status(200).send(episodio);
});

app.get("/episodio/:id([0-9]{1,2})", (req, res, next) => {
    const id = req.params.id -1;
    if(id >= 0 && id < 15) {
        return res.status(200).send(episodio[req.params.id -1]);
    } else {
        return res.status(404).send("Episodio no encontrado");
    }
});

app.get("/episodio/:name([A-Za-z]+)", (req, res, next) => {
    const nombreEpisodio = req.params.name;
    const ep = episodio.filter((e)=>{
        return (e.nombreEpisodio.toUpperCase() == nombreEpisodio.toUpperCase()) ? e : null;
    })
    return (ep.length > 0) ? res.status(200).send(ep) : res.status(404).send("Episodio no encontrado");

});

app.get("/localizacion", (req, res, next) => {
    return res.status(200).send(localizacion);
});

app.get("/localizacion/:id([0-9]{1,2})", (req, res, next) => {
    const id = req.params.id -1;
    if(id >= 0 && id < 15) {
        return res.status(200).send(localizacion[req.params.id -1]);
    } else {
        return res.status(404).send("Localización no encontrada");
    }
});

app.get("/localizacion/:name([A-Za-z]+)", (req, res, next) => {
    const planeta = req.params.name;
    const localiz = localizacion.filter((pl)=>{
     return (pl.planeta.toUpperCase() == planeta.toUpperCase()) ? pl: null;
    });
    return (localiz.length > 0) ? res.status(200).send(localiz) : res.status(404).send("Localización no encontrada");
});


app.listen(process.env.PORT || 3000, () => {
    console.log("El servidor esta corriendo...");
});