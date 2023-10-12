const express = require('express')
const { register, login, deleteBlog, createBlog, fetchBlog, fetchAllBlog } = require('../controllers/writer.controller')
const { authJSON } = require('../middlewares/auth')
const writerRuouter = express.Router()

writerRuouter
    // --- GET ---
    // --- POST ---
    .post('/register', register)
    .post('/login', login)
    .post('/createBlog', authJSON, createBlog)
    .post('/fetchBlog', authJSON, fetchBlog)
    .post('/fetchAllBlog', authJSON, fetchAllBlog)
    .post('/deleteBlog', authJSON, deleteBlog)

module.exports = {
    writerRuouter
}