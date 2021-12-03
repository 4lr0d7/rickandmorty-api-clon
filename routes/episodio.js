const express = require("express");
const episode = express.Router();
const {episodio} = require("../prueba.json")

episode.get("/", (req, res, next) => {
    return res.status(200).send(episodio);
    });
    
    episode.get("/:id([0-9]{1,2})", (req, res, next) => {
    const id = req.params.id -1;
    if(id >= 0 && id < 15) {
        return res.status(200).send(episodio[req.params.id -1]);
    } else {
        return res.status(404).send("episode no encontrado");
    }
    });
    
    episode.get("/:name([A-Za-z]+)", (req, res, next) => {
    const nombreEpisodio = req.params.name;
    const ep = episodio.filter((e)=>{
        return (e.nombreEpisodio.toUpperCase() == nombreEpisodio.toUpperCase()) ? e : null;
    })
    return (ep.length > 0) ? res.status(200).send(ep) : res.status(404).send("episode no encontrado");
    
    });

    module.exports= episode;