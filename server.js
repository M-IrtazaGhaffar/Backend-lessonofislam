// Packages
const express = require('express')
const server = express()
const cors = require('cors');
const bodyParser = require('body-parser');
const { webRouter } = require('./routes/web.route');
require('dotenv').config()

// Middlewares
server.use(cors({
    "origin": "*",
    "methods": "GET,HEAD,PUT,PATCH,POST,DELETE",
}));
server.use(bodyParser.urlencoded({ extended: true }))
server.use|(bodyParser.json())

// Routers
server.use('/web', webRouter)

server.get('/', (res, res) => {
    res.json('Hello')
})

// Listening
server.listen(process.env.PORT, () => console.log(`Server listening on port :: ${process.env.PORT}!`))