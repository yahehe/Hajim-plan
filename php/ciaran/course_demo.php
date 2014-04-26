<html>
    <head>
	<title>Course Test</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>

    <body>
	<h2>Course Test</h2>

	<?php
	require_once 'course.php';
	try {
	    $courses = Course::findAll('fall2014');
	    echo '<p>' . count($courses) . ' courses found.</p>';
		
	    // print column headers
	    
		
	    foreach ($courses as $course)
	    {
            echo '--------------------------------------------------------' .
            '<table><tr>' .
            '<td width=200><b>Course</b></td>' .
            '<td width=300><b>Description</b></td>' .
            '<td width=75><b>Credits</b></td>' .
            '<td width=150><b>Restrictions</b></td>' .
            '<td width=75><b>Cap</b></td>' .
            '</tr>';
			echo "<tr>" .
			"<td width=200>{$course}</td>" .
			"<td width=300>{$course->getDescription()}</td>" .
			"<td width=75>{$course->getCredits()}</td>" .
			"<td width=150>{$course->getRestrictions()}</td>" .
			"<td width=75>{$course->getCap()}</td>" .
			"</tr></table>";
            
            
            echo '<table><tr>' .
            '<td width=75><b>CRN</b></td>' .
            '<td width=75><b>Building</b></td>' .
            '<td width=75><b>Room</b></td>' .
            '<td width=200><b>Times</b></td>' .
            '<td width=75><b>Cap</b></td>' .
            '</tr>';
            $sections = $course->getSections();
            foreach($sections as $section)
            {
                echo '<tr>' .
                "<td width=75>{$section->getId()}</td>" .
                "<td width=75>{$section->getBuilding()}</td>" .
                "<td width=75>{$section->getRoom()}</td>" .
                "<td width=200>{$section->getTimes()}</td>" .
                "<td width=75>{$section->getCap()}</td>" .
                "</tr>";
            }
            echo "</table>";
	    }
	}
	catch (Exception $e) {
		echo "<p>oops</p>";
	    print "Error:   " . $e->getMessage() . "<br/>";
	    die();
	}
	?>

	<p>DONE!</p>

    </body>
</html>
