const express = require("express");
const episode = express.Router();
const db = require('../config/database');

episode.get("/", async (req, res, next) => {
    const psd = await db.query("SELECT * FROM episodio");
    return res.status(200).send(psd);
});

episode.get("/:id([0-9]{1,2})", async (req, res, next) => {
    const id = req.params.id;
    if (id > 0 && id <= 15) {
        const psd = await db.query("SELECT * FROM episodio WHERE idEpisodio=" + id + ";");
        return res.status(200).json({code: 1, message: psd});
    } else {
        return res.status(404).send("Episodio no encontrado");
    }
});

episode.get("/:name", async (req, res, next) => {
    const nombreEpisodio = req.params.name;
    const psd = await db.query("SELECT * FROM episodio WHERE nombreEpisodio='" + nombreEpisodio + "';");
    if(psd.length > 0){
        return res.status(200).json({code: 1, message: psd});
    }
    return res.status(404).send({code:404, message: "Episodio no encontrado"});
});

module.exports = episode;