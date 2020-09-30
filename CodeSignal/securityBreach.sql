CREATE PROCEDURE securityBreach()
BEGIN
    SELECT * FROM users
    WHERE BINARY attribute LIKE CONCAT('%_\%', first_name, '\_', second_name, '\%%')
    ORDER BY attribute ASC;
END
