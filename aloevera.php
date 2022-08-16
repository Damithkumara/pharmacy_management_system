<?php

	require_once('config.php');

	$query="select * from details where P_id ='P07'";
	$result = mysqli_query($link,$query);

	if (mysqli_num_rows($result) > 0)
	{
		echo "<table border=1 cellspacing=1>";
		while ($row = mysqli_fetch_assoc($result))
		{
		$P_name=$row['P_name'];
		$Health_Benefits=$row['Health_Benefits'];
		$Grame=$row['Grame'];
		$Price=$row['Price'];
		$Image=$row['Image'];
		


		echo "
		<img src='img/$Image'>
		<tr>
		<th>Product_name</th>
		<td>$P_name</td>
		</tr>
		<tr>
		<th>Health_Benefits</th>
		<td>$Health_Benefits</td>
		</tr>
		<tr>
		<th>Gram</th>
		<td>$Grame</td>
		</tr>
		<tr>
		<th>Price</th>
		<td>$Price</td>
		</tr>";

		}
		echo "</table>";
		echo "<a href='index.php'>Back</a>";	
	}
	else
	{
		echo "<h3>404 Noting Found </h3>";
	}

	
?>