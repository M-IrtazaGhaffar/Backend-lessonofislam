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
server.use(express.json())

// Routers
server.use('/web', webRouter)

server.get('/', (req, res) => {
    res.json('Hello World!')
})

// Listening
server.listen(process.env.PORT, () => console.log(`Server listening on port :: ${process.env.PORT}!`))