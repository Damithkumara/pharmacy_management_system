<?php

if(isset($_GET['id']))
{
	$pid = $_GET['id'];
	require_once('config.php');

	$query="select * from details where P_id ='P01';
	$result = mysqli_query($link,$query);

	if (mysqli_num_rows($result) > 0)
	{
		echo "<table border=1 cellspacing=1>";
		while ($row = mysqli_fetch_assoc($result))
		{
			foreach ($row as $key => $value) 
			{
				echo"<tr>";
				echo"<td>$key</td>";
				echo"<td>$value</td>";
				echo"</tr>";
			}
		}
		echo "</table>";
		echo "<a href='./'>Back</a>";	
	}
	else
	{
		echo "<h3>404 Noting Found </h3>";
	}
}
	else
	{
		echo "<h3>404 Noting Found </h3>";
	}
?>