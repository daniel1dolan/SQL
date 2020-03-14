let crypto = require("crypto");
let pbkdf2 = require("pbkdf2");

let password = "mysecurepassword";

let salt = crypto.randomBytes(20).toString("hex");

let key = pbkdf2.pbkdf2Sync(password, salt, 6969, 256, "sha256");

let hash = key.toString("hex");

//the hash will be stored in the database

//the thing below says what generated our key

let stored_password = `pbkdf2_sha256$6969$${salt}$${hash}`;

//1. validing user password

let login = "mysecurepassword";

let password_parts = stored_password.split("$");

// password parts will have the array form of stored_password ['mysecurepassword', '6969', 'salt', 'hash']

let keyNewLogin = pbkdf2.pbkdf2Sync(
  login,
  password_parts[2],
  parseInt(password_parts[1]),
  256,
  "sha256"
);

let hashNewLog = keyNewLogin.toString("hex");

if (hashNewLog == password_parts[3]) {
  console.log("welcome user");
  console.log(hashNewLog);
} else {
  console.log("password incorrect");
}
