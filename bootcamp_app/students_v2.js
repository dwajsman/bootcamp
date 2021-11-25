const { Pool } = require('pg');

const pool = new Pool({
  user: '/',
  password: '/',
  host: '/',
  database: '/'
});

const myCohort = process.argv[2];
const myLimit = process.argv[3];


pool.query(`
SELECT students.id AS student_id, students.name AS name, cohorts.name AS cohort
FROM students
JOIN cohorts
  ON students.cohort_id = cohorts.id
WHERE cohorts.name LIKE '%${myCohort}%'
LIMIT ${myLimit};
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
  })
})
.catch(err => console.error('query error', err.stack));




// // .then(res => {
// //   console.log(res.rows);
// // })
