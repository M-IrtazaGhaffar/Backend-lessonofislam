const { connection } = require("../database/config")
const { checkHash, generateHash } = require("../middlewares/bcrypt")
const { generateToken } = require("../middlewares/token")

const register = async (req, res) => {
    const r1 = await new Promise((resolve, reject) => {
        connection.query(`SELECT * FROM users WHERE Email = '${req.body.email}'`, (err, result) => {
            if (err)
                res.
                    json({
                        message: 'Some Error Occured',
                        error: err
                    })
                    .status(500)
            else
                resolve(result)
        })
    })
    if (r1.length !== 0) {
        res
            .status(200)
            .json({
                data: 'Email already exists! Try again with another email.'
            })
        return;
    }
    connection.query(`INSERT INTO users (Name, Email, Password) VALUES ('${req.body.name}', '${req.body.email}', '${req.body.password}')`, (err, result) => {
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
                    data: 'User Registered!'
                })
                .status(200)
    })
}

const login = async (req, res) => {
    const { email, password } = req.body
    const r1 = await new Promise((resolve, reject) => {
        connection.query(`SELECT * FROM users WHERE Email = '${email}'`, (err, result) => {
            if (err)
                res
                    .status(500)
                    .json({
                        message: 'Some Error Occured',
                        error: err
                    })
            else
                resolve(result[0])
        })
    })
    if (await checkHash(password, r1.Password)) {
        const token = await generateToken(email)
        res
            .status(200)
            .json({
                data: token,
            })
    }
    else
        res
            .status(401)
            .json({
                message: 'Wrong Password',
            })
}

const deleteBlog = async (req, res) => {
    const { id } = req.body;
    connection.query(`DELETE FROM blogs WHERE blogs.ID = '${id}'`, (err, result) => {
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
                    data: 'Deleted Successfully!',
                })
    })
}

module.exports = {
    register,
    login,
    deleteBlog
}