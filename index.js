const express = require('express');
const app = express();
const { personaje, cancion, episodio, localizacion } = require('./prueba.json');

app.get("/", (req, res, next) => {
    res.status(200);
    res.send("Bienvenido al API de Rick y Morty");
}); 

app.get("/personaje", (req, res, next) => {
    res.status(200); 
    res.send(personaje);
});

app.get("/personaje/:id([0-9]{1,2})", (req, res, next) => {
    const id = req.params.id -1;
    if(id >= 0 && id < 15) {
        res.status(200); 
        res.send(personaje[req.params.id -1]);
    } else {
        res.status(404);
        res.send("Personaje no encontrado");
    }
});

app.get("/personaje/:name", (req, res, next) => {
    const nombrePersonaje = req.params.name;
    for(i = 0; i < personaje.length; i++) {
        if(personaje[i].nombrePersonaje == nombrePersonaje) {
            res.status(200);
            res.send(personaje[i]);
        }
    } 
    res.status(404);
    res.send("Personaje no encontrado");
});

app.get("/cancion", (req, res, next) => {
    res.status(200); 
    res.send(cancion);
});

app.get("/cancion/:id([0-9]{1,2})", (req, res, next) => {
    const id = req.params.id -1;
    if(id >= 0 && id < 15) {
        res.status(200); 
        res.send(cancion[req.params.id -1]);
    } else {
        res.status(404);
        res.send("Canción no encontrada");
    }
});

app.get("/cancion/:name", (req, res, next) => {
    const nombreCancion = req.params.name;
    for(i = 0; i < cancion.length; i++) {
        if(cancion[i].nombreCancion == nombreCancion) {
            res.status(200);
            res.send(cancion[i]);
        }
    } 
    res.status(404);
    res.send("Canción no encontrada");
});

app.get("/episodio", (req, res, next) => {
    res.status(200); 
    res.send(episodio);
});

app.get("/episodio/:id([0-9]{1,2})", (req, res, next) => {
    const id = req.params.id -1;
    if(id >= 0 && id < 15) {
        res.status(200); 
        res.send(episodio[req.params.id -1]);
    } else {
        res.status(404);
        res.send("Episodio no encontrado");
    }
});

app.get("/episodio/:name", (req, res, next) => {
    const nombreEpisodio = req.params.name;
    for(i = 0; i < episodio.length; i++) {
        if(episodio[i].nombreEpisodio == nombreEpisodio) {
            res.status(200);
            res.send(episodio[i]);
        }
    } 
    res.status(404);
    res.send("Episodio no encontrado");
});

app.get("/localizacion", (req, res, next) => {
    res.status(200); 
    res.send(localizacion);
});

app.get("/localizacion/:id([0-9]{1,2})", (req, res, next) => {
    const id = req.params.id -1;
    if(id >= 0 && id < 15) {
        res.status(200); 
        res.send(localizacion[req.params.id -1]);
    } else {
        res.status(404);
        res.send("Localización no encontrada");
    }
});

app.get("/localizacion/:name", (req, res, next) => {
    const planeta = req.params.name;
    for(i = 0; i < localizacion.length; i++) {
        if(localizacion[i].planeta == planeta) {
            res.status(200);
            res.send(localizacion[i]);
        }
    } 
    res.status(404);
    res.send("Localización no encontrada");
});


app.listen(process.env.PORT || 3000, () => {
    console.log("El servidor esta corriendo...");
});