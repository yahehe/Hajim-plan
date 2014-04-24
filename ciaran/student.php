<?php

require_once 'db_setup.php';
require_once 'course.php';
class Student
{
    // FIELDS
    
    private $id;
    private $lastName;
    private $firstName;
    private $schedule;
    
    static public function getStudent($student_id)
    {
        global $db;
        $query = "SELECT id, lastName, firstName FROM student WHERE id = ?;";
        $q = $db->prepare($query);
        $q->execute(array($student_id));
        $result = $q->fetchAll();
        if(empty($result[0])){
            throw new Exception("Section not found!");
        }
        $row = $result[0];
        $student = new self();
        $student->id = $student_id;
        $student->firstName = $row['firstName'];
        $student->lastName = $row['lastName'];
        $student->retrieveSchedule();
        return $student
    }
    
    public function retrieveSchedule()
    {
        global $db;
        $this->oldSchedule = array();
        $query = "SELECT section_id FROM enrolled WHERE student_id = ?;";
        $q = $db->prepare($query);
        $q->execute(array($this->id));
        
        foreach($q as $row){
            $section_id = $row['section_id'];
            $section = Section::findById($section_id);
            $this->schedule[] = $section;
        }
        
        return $schedule;
    }
    
    public function saveSchedule()
    {
        global $db;
        $query = "DELETE FROM enrolled WHERE student_id = ?;";
        $q = $db->prepare($query);
        $q->execute(array($this->id));
        
        foreach($this->schedule as $section){
            $section_id = $row['section_id'];
            $section = Section::findById($section_id);
            $this->oldSchedule[] = $section;
        }
    }

    public function getId()
    {
        return $this->id;
    }
    
    public function getFirstName()
    {
        return $this->firstName;
    }
    
    public function getLastName()
    {
        return $this->lastName;
    }
}
