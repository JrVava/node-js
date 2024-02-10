const express = require("express");
const router = express.Router();
const { verifyToken } = require("../middleware/authMiddleware");

const { index } = require("./../src/homePageController");
const {
  registration,
  login,
  employerRegistration,
} = require("./../src/loginController");

router.use(["/home"], verifyToken);

router.route("/home").get(index);
router.route("/sign-up").post(registration);
router.route("/employer/sign-up").post(employerRegistration);
router.route("/sign-in").post(login);

module.exports = router;
