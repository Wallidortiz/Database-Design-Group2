DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `AVG_DRIVER`(IN DriverID INT, OUT outavgDriver decimal(2, 1))
BEGIN
        /* declare a variable to store the average */

         DECLARE theAVGInfo DECIMAL(2,1);

        /* we are setting the variable equal to the average that is returned from the SELECT statement */

         SET theAVGInfo=

         (SELECT AVG(Ratings.Overall_rating) FROM Ratings

           INNER JOIN Orders ON Ratings.Order_ID= Orders.Order_ID
          WHERE Orders.Driver_ID = DriverID);

         /* notice that the where clause uses the IN input variable RestaurantID
              and last we will set the OUT parameter to the declared variable that is storing the average */  

     SET outavgDriver= theAVGInfo;
     /* end the procedure using the $$ delimeter */
     END$$
DELIMITER ;
