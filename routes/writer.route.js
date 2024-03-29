const express = require("express");
const {
  register,
  login,
  deleteBlog,
  createBlog,
  fetchBlog,
  fetchAllBlog,
  fetchAllTags,
  editBlog,
  fetchUser,
  changePassword,
  updatePassword,
} = require("../controllers/writer.controller");
const { authJSON } = require("../middlewares/auth");
const writerRuouter = express.Router();

writerRuouter
  // --- POST ---
  // No Auth
  .post("/register", register)
  .post("/login", login)
  // Auth
  .post("/fetchAllTags", authJSON, fetchAllTags)
  .post("/createBlog", authJSON, createBlog)
  .post("/fetchBlog", authJSON, fetchBlog)
  .post("/fetchAllBlog", authJSON, fetchAllBlog)
  .post("/deleteBlog", authJSON, deleteBlog)
  .post("/editBlog", authJSON, editBlog)
  .post("/fetchUser", authJSON, fetchUser)
  .post("/updatePassword", authJSON, updatePassword)
  .post("/changePassword", changePassword);

module.exports = {
  writerRuouter,
};
