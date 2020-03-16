const express = require("express");
const app = express();
const bodyParser = require("body-parser");
const bcrypt = require("bcryptjs");
let db = require("./models");

app.set("view engine", "ejs");
app.use(express.static("public"));

app.use(require("./routes/"));
app.use(require("./routes/blogs.js"));
app.use(require("./routes/editblogs.js"));

app.use(bodyParser.urlencoded({ extended: false }));

//node recieves a request ==> middleware => request, response
app.get("/login", (req, res) => {
  res.render("login");
});
app.post("/login", (req, res) => {
  let username = req.body.username;
  let password = req.body.password;

  let passwordEncrypted = bcrypt.hashSync(password, 8);

  db.users
    .findAll({ where: { username: username } })
    .then(results => {
      if (results.password == passwordEncrypted) {
        res.send("login successfull");
      }
    })
    .catch(err => {
      console.log(err);
      res.send("user not found");
    });

  // res.send("post login");
});

app.get("/registration", (req, res) => {
  let error = req.query.error;
  let err = "hidden";
  if (error) {
    err = "visible";
  }
  res.render("registration", {
    error: err
  });
});
app.post("/registration", (req, res) => {
  //encrypt the password
  //add info to the database
  let username = req.body.username;
  let password = req.body.password;
  let email = req.body.email;

  // username is not yet used
  let passwordEncrypted = bcrypt.hashSync(password, 8);

  db.users
    .create({
      username: username,
      password: passwordEncrypted,
      email: email
    })
    .then(user => {
      console.log(user);
      // res.send("registration posted");
      res.redirect("/login");
    })
    .catch(error => {
      res.redirect("/registration?error=visible");
    });
});

app.listen(3000, () => {
  console.log("Listening on 3000");
});
