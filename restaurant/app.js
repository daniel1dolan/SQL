const express = require("express");
const app = express();

app.set("view engine", "ejs");

app.use(express.static("public"));

//wire up controllers to take page requests and render pages.
app.use(require("./controllers/dishes"));
app.use(require("./controllers/dishForm"));

app.listen(3000, () => {
  console.log("listening on port 3000");
});
