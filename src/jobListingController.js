const db = require("./../db");
const jobListing = async (req, res) => {
  try {
    const id = req.user.user.id;
    db.query(`SELECT * FROM job`, (error, data) => {
      //   console.log(data);
      res.status(200).json({ jobs: data });
    });
    // console.log(req);
  } catch (error) {
    return res.status(401).json({ error: "Something went wrong." });
  }
};
module.exports = { jobListing };
