/**
Ejemplo:
id | nombre | age
---+--------+----
1  | Ana    | 20
2  | Juan   | 20
3  | Pedro  | 25
1  | Ana    | 20  
**/
SELECT DISTINCT age FROM usuarios;
/**
+-----+
| age |
+-----+
| 20  |
| 25  |
+-----+
**/

SELECT DISTINCT nombre, age FROM usuarios;
/**
+--------+-----+
| nombre | age |
+--------+-----+
| Ana    | 20  |
| Juan   | 20  |
| Pedro  | 25  |
+--------+-----+
**/

SELECT DISTINCT * FROM usuarios;
/**
+----+--------+-----+
| id | nombre | age |
+----+--------+-----+
| 1  | Ana    | 20  |
| 2  | Juan   | 20  |
| 3  | Pedro  | 25  |
+----+--------+-----+
**/
