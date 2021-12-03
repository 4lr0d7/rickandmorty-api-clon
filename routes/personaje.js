const express = require("express");
const character = express.Router();
const db = require('../config/database');

character.get("/", async (req, res, next) => {
    const chrctr = await db.query("SELECT * FROM personaje")
    return res.status(200).send(chrctr);
});

character.get("/:id([0-9]{1,2})", (req, res, next) => {
    const id = req.params.id - 1;
    if (id >= 0 && id < 15) {
        return res.status(200).send(personaje[req.params.id - 1]);
    } else {
        res.status(404);
        res.send("character no encontrado");
    }
});

character.get("/:name([A-Za-z]+)", (req, res, next) => {
    const nombrecharacter = req.params.name;
    const personaje = personaje.filter((p) => {
        return (p.nombrecharacter.toUpperCase() == nombrecharacter.toUpperCase()) ? p : null;
    })
    return (personaje.length > 0) ? res.status(200).send(personaje) : res.status(404).send("character no Encontrado")
});

module.exports = character;