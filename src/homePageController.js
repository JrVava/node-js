const db = require("./../db");

const index = async (req, res) => {
  console.log(db.connection);
};

module.exports = { index };
