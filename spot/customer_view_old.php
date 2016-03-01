<?php
/* 
customer_view.php

Use this file as a model for making more application pages. 
' . XXX . '
*/ 
?> 
<?php include 'includes/config.php';?>
<?php include 'includes/header.php';?>
<?php

// Ferret out the data, and attach it to the SQl string. 

if (isset($_GET['id']) && (int)$_GET['id'] > 0)
{ // Show data if good.
    $id = (int)$_GET['id']; 
}else{ // Go away if data is bad. 
    header('Location:customer_list.php'); // This is a redirect to another URL.   
}


$sql = "select * from test_Customers where CustomerID = $id";

// This is plumbing: 
$iConn = @mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME) or die(myerror(__FILE__,__LINE__,mysqli_connect_error()));
$result = mysqli_query($iConn,$sql) or die(myerror(__FILE__,__LINE__,mysqli_error($iConn)));
if (mysqli_num_rows($result) > 0) //at least one record!

{ //show results. This is the partial. 
    while ($row = mysqli_fetch_assoc($result))
    {
        echo '<img src="upload/customer' . $id . '.jpg" />'; 
        
        
        /*
        echo "<p>";
        // echo "FirstName: <b>" . $row['FirstName'] . "</b><br />";
        echo "FirstName: "; 
        echo '<a href="customer_view.php?id=' . $row['CustomerID'] . '">' . $row['FirstName'] . '</a><br />'; 
        echo "LastName: <b>" . $row['LastName'] . "</b><br />";
        echo "Email: <b>" . $row['Email'] . "</b><br />";
        
        echo "</p>";
        */ 
    }
    
}else{//no records
    echo '<div align="center">What! No customers?  There must be a mistake!!</div>';
}

@mysqli_free_result($result); #releases web server memory
@mysqli_close($iConn); #close connection to database
	
?> 

<?php include 'includes/footer.php';?>
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      