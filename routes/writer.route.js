const express = require('express')
const { register } = require('../controllers/writer.controller')
const writerRuouter = express.Router()

writerRuouter
    // GET
    //POST
    .post('/register', register)

module.exports = {
    writerRuouter
}