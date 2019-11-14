const { Pool } = require('pg');
const cohortName = process.argv[2];
const limit = process.argv[3] || 5;
// Store all potentially malicious values in an array
const values = [`%${cohortName}%`, limit];

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT students.id AS student_id, students.name AS name, cohort_id, cohorts.name AS cohort
FROM students
JOIN cohorts
ON cohorts.id = cohort_id 
WHERE cohorts.name LIKE $1
LIMIT $2;
`, values)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.name} had an id of ${user.student_id} and was in the ${user.cohort} cohort`);
    });
  
  })
  .catch(err => console.error('query error', err.stack));


