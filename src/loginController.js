const db = require("./../db");
const jwt = require("jsonwebtoken");
const bcrypt = require("bcrypt");
const config = require("./../config");

const secretKey = config.jwtToken.tokenSecret;
const saltRounds = 10;

const registration = async (req, res) => {
  const {
    name,
    email,
    password,
    username,
    gender,
    phone_number,
    nationality,
    role_exp,
    area,
  } = req.body;
  try {
    // Hash the password
    const passwordHash = await bcrypt.hash(password, saltRounds);
    // Store the username and hashed password in the database
    await db.query(
      "INSERT INTO users (name, password, email,username,gender,phone_number,nationality,role_exp,area) VALUES (?, ?, ?,?,?,?,?,?,?)",
      [
        name,
        passwordHash,
        email,
        username,
        gender,
        phone_number,
        nationality,
        role_exp,
        area,
      ]
    );

    res.json({ message: "User registered successfully" });
  } catch (error) {
    console.error("Error registering user:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

const login = async (req, res) => {
  const { username, password } = req.body;
  try {
    const result = await new Promise((resolve, reject) => {
      db.query(
        "SELECT * FROM users WHERE username = ?",
        [username],
        (err, result, fields) => {
          if (err) {
            reject(err);
          } else {
            resolve(result);
          }
        }
      );
    });
    if (result.length === 0) {
      return res.status(401).json({ error: "Invalid credentials" });
    }

    if (result && result.length > 0) {
      const user = result[0];
      const hashedPassword = user.password;
      const passwordMatch = await bcrypt.compare(password, hashedPassword);
      if (!passwordMatch) {
        return res.status(401).json({ error: "Invalid credentials" });
      }
      const token = jwt.sign({ username }, secretKey, { expiresIn: "1h" });
      user.token = token;
      res.json(user);
      // ... rest of your code
    }
  } catch (error) {
    console.error("Error fetching user by email:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

module.exports = { registration, login };
