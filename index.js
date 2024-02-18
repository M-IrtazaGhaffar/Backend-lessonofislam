const jwt = require("jsonwebtoken");

const token =
  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImlydGF6YWdoYWZmYXJAZ21haWwuY29tIiwiZGF0ZSI6IjIwMjMtMTEtMjJUMDE6Mzg6MDkuODc4WiIsImlhdCI6MTcwMDYxNzA4OSwiZXhwIjoxNzAwNzAzNDg5fQ.FbxKWWg_QbrgEK8sTBCJkRYoKRNGNBRNEqDJm8LE6vI";
const secret = "LessonOfIslam";

jwt.verify(token, secret, (err, decoded) => {
  if (err) {
    console.error("JWT verification failed:", err);
  } else {
    console.log("Decoded JWT:", decoded);
  }
});
