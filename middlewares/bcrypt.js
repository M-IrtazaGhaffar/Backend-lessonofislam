const bcrypt = require('bcrypt')
require('dotenv').config()

const generateHash = async (password) => {
    const rounds = Number(process.env.ROUNDS);
    const hash = await bcrypt.hash(password, rounds)
    return hash;
}

const checkHash = async (password, hash) => {
    const res = await bcrypt.compare(password, hash)
    return res
}

module.exports = {
    generateHash,
    checkHash
}