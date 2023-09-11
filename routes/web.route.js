const express = require('express')
const {
    getAllDuas,
    getAllStories,
    getDuaDetails,
    getStoryDetails,
    getAllBlogs,
    getBlogDetails,
    getDuaSearch,
    getStorySearch,
    getBlogSearch,
    getDuaRecent,
    getBlogRecent,
    getStoryRecent,
    getAllZikr,
    getZikrRecent,
    getZikrSearch,
    getZikrDetails,
    getNamesDetails,
    getNamesSearch,
    getAllNames,
    getNamesRecent
} = require('../controllers/web.controller')
const webRouter = express.Router()

webRouter
    // --- GET ---
    // Duas
    .get('/getAllDuas', getAllDuas)
    .get('/getDuaRecent', getDuaRecent)
    // Blogs
    .get('/getAllBlogs', getAllBlogs)
    .get('/getBlogRecent', getBlogRecent)
    // Stories
    .get('/getAllStories', getAllStories)
    .get('/getStoryRecent', getStoryRecent)
    // Zikr
    .get('/getAllZikr', getAllZikr)
    .get('/getZikrRecent', getZikrRecent)
    // Names
    .get('/getAllNames', getAllNames)
    .get('/getNamesRecent', getNamesRecent)
    // --- POST ---
    // Duas
    .post('/getDuaDetails', getDuaDetails)
    .post('/getDuaSearch', getDuaSearch)
    // Blogs
    .post('/getBlogDetails', getBlogDetails)
    .post('/getBlogSearch', getBlogSearch)
    // Stories
    .post('/getStoryDetails', getStoryDetails)
    .post('/getStorySearch', getStorySearch)
    // Zikr
    .post('/getZikrSearch', getZikrSearch)
    .post('/getZikrDetails', getZikrDetails)
    // Names
    .post('/getNamesDetails', getNamesDetails)
    .post('/getNamesSearch', getNamesSearch)


module.exports = {
    webRouter
}