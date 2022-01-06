
const {Pool} = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT DISTINCT t.name AS teacher, c.name AS cohort
FROM assistance_requests AS ar 
JOIN teachers AS t ON ar.teacher_id = t.id
JOIN students AS s ON ar.student_id = s.id
JOIN cohorts AS c ON s.cohort_id = c.id
WHERE c.name = '${process.argv[2] || 'JUL02'}'
ORDER BY teacher;
`)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort} : ${row.teacher} `);
  })
}).catch(err => console.error('query error', err.stack));