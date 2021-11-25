const { Pool } = require('pg');

const pool = new Pool({
  user: '/',
  password: '/',
  host: '/',
  database: '/'
});

// const myCohort = process.argv[2];
// const myLimit = process.argv[3];


pool.query(`
SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02';
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohort}: ${user.teacher}`);
  })
})
.catch(err => console.error('query error', err.stack));
