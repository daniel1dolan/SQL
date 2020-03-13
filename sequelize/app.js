let db = require("./models");

let sequelize = db.sequelize;

db.player.findAll({ include: [{ model: db.team }] }).then(results => {
  results.forEach(record => {
    console.log(record.team.name, record.firstName, record.age);
  });
});

// db.player.findByPk(2).then(user => {
//   user.lastName = "Plaetzer";
//   user.save().then(() => {
//     console.log("record saved");
//   });
// });

// db.player
//   .create({
//     firstName: "Alex",
//     lastname: "Plaetzer",
//     age: 30,
//     teamID: 2
//   })
//   .then(result => {
//     console.log(result);
//   });

// db.team.findAll().then(results => {
//   console.log(results);
// });

// db.user.create({
//   firstName: "Austin",
//   lastName: "Denny",
//   email: "austin@g.com"
// });
// db.user.create({
//   firstName: "Jaye",
//   lastName: "Jenson",
//   email: "jaye@g.com"
// });
// db.user.create({
//   firstName: "Meryem",
//   lastName: "Komur",
//   email: "meryem@g.com"
// });
// db.user.create({
//   firstName: "Diego",
//   lastName: "River",
//   email: "diego@g.com"
// });
// db.user.findAll().then(results => {
//   results.forEach(result => {
//     console.log(`${result.firstName} ${result.lastName} ${result.email}`);
//   });
// });

// db.user.findByPk(3).then(record => {
//   console.log(record);
// });

// db.user.findAll({ where: { firstName: "Diego" } }).then(results => {
//   results.forEach(result => {
//     console.log(result.firstName, result.lastName, result.email);
//   });
// });

// db.user.destroy({ where: { id: 3 } });

// db.sequelize
//   .query("SELECT * FROM users", { type: sequelize.QueryTypes.SELECT })
//   .then(results => {
//     results.forEach(result => {
//       console.log(result.firstName, result.lastName);
//     });
//   });

// db.user.findByPk(2).then(user => {
//   user.firstName = "Mery";
//   user.save().then(() => {
//     console.log("record saved");
//   });
// });
