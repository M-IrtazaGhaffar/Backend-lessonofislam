const express = require('express')
const adminRuouter = express.Router()

adminRuouter
    // GET
    //POST
    .post('/', async (req, res) => res.status(200).json("Hello"))

module.exports = {
    adminRuouter
}