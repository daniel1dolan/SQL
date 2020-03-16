const express = require("express");
const session = require("express-session");
const cookieParser = require("cookie-parser");
const app = express();

app.use(cookieParser());
app.use(
  session({
    secret: "my dog",
    cookie: { secure: false }
  })
);

app.get("/", (req, res) => {
  //session data can be accessed from the request
  req.session.testGreeting = "hello world";

  res.send("testing");
  //   var sessionData = req.session;
});

app.get("/test", (req, res) => {
  res.send(req.session.testGreeting);
});

app.listen(3001, () => {
  console.log("listening on port 3001");
});
