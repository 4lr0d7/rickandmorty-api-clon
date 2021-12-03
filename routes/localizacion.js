const express = require("express");
const location = express.Router();
const db = require('../config/database');

location.get("/", async (req, res, next) => {
    const lctn = await db.query("SELECT * FROM localizacion");
    return res.status(200).send(lctn);
});

location.get("/:id([0-9]{1,2})", (req, res, next) => {
    const id = req.params.id - 1;
    if (id >= 0 && id < 15) {
        return res.status(200).send(localizacion[req.params.id - 1]);
    } else {
        return res.status(404).send("Localización no encontrada");
    }
});

location.get("/:name([A-Za-z]+)", (req, res, next) => {
    const planeta = req.params.name;
    const localiz = localizacion.filter((pl) => {
        return (pl.planeta.toUpperCase() == planeta.toUpperCase()) ? pl : null;
    });
    return (localiz.length > 0) ? res.status(200).send(localiz) : res.status(404).send("Localización no encontrada");
});

module.exports = location;
