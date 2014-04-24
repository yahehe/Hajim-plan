<?php

require_once 'db_setup.php';
require_once 'course.php';
class Section
{
    // FIELDS
    
    private $id = 0;
    private $course;
    private $building;
    private $room;
    private $times;
    private $cap;
    
    static public function findAll($course)
    {
        global $db;
        // get instances by course
        $output = array();
        
        $query = "SELECT * FROM section WHERE course_id = ?;";
        $params = array($course->getId());
        
        $q = $db->prepare($query);
        $q->execute($params);
        
        foreach($q as $row){
            // make new instance
            $section = new self();
            $section->id = intval($row['id']);
            $section->course = $course;
            $section->building = $row['building'];
            $section->room = $row['room'];
            $section->times = $row['times'];
            $section->cap = $row['cap'] ? intval($row['cap']) : NULL;
            $output[] = $section;
        }
        
        return $output;
    }

    static public function findById($id)
    {
        // Returns the Section instance for the section in the database with the given $id,
        // or null if no such section can be found
        $q = $db->prepare("SELECT * FROM section WHERE id = ?;");
        $q->execute(array($id));
        $result = $q->fetchAll();
        if(empty($result[0])){
            throw new Exception("Section not found!");
        }
        $row = $result[0];
        $section = new self();
        $section->id = intval($row['id']);
        $section->course = Course::findById($row['course_id']);
        $section->building = $row['building'];
        $section->room = $row['room'];
        $section->times = $row['times'];
        $section->cap = $row['cap'] ? intval($row['cap']) : NULL;
        $output[] = $section;
        return $section;
    }
    
    /*
    
    TODO: add these when we have more DAL's
    
    public function getStudents(){
        
    }
    
    public function getInstructors(){
        
    }
    
    */

    // ACCESSORS

    public function getId()
    {
        return $this->id;
    }
    
    public function __toString(){
        return $this->course->getDepartment() . " " . $this->course->getNumber() . " (" . $this->id . ")";
    }

    public function getBuilding()
    {
        return $this->building;
    }

    public function getRoom()
    {
        return $this->room;
    }
    
    public function getTimes()
    {
        return $this->times;
    }
    
    public function getCap()
    {
        return $this->cap;
    }
}
