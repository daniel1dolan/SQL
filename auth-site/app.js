const express = require("express");
const app = express();
const bodyParser = require("body-parser");
const bcrypt = require("bcryptjs");
let db = require("./models");
const session = require("express-session");
const cookieParser = require("cookie-parser");

app.set("view engine", "ejs");
app.use(express.static("public"));

app.use(cookieParser());
app.use(
  session({
    secret: "my dog",
    cookie: { secure: false, maxAge: 14 * 24 * 60 * 60 * 1000 }
  })
);

app.use(require("./routes/"));
app.use(require("./routes/blogs.js"));
app.use(require("./routes/editblogs.js"));

app.use(bodyParser.urlencoded({ extended: false }));

let auth = (req, res, next) => {
  // if user is logged in,
  //execute next() function
  //otherwise, redirect user to /login
  if (req.session.userid) {
    next();
  } else {
    res.redirect("/login");
  }
};

//node recieves a request ==> middleware => request, response
app.get("/login", (req, res) => {
  res.render("login");
});
app.post("/login", (req, res) => {
  let username = req.body.username;
  let password = req.body.password;

  db.users
    .findAll({ where: { username: username } })
    .then(results => {
      console.log(results[0].password);

      bcrypt.compare(password, results[0].password, (err, response) => {
        if (response) {
          req.session.userid = username;
          res.redirect("/protected");
        } else {
          console.log(err);
          res.redirect("/error");
        }
      });
    })
    .catch(err => {
      console.log(err);
      res.send("user not found");
    });
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

app.get("/error", (req, res) => {
  res.send("error");
});

app.get("/protected", auth, (req, res) => {
  res.send("protected page");
  req.session.destroy(err => {
    console.log(err);
  });
});

app.listen(3000, () => {
  console.log("Listening on 3000");
});
