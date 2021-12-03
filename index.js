const express = require('express');
const app = express();
const morgan = require("morgan");
// const {cancion, episodio, localizacion} = require("./routes/rickAndMorty")
const character = require("./routes/personaje")
const song = require("./routes/cancion")
const episode = require("./routes/episodio")
const location = require("./routes/localizacion")
//Exportar BodyParser
const bodyParser = require('body-parser');
app.use(morgan("dev"));
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

app.use("/character", character);
app.use("/song", song);
app.use("/episode", episode);
app.use("/location", location);

app.listen(process.env.PORT || 3000, () => {
    console.log("El servidor esta corriendo...");
});