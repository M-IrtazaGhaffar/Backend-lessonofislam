const JWT = require("jsonwebtoken");
require("dotenv").config();

const generateToken = async (email) => {
  const token = await JWT.sign(
    {
      email: email,
      date: new Date(),
    },
    process.env.SECRET,
    {
      expiresIn: 60 * 60 * 24,
    }
  );
  return token;
};

const checkToken = async (token) => {
  try {
    const result = await JWT.verify(token, process.env.SECRET);
    return true;
  } catch (error) {
    return false;
  }
};

const decodeToken = async (token) => {
  try {
    jwt.verify(token, process.env.SECRET, (err, decoded) => {
      return decoded;
    });
  } catch (error) {
    return '';
  }
};

module.exports = {
  generateToken,
  checkToken,
  decodeToken
};
