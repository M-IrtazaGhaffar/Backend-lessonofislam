const JWT = require("jsonwebtoken");
require("dotenv").config();

const generatePassToken = async (email) => {
  const token = await JWT.sign(
    {
      email: email,
      date: new Date(),
    },
    process.env.SECRET,
    {
      expiresIn: 60 * 2,
    }
  );
  return token;
};

const checkPassToken = async (token) => {
  try {
    const result = await JWT.verify(token, process.env.SECRET);
    return true;
  } catch (error) {
    return false;
  }
};

module.exports = {
  generatePassToken,
  checkPassToken,
};
