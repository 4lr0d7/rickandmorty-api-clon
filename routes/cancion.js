const express = require("express");
const song = express.Router();
const db = require('../config/database');

song.get("/", async (req, res, next) => {
    const sng = await db.query("SELECT * FROM cancion");
    return res.status(200).json({code:200, message: sng});
});

song.get("/:id([0-9]{1,2})", async (req, res, next) => {
    const id = req.params.id;
    if (id > 0 && id <= 15) {
        const sng = await db.query("SELECT * FROM cancion WHERE idCancion=" + id + ";");
        return res.status(200).json({code: 1, message: sng});
    } else {
        return res.status(404).send("Canción no encontrada");
    }
});

song.get("/:name", async (req, res, next) => {
    const nombreCancion = req.params.name;
    const sng = await db.query("SELECT * FROM cancion WHERE nombreCancion='" + nombreCancion + "';");
    if(sng.length > 0){
        return res.status(200).json({code: 1, message: sng});
    }
    return res.status(404).send({code:404, message: "Cancion no encontrada"});
});

module.exports = song;

