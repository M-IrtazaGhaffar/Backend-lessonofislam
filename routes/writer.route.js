const express = require('express')
const { register, login, deleteBlog } = require('../controllers/writer.controller')
const writerRuouter = express.Router()

writerRuouter
    // GET
    // POST
    .post('/register', register)
    .post('/login', login)
    // Delete
    .delete('/delete', deleteBlog)

module.exports = {
    writerRuouter
}