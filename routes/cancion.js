const express = require("express");
const song = express.Router();
const {cancion} = require('../prueba');

song.get("/", (req, res, next) => {
return res.status(200).send(cancion);
});

song.get("/:id([0-9]{1,2})", (req, res, next) => {
const id = req.params.id -1;
if(id >= 0 && id < 15) {
    return res.status(200).send(cancion[req.params.id -1]);
} else {
    return res.status(404).send("Canción no encontrada");
}
});

song.get("/:name([A-Za-z]+)", (req, res, next) => {
const nombreCancion = req.params.name;
const nameSong  = cancion.filter((c) =>{
    return (c.nombreCancion.toUpperCase() == nombreCancion.toUpperCase()) ? c : null;
})
return (nameSong.length > 0) ? res.status(200).send(nameSong) : res.status(404).send("Canción no encontrada")
});

module.exports = song;

