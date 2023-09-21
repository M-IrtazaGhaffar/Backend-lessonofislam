const { connection } = require("../database/config")

// Duas
const getAllDuas = async (req, res) => {
    connection.query('SELECT * FROM `duas` ORDER BY `Title` ASC', (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured'
                })
                .status(500)
        else
            res.
                json({
                    data: result
                })
                .status(200)
    })
}

const getDuaDetails = async (req, res) => {
    const r1 = await new Promise((resolve, reject) => {
        connection.query(`SELECT * FROM duas WHERE ID = ${req.body.id}`, (err, result) => {
            if (err)
                res.
                    json({
                        message: 'Some Error Occured'
                    })
                    .status(500)
            else resolve(result)
        })
    })

    connection.query(`SELECT * FROM duaspoints WHERE DID = ${req.body.id}`, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured'
                })
                .status(500)
        else
            res.
                json({
                    dua: r1[0],
                    data: result
                })
                .status(200)
    })
}

const getDuaSearch = async (req, res) => {
    connection.query(`SELECT * FROM duas WHERE Title LIKE '%${req.body.search}%'`, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured',
                    error: err
                })
                .status(500)
        else
            res.
                json({
                    data: result
                })
                .status(200)
    })
}

const getDuaRecent = async (req, res) => {
    connection.query(`SELECT * FROM duas ORDER BY ID DESC LIMIT 5`, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured',
                    error: err
                })
                .status(500)
        else
            res.
                json({
                    data: result
                })
                .status(200)
    })
}

// Stories

const getAllStories = async (req, res) => {
    connection.query(`SELECT *, tags.Keyword FROM stories JOIN tags ON tags.ID = stories.TID;
    `, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured'
                })
                .status(500)
        else
            res.
                json({
                    data: result
                })
                .status(200)
    })
}

const getStoryDetails = async (req, res) => {
    connection.query(`SELECT * FROM stories WHERE ID = ${req.body.id}`, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured'
                })
                .status(500)
        else
            res.
                json({
                    data: result
                })
                .status(200)
    })
}

const getStorySearch = async (req, res) => {
    connection.query(`SELECT * FROM stories WHERE Title LIKE '%${req.body.search}%'`, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured',
                    error: err
                })
                .status(500)
        else
            res.
                json({
                    data: result
                })
                .status(200)
    })
}

const getStoryRecent = async (req, res) => {
    connection.query(`SELECT *, tags.Keyword FROM stories JOIN tags ON tags.ID = stories.TID ORDER BY ID DESC LIMIT 5`, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured',
                    error: err
                })
                .status(500)
        else
            res.
                json({
                    data: result
                })
                .status(200)
    })
}

//Blogs

const getAllBlogs = async (req, res) => {
    connection.query(`SELECT *, tags.Keyword FROM blogs JOIN tags ON tags.ID = blogs.TID;
    `, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured'
                })
                .status(500)
        else
            res.
                json({
                    data: result
                })
                .status(200)
    })
}

const getBlogDetails = async (req, res) => {
    connection.query(`SELECT * FROM blogs WHERE ID = ${req.body.id}`, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured'
                })
                .status(500)
        else
            res.
                json({
                    data: result
                })
                .status(200)
    })
}

const getBlogSearch = async (req, res) => {
    connection.query(`SELECT * FROM blogs WHERE Title LIKE '%${req.body.search}%'`, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured',
                    error: err
                })
                .status(500)
        else
            res.
                json({
                    data: result
                })
                .status(200)
    })
}

const getBlogRecent = async (req, res) => {
    connection.query(`SELECT *, tags.Keyword FROM blogs JOIN tags ON tags.ID = blogs.TID ORDER BY ID DESC LIMIT 5`, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured',
                    error: err
                })
                .status(500)
        else
            res.
                json({
                    data: result
                })
                .status(200)
    })
}

// Zikr

const getAllZikr = async (req, res) => {
    connection.query(`SELECT * FROM zikr`, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured'
                })
                .status(500)
        else
            res.
                json({
                    data: result
                })
                .status(200)
    })
}

const getZikrDetails = async (req, res) => {
    const r1 = await new Promise((resolve, reject) => {
        connection.query(`SELECT * FROM zikr WHERE ID = ${req.body.id}`, (err, result) => {
            if (err)
                res.
                    json({
                        message: 'Some Error Occured'
                    })
                    .status(500)
            else resolve(result)
        })
    })

    connection.query(`SELECT * FROM zikrpoints WHERE ZID = ${req.body.id}`, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured'
                })
                .status(500)
        else
            res.
                json({
                    dua: r1[0],
                    data: result
                })
                .status(200)
    })
}

const getZikrSearch = async (req, res) => {
    connection.query(`SELECT * FROM zikr WHERE Title LIKE '%${req.body.search}%'`, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured',
                    error: err
                })
                .status(500)
        else
            res.
                json({
                    data: result
                })
                .status(200)
    })
}

const getZikrRecent = async (req, res) => {
    connection.query(`SELECT * FROM zikr ORDER BY ID DESC LIMIT 5`, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured',
                    error: err
                })
                .status(500)
        else
            res.
                json({
                    data: result
                })
                .status(200)
    })
}

// Names

const getAllNames = async (req, res) => {
    connection.query(`SELECT * FROM namesofallah`, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured'
                })
                .status(500)
        else
            res.
                json({
                    data: result
                })
                .status(200)
    })
}

const getNamesDetails = async (req, res) => {
    connection.query(`SELECT * FROM namesofallah WHERE ID = ${req.body.id}`, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured'
                })
                .status(500)
        else
            res.
                json({
                    data: result[0]
                })
                .status(200)
    })
}

const getNamesSearch = async (req, res) => {
    connection.query(`SELECT * FROM namesofallah WHERE Translitration LIKE '%${req.body.search}%'`, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured',
                    error: err
                })
                .status(500)
        else
            res.
                json({
                    data: result
                })
                .status(200)
    })
}

const getNamesRecent = async (req, res) => {
    connection.query(`SELECT * FROM namesofallah ORDER BY ID DESC LIMIT 5`, (err, result) => {
        if (err)
            res.
                json({
                    message: 'Some Error Occured',
                    error: err
                })
                .status(500)
        else
            res.
                json({
                    data: result
                })
                .status(200)
    })
}

module.exports = {
    getAllDuas,
    getDuaDetails,
    getAllStories,
    getStoryDetails,
    getAllBlogs,
    getBlogDetails,
    getDuaSearch,
    getStorySearch,
    getBlogSearch,
    getDuaRecent,
    getBlogRecent,
    getStoryRecent,
    getZikrDetails,
    getZikrRecent,
    getZikrSearch,
    getAllZikr,
    getNamesDetails,
    getNamesRecent,
    getAllNames,
    getNamesSearch
}