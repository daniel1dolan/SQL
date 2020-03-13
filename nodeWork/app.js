const promise = require("bluebird");

let initOptions = {
  promiseLib: promise
};

let config = {
  host: "localhost",
  port: 5432,
  database: "testDBNode",
  user: "postgres"
};

//load and init pg-promise

let pgp = require("pg-promise")(initOptions);
let db = pgp(config);
// console.log(db);

// db.query("SELECT * FROM restaurant WHERE category='Fast Food'").then(
//   results => {
//     console.log(results);
//   }
// );

// db.result("INSERT INTO pgSample VALUES (DEFAULT, 'Kazim', 'Chicago');").then(
//   result => {
//     console.log(result);
//   }
// );

// db.one("INSERT INTO pgSample VALUES (DEFAULT, 'Alex', 'Rochestor');").then(
//   result => {
//     console.log("record was inserted");
//   }
// );

// db.query("SELECT * FROM pgSample").then(result => {
//   result.forEach(person => {
//     console.log(person.name);
//   });
// });

// db.one(
//   "INSERT INTO pgSample VALUES (DEFAULT, 'Alina', 'Moscow') RETURNING id"
// ).then(result => {
//   console.log(result);
//   db.query(`SELECT * FROM pgSample WHERE id=${result.id}`).then(results => {
//     console.log(results);
//   });
// });

db.result("INSERT INTO pgSample VALUES (DEFAULT, $1, $2)", [
  "Alina",
  "Moscow"
]).then(result => {
  console.log(result);
  //   db.query(`SELECT * FROM pgSample WHERE id=${result.id}`).then(results => {
  //     console.log(results);
  //   });
});
