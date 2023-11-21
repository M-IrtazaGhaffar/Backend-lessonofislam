// Packages
const express = require('express')
const server = express()
const cors = require('cors');
const { webRouter } = require('./routes/web.route');
const { writerRuouter } = require('./routes/writer.route');
const { adminRuouter } = require('./routes/admin.route');
require('dotenv').config()

// Middlewares
server.use(cors({
    "origin": "*",
    "methods": "GET,HEAD,PUT,PATCH,POST,DELETE",
}));
server.use(express.json({ limit: '1000mb'}))
server.use(express.urlencoded({ extended: true }))

// Routers
server.use('/web', webRouter)
server.use('/writer', writerRuouter)
server.use('/admin', adminRuouter)

// Testing Route
server.get('/', (req, res) => {
    res.status(200).json('Server Working!')
})

// Listening
server.listen(process.env.PORT, () => console.log(`Server listening on port :: ${process.env.PORT}!`))
