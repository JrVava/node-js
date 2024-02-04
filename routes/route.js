const express = require("express");
const router = express.Router();
const { index } = require("./../src/homePageController");
router.route("/home").get(index);

module.exports = router;
