SELECT DISTINCT sex FROM employee;
SELECT * FROM employee
ORDER BY employee.salary DESC;

SELECT * FROM employee
LIMIT 5;

SELECT first_name AS nombre, last_name AS apellido
FROM employee;

SELECT COUNT(emp_id) FROM employee;
SELECT COUNT(DISTINCT sex) FROM employee;

SELECT AVG(employee.salary) FROM employee;

SELECT COUNT(emp_id) FROM employee
WHERE sex = 'F' AND birth_day > '1970-01-01';

SELECT SUM(salary) FROM employee;

SELECT SUM(works_with.total_sales), works_with.emp_id
FROM works_with
GROUP BY emp_id
ORDER BY SUM(works_with.total_sales) DESC;

SELECT COUNT(emp_id), sex
FROM employee
GROUP BY sex; 


SELECT * FROM employee
WHERE birth_day LIKE '____-02%';

SELECT * FROM cliente
WHERE client_name LIKE '%school%' ;

SELECT first_name, last_name, branch.branch_id, branch.barch_name FROM employee
JOIN branch
ON employee.branch_id = branch.branch_id;



SELECT first_name FROM employee
UNION 
SELECT barch_name FROM branch;

SELECT AVG(salary), sex FROM employee
GROUP BY sex;

SELECT branch.barch_name, employee.first_name, employee.last_name FROM branch
JOIN employee
ON mgr_id = emp_id;

SELECT * FROM branch
JOIN employee
ON mgr_id = emp_id;

SELECT * FROM employee
JOIN branch
ON employee.branch_id = branch.branch_id;


SELECT employee.emp_id, employee.first_name, branch.barch_name
FROM employee
JOIN branch    -- LEFT JOIN, RIGHT JOIN
ON employee.emp_id = branch.mgr_id;

SELECT employee.emp_id, employee.first_name, branch.barch_name FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);

SELECT employee.emp_id, employee.first_name, branch.barch_name FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id
UNION
SELECT employee.emp_id, employee.first_name, branch.barch_name FROM employee
RIGHT JOIN branch ON employee.emp_id = branch.mgr_id;

DELETE FROM branch
WHERE branch_id = 4;

SELECT first_name, employee.emp_id, works_with.total_sales FROM employee
JOIN works_with ON employee.emp_id = works_with.emp_id
WHERE total_sales >  30000;

SELECT emp_id FROM works_with
WHERE total_sales > 30000;

SELECT employee.first_name, employee.last_name FROM employee
WHERE employee.emp_id IN(
	SELECT works_with.emp_id FROM works_with
	WHERE works_with.total_sales > 30000
);

SELECT branch.branch_id FROM branch
WHERE mgr_id = 102;

SELECT cliente.client_id, cliente.client_name FROM cliente
WHERE cliente.branch_id IN(
SELECT branch.branch_id FROM branch WHERE branch.mgr_id = 102
);



