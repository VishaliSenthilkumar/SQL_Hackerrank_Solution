SELECT CASE
         WHEN G.grade > 7 THEN S.name
         ELSE NULL
       end AS names,
       G.grade,
       S.marks
FROM   students S
       JOIN grades G
         ON S.marks BETWEEN G.min_mark AND G.max_mark
ORDER  BY G.grade DESC,
          names ASC,
          S.marks ASC; 




SELECT IF(GRADE>7,STUDENTS.NAME,"NULL"),G.GRADE,STUDENTS.MARKS 
FROM STUDENTS 
         LEFT JOIN GRADES G ON STUDENTS.MARKS>=G.MIN_MARK AND STUDENTS.MARKS<=G.MAX_MARK 
         ORDER BY GRADE DESC, NAME ASC;
