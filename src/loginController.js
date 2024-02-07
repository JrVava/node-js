const db = require("./../db");
const jwt = require("jsonwebtoken");
const bcrypt = require("bcrypt");
const config = require("./../config");

const secretKey = config.jwtToken.tokenSecret;
const saltRounds = 10;

const registration = async (req, res) => {
  const { name, email, password } = req.body;
  try {
    // Hash the password
    const passwordHash = await bcrypt.hash(password, saltRounds);
    // Store the username and hashed password in the database
    await db.query(
      "INSERT INTO users (name, password, email) VALUES (?, ?, ?)",
      [name, passwordHash, email]
    );

    res.json({ message: "User registered successfully" });
  } catch (error) {
    console.error("Error registering user:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

const login = async (req, res) => {
  const { email, password } = req.body;
  try {
    console.log(db);
    return;
    const result = await db.query(
      "SELECT * FROM users",
      function (err, result, fields) {
        if (err) throw err;
        console.log(result);
      }
    );
    console.log(result);
    return;
    if (result && result.length > 0) {
      const user = result[0];
      console.log("User found:", user);
      // ... rest of your code
    } else {
      console.log("User not found");
      res.status(404).json({ error: "User not found" });
    }
  } catch (error) {
    console.error("Error fetching user by email:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

module.exports = { registration, login };
