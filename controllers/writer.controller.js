const { connection } = require("../database/config");
const { changePasswordTemplate } = require("../mail/changePasswordTemplate");
const { sendMailAdminLogin } = require("../mail/loginTemplate");
const { sendMail } = require("../mail/registerTemplate");
const { checkHash, generateHash } = require("../middlewares/bcrypt");
const { generatePassToken } = require("../middlewares/changepassToken");
const { generateToken, decodeToken } = require("../middlewares/token");

const register = async (req, res) => {
  const r1 = await new Promise((resolve, reject) => {
    connection.query(
      `SELECT * FROM users WHERE Email = '${req.body.email}'`,
      (err, result) => {
        if (err)
          res.status(500).json({
            message: "Some Error Occured",
            error: err,
          });
        else resolve(result);
      }
    );
  });
  if (r1.length !== 0) {
    res.status(200).json({
      data: "Email already exists! Try again with another email.",
    });
    return;
  }
  const hash = await generateHash(req.body.password);
  connection.query(
    `INSERT INTO users (Name, Email, Password) VALUES ('${req.body.name}', '${req.body.email}', '${hash}')`,
    async (err, result) => {
      if (err)
        res.status(500).json({
          message: "Some Error Occured",
          error: err,
        });
      else {
        console.log(result);
        await sendMail(req.body.name, req.body.email);
        res.status(200).json({
          data: "User Registered!",
        });
      }
    }
  );
};

const login = async (req, res) => {
  const { email, password } = req.body;
  if (email === "" || password === "") {
    res.status(200).json({
      data: "No Email or Password was found!",
    });
    return;
  }
  const r1 = await new Promise((resolve, reject) => {
    connection.query(
      `SELECT users.ID, users.Email, users.Password FROM users JOIN writers on writers.UID = users.ID WHERE users.Email = '${email}';`,
      (err, result) => {
        if (err)
          res.status(500).json({
            message: "Some Error Occured",
            error: err,
          });
        else resolve(result);
      }
    );
  });
  if (r1.length === 0) {
    res.status(401).json({
      message:
        "Your Email is either not approved for writing or your email don't exist!",
    });
  }
  await sendMailAdminLogin(r1[0].Name, r1[0].Email);
  if (await checkHash(password, r1[0].Password)) {
    const token = await generateToken(email);
    res.status(200).json({
      data: r1[0].ID,
      token: token,
    });
  } else
    res.status(401).json({
      message: "Wrong Password",
    });
};

const createBlog = async (req, res) => {
  const { uid, title, image, descr, detail, tid } = req.body;
  connection.query(
    `INSERT INTO blogs (UID, Title, Image, Descr, Detail, TID) VALUES (?, ?, ?, ?, ?, ?)`,
    [uid, title, image, descr, detail, tid],
    (err, result) => {
      if (err)
        res.status(500).json({
          message: "Some Error Occured",
          error: err,
        });
      else
        res.status(200).json({
          data: "Data Inserted Successfully!",
        });
    }
  );
};

const deleteBlog = async (req, res) => {
  const { id } = req.body;
  connection.query(
    `DELETE FROM blogs WHERE blogs.ID = '${id}'`,
    (err, result) => {
      if (err)
        res.status(500).json({
          message: "Some Error Occured",
          error: err,
        });
      else
        res.status(200).json({
          data: "Deleted Successfully!",
        });
    }
  );
};

const editBlog = async (req, res) => {
  const { id, title, descr, detail } = req.body;
  console.log(req.body);
  connection.query(
    `UPDATE blogs SET Title = ?, Descr = ?, Detail = ? WHERE blogs.ID = ${id}`,
    [title, descr, detail],
    (err, result) => {
      if (err)
        res.status(500).json({
          message: "Some Error Occured",
          error: err,
        });
      else
        res.status(200).json({
          data: "Edit Saved Successfully!",
        });
    }
  );
};

const fetchBlog = async (req, res) => {
  const { id } = req.body;
  connection.query(`SELECT * FROM blogs WHERE ID = ${id}`, (err, result) => {
    if (err)
      res.status(500).json({
        message: "Some Error Occured",
        error: err,
      });
    else
      res.status(200).json({
        data: result[0],
      });
  });
};

const fetchAllBlog = async (req, res) => {
  console.log(req.body);
  const { uid } = req.body;
  connection.query(
    `SELECT blogs.ID, blogs.Title, blogs.Date FROM blogs WHERE UID = ${uid}`,
    (err, result) => {
      if (err)
        res.status(500).json({
          message: "Some Error Occured",
          error: err,
        });
      else
        res.status(200).json({
          data: result,
        });
    }
  );
};

const fetchAllTags = async (req, res) => {
  connection.query(`SELECT * FROM tags`, (err, result) => {
    if (err)
      res.status(500).json({
        message: "Some Error Occured",
        error: err,
      });
    else
      res.status(200).json({
        data: result,
      });
  });
};

const fetchUser = async (req, res) => {
  const { id } = req.body;
  connection.query(
    `SELECT * FROM users WHERE users.ID = "${id}";`,
    (err, result) => {
      if (err)
        res.status(500).json({
          message: "Some Error Occured",
          error: err,
        });
      else
        res.status(200).json({
          data: result[0],
        });
    }
  );
};

const changePassword = async (req, res) => {
  const { email } = req.body;
  if (email === "")
    res.status(500).json({
      message: "No data was provided!",
    });
  const r1 = await new Promise((resolve, reject) => {
    connection.query(
      `SELECT users.ID, users.Name, users.Email, users.Password FROM users JOIN writers on writers.UID = users.ID WHERE users.Email = '${email}';`,
      (err, result) => {
        if (err)
          res.status(500).json({
            message: "Some Error Occured",
            error: err,
          });
        else resolve(result);
      }
    );
  });
  if (r1.length === 0) {
    res.status(401).json({
      message:
        "Your Email is either not approved for writing or your email don't exist!",
    });
  }
  const token = await generatePassToken(email);
  const mail = changePasswordTemplate(r1[0].Name, email, token);
  if (mail)
    res.status(200).json({
      data: "Please check out your email!",
    });
  else
    res.status(500).json({
      message: "Some Error Occured",
    });
};

const updatePassword = async (req, res) => {
  const { password, token } = req.body;
  const { email } = await decodeToken(token);
  if (password === "" || email === "")
    res.status(500).json({
      message: "No data was provided!",
    });
  const hash = await generateHash(password);
  const r1 = await new Promise((resolve, reject) => {
    connection.query(`UPDATE users SET Password = '${hash}' WHERE users.Email = '${email}'`, (err, result) => {
      if (err)
        res.status(500).json({
          message: "Some Error Occured",
          error: err,
        });
      else resolve(result);
    });
  });
  // Send email when the password is changed!
};

module.exports = {
  register,
  login,
  deleteBlog,
  createBlog,
  editBlog,
  fetchBlog,
  fetchAllBlog,
  fetchAllTags,
  fetchUser,
  changePassword,
  updatePassword
};
