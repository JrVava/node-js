const express = require("express");
const router = express.Router();
const { verifyToken } = require("../middleware/authMiddleware");

const {
  create,
  update,
  deleteJob,
  getJobs,
} = require("./../src/jobController");
const {
  registration,
  login,
  employerRegistration,
} = require("./../src/loginController");

router.use(
  ["/job/create", "/job/update", "/job/delete/:id", "/jobs"],
  verifyToken
);

router.route("/job/create").post(create);
router.route("/job/update").put(update);
router.route("/job/delete/:id").delete(deleteJob);
router.route("/jobs").get(getJobs);

router.route("/sign-up").post(registration);
router.route("/employer/sign-up").post(employerRegistration);
router.route("/sign-in").post(login);

module.exports = router;
