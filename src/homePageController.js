const db = require("./../db");

const index = async (req, res) => {
  console.log("hello");
  res.status(200).json({ messae: "Hello, World!" });
};

module.exports = { index };
