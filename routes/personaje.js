const express = require("express");
const character = express.Router();
const db = require('../config/database');

character.get("/", async (req, res, next) => {
    const chrctr = await db.query("SELECT * FROM personaje")
    return res.status(200).send({code: 200, message: chrctr});
});

character.get("/:id([0-9]{1,2})", async (req, res, next) => {
    const id = req.params.id;
    if (id > 0 && id <= 15) {
        const chrctr = await db.query("SELECT * FROM personaje WHERE idPersonaje=" + id + ";");
        return res.status(200).json({code: 1, message: chrctr});
    } else {
        return res.status(404).send("Personaje no encontrado");
    }
});

character.get("/:name", async (req, res, next) => {
    const nombrecharacter = req.params.name;
    const chrctr = await db.query("SELECT * FROM personaje WHERE nombrePersonaje='" + nombrecharacter + "';");
    if(chrctr.length > 0){
        return res.status(200).json({code: 1, message: chrctr});
    }
    return res.status(404).send({code:404, message: "Personaje no encontrado"});
});

module.exports = character;