const { connection } = require("../database/config")

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
        res.
            json({
                data: 'Email already exists! Try again with another email.'
            })
            .status(200)
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

module.exports = {
    register
}