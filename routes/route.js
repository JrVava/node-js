const express = require("express");
const router = express.Router();
const { index } = require("./../src/homePageController");
const { registration, login } = require("./../src/loginController");
router.route("/home").get(index);
router.route("/sign-up").post(registration);
router.route("/sign-in").post(login);

module.exports = router;
