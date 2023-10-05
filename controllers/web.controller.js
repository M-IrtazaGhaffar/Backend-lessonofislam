const { connection } = require("../database/config")

// Duas
const getAllDuas = async (req, res) => {
    connection.query('SELECT * FROM `duas` ORDER BY `Title` ASC', (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured'
                })
        else
            res
                .status(200)
                .json({
                    data: result
                })
    })
}

const getDuaDetails = async (req, res) => {
    const r1 = await new Promise((resolve, reject) => {
        connection.query(`SELECT * FROM duas WHERE ID = ${req.body.id}`, (err, result) => {
            if (err)
                res
                    .status(500)
                    .json({
                        message: 'Some Error Occured'
                    })
            else resolve(result)
        })
    })

    connection.query(`SELECT * FROM duaspoints WHERE DID = ${req.body.id}`, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured'
                })
        else
            res
                .status(200)
                .json({
                    dua: r1[0],
                    data: result
                })
    })
}

const getDuaSearch = async (req, res) => {
    connection.query(`SELECT * FROM duas WHERE Title LIKE '%${req.body.search}%'`, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured',
                    error: err
                })
        else
            res
                .status(200)
                .json({
                    data: result
                })
    })
}

const getDuaRecent = async (req, res) => {
    connection.query(`SELECT * FROM duas ORDER BY ID DESC LIMIT 5`, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured',
                    error: err
                })
        else
            res
                .status(200)
                .json({
                    data: result
                })
    })
}

// Stories

const getAllStories = async (req, res) => {
    connection.query(`SELECT stories.ID, stories.Date, stories.Title, stories.Image, stories.Desc, tags.Keyword FROM stories JOIN tags ON tags.ID = stories.TID;
    `, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured'
                })
        else
            res
                .status(200)
                .json({
                    data: result
                })
    })
}

const getStoryDetails = async (req, res) => {
    connection.query(`SELECT * FROM stories WHERE ID = ${req.body.id}`, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured'
                })
        else
            res
                .status(200)
                .json({
                    data: result
                })
    })
}

const getStorySearch = async (req, res) => {
    connection.query(`SELECT * FROM stories WHERE Title LIKE '%${req.body.search}%'`, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured',
                    error: err
                })
        else
            res
                .status(200)
                .json({
                    data: result
                })
    })
}

const getStoryRecent = async (req, res) => {
    connection.query(`SELECT *, tags.Keyword FROM stories JOIN tags ON tags.ID = stories.TID ORDER BY ID DESC LIMIT 9`, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured',
                    error: err
                })
        else
            res
                .status(200)
                .json({
                    data: result
                })
    })
}

const getStoryHome = async (req, res) => {
    const r1 = await new Promise((resolve, reject) => {
        connection.query(`SELECT * FROM stories WHERE TID = 2`, (err, result) => {
            if (err)
                res.
                    json({
                        message: 'Some Error Occured',
                        error: err
                    })
                    .status(500)
            else resolve(result)
        })
    })
    const r2 = await new Promise((resolve, reject) => {
        connection.query(`SELECT * FROM stories WHERE TID = 3`, (err, result) => {
            if (err)
                res.
                    json({
                        message: 'Some Error Occured',
                        error: err
                    })
                    .status(500)
            else resolve(result)
        })
    })
    const r3 = await new Promise((resolve, reject) => {
        connection.query(`SELECT * FROM stories WHERE TID = 6`, (err, result) => {
            if (err)
                res
                    .status(500)
                    .json({
                        message: 'Some Error Occured',
                        error: err
                    })
            else resolve(result)
        })
    })
    res
        .status(200)
        .json({
            "data": [
                {
                    'name': 'Revertness',
                    'dataSet': r1
                },
                {
                    'name': 'Prophets',
                    'dataSet': r2
                },
                {
                    'name': 'Sahabas',
                    'dataSet': r3
                }
            ]
        })
}

//Blogs

const getAllBlogs = async (req, res) => {
    connection.query(`SELECT *, tags.Keyword FROM blogs JOIN tags ON tags.ID = blogs.TID;
    `, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured'
                })
        else
            res
                .status(200)
                .json({
                    data: result
                })
    })
}

const getBlogDetails = async (req, res) => {
    connection.query(`SELECT * FROM blogs WHERE ID = ${req.body.id}`, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured'
                })
        else
            res
                .status(200)
                .json({
                    data: result
                })
    })
}

const getBlogSearch = async (req, res) => {
    connection.query(`SELECT * FROM blogs WHERE Title LIKE '%${req.body.search}%'`, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured',
                    error: err
                })
        else
            res
                .status(200)
                .json({
                    data: result
                })
    })
}

