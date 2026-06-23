SELECT * FROM usuarios WHERE age = 15;
/**
+----+--------+-----+
| id | nombre | age |
+----+--------+-----+
| 3  | Pedro  | 15  |
| 8  | Laura  | 15  |
+----+--------+-----+
**/

SELECT nombre, age FROM usuarios WHERE age > 18;

/**
+--------+-----+
| nombre | age |
+--------+-----+
| Ana    | 20  |
| Juan   | 25  |
+--------+-----+
**/
