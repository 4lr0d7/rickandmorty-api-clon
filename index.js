const express = require('express');
const app = express();
const morgan = require('morgan');
const path = require('path')
// const {cancion, episodio, localizacion} = require("./routes/rickAndMorty")
const character = require('./routes/personaje')
const song = require('./routes/cancion')
const episode = require('./routes/episodio')
const location = require('./routes/localizacion')
//Use: Todas las peticiones que entren al servidor se les aplicará una función.
// Usa capas para procesar la información que entren al servidor
app.use(morgan('dev'));
app.use(express.json());
app.use(express.urlencoded({extended: true}))

/*
VERBOS PRINCIPALES en HTTP:
- GET: Obtener Recursos
- POST: Almacenar / Crear recursos
- PATCH: Modificar una parte de un recurso
- PUT: Modificar un Recurso
- DELETE: Eliminar un Recurso 
*/

//Main
app.get("/", (req, res, next) => {
    return res.sendFile(path.resolve(__dirname, 'index.html'))
});

app.use(function(req,res,next){
    res.header("Access-Control-Allow-Origin", "*")
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept")
    next()
})

app.use("/character", character);
app.use("/song", song);
app.use("/episode", episode);

// Archivos estáticos
app.use(express.static(__dirname + '/public'));

//Control de rutas no encontradas
app.use((req, res, next) => {
    return res.status(404).json({code: 404, message: "URL no encontrada"})
})

app.listen(process.env.PORT || 3000, () => {
    console.log("El servidor esta corriendo...");
});