const getBlogRecent = async (req, res) => {
    connection.query(`SELECT *, tags.Keyword FROM blogs JOIN tags ON tags.ID = blogs.TID ORDER BY ID DESC LIMIT 5`, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured',
                    error: err
                })
        else
            res
                .status(200)
                .json({
                    data: result
                })
    })
}

const getBlogsHome = async (req, res) => {
    const r1 = await new Promise((resolve, reject) => {
        connection.query(`SELECT * FROM blogs WHERE TID = 2`, (err, result) => {
            if (err)
                res.
                    json({
                        message: 'Some Error Occured',
                        error: err
                    })
                    .status(500)
            else resolve(result)
        })
    })
    const r2 = await new Promise((resolve, reject) => {
        connection.query(`SELECT * FROM blogs WHERE TID = 3`, (err, result) => {
            if (err)
                res.
                    json({
                        message: 'Some Error Occured',
                        error: err
                    })
                    .status(500)
            else resolve(result)
        })
    })
    const r3 = await new Promise((resolve, reject) => {
        connection.query(`SELECT * FROM blogs WHERE TID = 6`, (err, result) => {
            if (err)
                res
                    .status(500)
                    .json({
                        message: 'Some Error Occured',
                        error: err
                    })
            else resolve(result)
        })
    })
    res
        .status(200)
        .json({
            "data": [
                {
                    'name': 'Revertness',
                    'dataSet': r1
                },
                {
                    'name': 'Prophets',
                    'dataSet': r2
                },
                {
                    'name': 'Sahabas',
                    'dataSet': r3
                }
            ]
        })
}

// Zikr

const getAllZikr = async (req, res) => {
    connection.query(`SELECT * FROM zikr`, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured'
                })
        else
            res
                .status(200)
                .json({
                    data: result
                })
    })
}

const getZikrDetails = async (req, res) => {
    const r1 = await new Promise((resolve, reject) => {
        connection.query(`SELECT * FROM zikr WHERE ID = ${req.body.id}`, (err, result) => {
            if (err)
                res
                    .status(500)
                    .json({
                        message: 'Some Error Occured'
                    })
            else resolve(result)
        })
    })

    connection.query(`SELECT * FROM zikrpoints WHERE ZID = ${req.body.id}`, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured'
                })
        else
            res
                .status(200)
                .json({
                    dua: r1[0],
                    data: result
                })
    })
}

const getZikrSearch = async (req, res) => {
    connection.query(`SELECT * FROM zikr WHERE Title LIKE '%${req.body.search}%'`, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured',
                    error: err
                })
        else
            res
                .status(200)
                .json({
                    data: result
                })
    })
}

const getZikrRecent = async (req, res) => {
    connection.query(`SELECT * FROM zikr ORDER BY ID DESC LIMIT 5`, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured',
                    error: err
                })
        else
            res
                .status(200)
                .json({
                    data: result
                })
    })
}

// Names

const getAllNames = async (req, res) => {
    connection.query(`SELECT * FROM namesofallah`, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured'
                })
        else
            res
                .status(200)
                .json({
                    data: result
                })
    })
}

const getNamesDetails = async (req, res) => {
    connection.query(`SELECT * FROM namesofallah WHERE ID = ${req.body.id}`, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured'
                })
        else
            res
                .status(200)
                .json({
                    data: result[0]
                })
    })
}

const getNamesSearch = async (req, res) => {
    connection.query(`SELECT * FROM namesofallah WHERE Translitration LIKE '%${req.body.search}%'`, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured',
                    error: err
                })
        else
            res
                .status(200)
                .json({
                    data: result
                })
    })
}

const getNamesRecent = async (req, res) => {
    connection.query(`SELECT * FROM namesofallah ORDER BY ID DESC LIMIT 5`, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured',
                    error: err
                })
        else
            res
                .status(200)
                .json({
                    data: result
                })
    })
}

// Contact

const contact = async (req, res) => {
    connection.query(`INSERT INTO contact (Name, Email, Message) VALUES ('${req.body.name}', '${req.body.email}', '${req.body.message}')`, (err, result) => {
        if (err)
            res
                .status(500)
                .json({
                    message: 'Some Error Occured',
                    error: err
                })
        else
            res
                .status(200)
                .json({
                    data: 'Form Submitted'
                })
    })
}

// Donate Us
const donate = async (req, res) => {
    try {
        const { } = req.body;
        res
            .status(200)
            .json("Payment Verified!")
    } catch (error) {
        res
            .status(500)
            .json("Some Error Ocurred")
    }
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
    getBlogsHome,
    getDuaRecent,
    getBlogRecent,
    getStoryRecent,
    getStoryHome,
    getZikrDetails,
    getZikrRecent,
    getZikrSearch,
    getAllZikr,
    getNamesDetails,
    getNamesRecent,
    getAllNames,
    getNamesSearch,
    contact,
    donate
}