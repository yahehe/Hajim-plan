<?php

// course.php
// DAL for course
// CSC 296 - final project - senior citizens

require_once 'db_setup.php';
require_once 'section.php';

class Course
{
    // FIELDS
    
    private $id = 0;
    private $department;
    private $number;
    private $semester;
    private $name;
    private $description;
    private $credits;
    private $restrictions;
    private $cap;
    
    static public function findAll($semester, $department = null, $number = null)
    {
        global $db;
        // get instances by lookup
        $output = array();
        
        $query = "SELECT * FROM course WHERE semester LIKE ?";
        $params = array($semester);
        
        // filter further by state
        if($department){
            $query .= " AND department LIKE ?";
            $params[] = $department;
        }
        // filter further by county
        if($number){
            $query .= " AND number LIKE ?";
            $params[] = $number;
        }
        $query .= ";";
        
        $q = $db->prepare($query);
        $q->execute($params);
        foreach($q as $row){
            // make new instance
            $course = new self();
            $course->id = intval($row['id']);
            $course->department = $row['department'];
            $course->number = $row['number'];
            $course->semester = $row['semester'];
            $course->name = $row['name'];
            $course->description = $row['description'];
            $course->credits = intval($row['credits']);
            $course->restrictions = $row['restrictions'];
            $course->cap = $row['cap'] ? intval($row['cap']) : NULL;
            $output[] = $course;
        }
        return $output;
    }

    static public function findById($id)
    {
        // Returns the Course instance for the course in the database with the given $id,
        // or null if no such course can be found
        $q = $db->prepare("SELECT * FROM course WHERE id = ?;");
        $q->execute(array($id));
        $result = $q->fetchAll();
        if(empty($result[0])){
            throw new Exception("Course not found!");
        }
        $row = $result[0];
        $course = new self();
        $course->id = intval($row['id']);
        $course->department = $row['department'];
        $course->number = $row['number'];
        $course->semester = $row['semester'];
        $course->name = $row['name'];
        $course->description = $row['description'];
        $course->credits = intval($row['credits']);
        $course->restrictions = $row['restrictions'];
        $course->cap = $row['cap'] ? intval($row['cap']) : NULL;
        return $course;
    }
    
    public function getPrerequisites(){
        // get a list of course objects which are prereqs for this course
        $output = array();
        
        $query = "SELECT c.*
                    FROM prerequisite p, course c
                    WHERE
                        course_id = ? AND
                        p.department = c.department AND
                        p.number = c.number
                    GROUP BY c.department, c.number;";
        $params = array($this->id);
        
        $q = $db->prepare($query);
        $q->execute($params);
        
        foreach($q as $row){
            // make new instance
            $course = new self();
            $course->id = intval($row['id']);
            $course->department = $row['department'];
            $course->number = $row['number'];
            $course->semester = $row['semester'];
            $course->name = $row['name'];
            $course->description = $row['description'];
            $course->credits = intval($row['feature_name']);
            $course->restrictions = $row['restrictions'];
            $course->cap = $row['cap'] ? intval($row['cap']) : NULL;
            $output[] = $course;
        }
        
        return $output;
    }
    
    public function getSections(){
        return Section::findAll($this);
    }
    
    /*
    
    TODO: add these when we have more DAL's
    
    public function getMajors(){
        
    }
    
    public function getTracks(){
        
    }
    
    public function getReviews(){
        
    }
    
    */

    // ACCESSORS

    public function getId()
    {
        return $this->id;
    }
    
    public function getTitle(){
        return $this->department . " " . $this->number;
    }
    
    public function __toString(){
        return $this->department . " " . $this->number . " (" . $this->semester . ")";
    }

    public function getDepartment()
    {
        return $this->department;
    }

    public function getName()
    {
        return $this->name;
    }
    
    public function getSemester()
    {
        return $this->semester;
    }
    
    public function getDescription()
    {
        return $this->description;
    }
    
    public function getCredits()
    {
        return $this->credits;
    }
    
    public function getRestrictions()
    {
        return $this->restrictions;
    }
    
    public function getCap()
    {
        return $this->cap;
    }

}
