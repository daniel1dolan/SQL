const express = require("express");
const router = express.Router();
let db = require("../models/database");

router.get("/dishes", (req, res) => {
  db.query("SELECT * FROM restaurants").then(results => {
    //results is an array of objects
    res.render("dishes", {
      dishes: results
    });
  });
});

module.exports = router;
