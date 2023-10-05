const { checkToken, generateToken } = require("./token")

const authJSON = async (req, res, next) => {
    const token = req.token 
    if (await checkToken(token)) next()
    else res
        .status(401)
        .json("UnAuthorized!")
}

module.exports = {
    authJSON
}