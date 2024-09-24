<?php 
    require_once('../controller/sessionCheck.php');
    require_once('../view/header.php')
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Admin Home Page</title>
</head>
<body>

    <center>
        <table>
            <tr>
                <td><a href="changePass.php">Change Password</a></td>
                <td><a href="../controller/showAllUser.php">View Users</a></td>
                <td><a href="../controller/createHotelManagement.php">Create Account For Hotel Management</a></td>
                <td><a href="../controller/addTourPackages.php">Add Tour Packages</a></td>
                <td><a href="../controller/showAllTourPackages.php">Show Tour Packages</a></td>
             
            </tr>
        </table>



        <fieldset>
          
            <b>Add Rooms</b>

            <form action="AddRooms.php" method="post"><br>
                <td><input type="submit" name="submit" value="Add Rooms"></td>
            </form><br>

            <b>Add Faq:</b>

            <form action="AddFAQ.php" method="post"><br>
                <td><input type="submit" name="submit3" value="Add FAQ"></td>
            </form><br>

            <form action="../controller/notification.php" method="post">
                <td><input type="submit" name="submit2" value="Notifications"></td>
            </form><br>
        </fieldset>
    </center>
</body>
</html>
