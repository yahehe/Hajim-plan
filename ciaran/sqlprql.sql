-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 24, 2014 at 10:16 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sqlprql`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `department` varchar(4) NOT NULL DEFAULT '',
  `number` varchar(4) NOT NULL DEFAULT '',
  `semester` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` longtext,
  `credits` int(10) unsigned NOT NULL DEFAULT '0',
  `restrictions` longtext,
  `cap` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reference` (`department`,`number`,`semester`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `department`, `number`, `semester`, `name`, `description`, `credits`, `restrictions`, `cap`) VALUES
(1, 'CSC ', '171', 'fall2014', 'THE SCIENCE OF PROGRAMMING', 'Discovering, formulating, and exploiting the structure of problems to aid in their solution by computer. An introduction to algorithmic problem solving and computer programming in Java', 4, 'Open to majors only', 140),
(2, 'CSC ', '172', 'fall2014', 'THE SCIENCE OF DATA STRUCTURES', 'Abstract data types (e.g., sets, mappings, and graphs) and their implementation as concrete data structures in Java. Analysis of the running times of programs operating on such data structures, and basic techniques for program design, analysis, and proof of correctness (e.g., induction and recursion). Lab required.', 4, 'CSC 171 or equivalent; MTH 150 is recommended.', 75),
(3, 'CSC ', '173', 'fall2014', 'COMPUTATION & FORMAL SYSTEMS', 'Investigation of several formal systems influential in computer science, and also some of their applications (e.g. inspiring and providing the foundation for a computer programming style, or providing the basis for solving important practical problems like communications protocols, compiling, systems analysis, graphics ...)', 4, 'CSC 172', 100),
(4, 'CSC ', '199', 'fall2014', 'CREATIVE COMPUTING', 'Quick! How much would a tunnel under Lake Ontario cost? How many people probably touched that orange you just bought at Wegmans? Can the military''s satellites really read your license plate from orbit? Explores the creative use computational mechanisms and information sources to obtain rough estimates and feasibility analyses for interesting questions practical problems, and looks at the technological basis of the art of measurement.', 4, NULL, 40),
(5, 'CSC ', '200', 'fall2014', 'UNDERGRAD PROBLEM SEMINAR', 'Intensive seminar on cooperative problem solving. Overview of the subdisciplines and the research of the University of Rochester?s computer science faculty. 200H required for the Honors B.S. in Computer Science; 200 required for the B.S. Students taking CSC 200H may have additional reading, assignments or projects.', 4, 'All BS premajor requirements', 40),
(6, 'CSC ', '200H', 'fall2014', 'UNDERGRAD PROBLEM SEMINAR', 'Intensive seminar on cooperative problem solving. Overview of the subdisciplines and the research of the University of Rochester?s computer science faculty. 200H required for the Honors B.S. in Computer Science; 200 required for the B.S. Students taking CSC 200H may have additional reading, assignments or projects.', 4, 'All BS premajor requirements', 40),
(7, 'CSC ', '253', 'fall2014', 'DYNAMIC LANGUAGE & SOFTWARE DEVELOPMENT', 'This course explores unique aspects of dynamically-typed programming languages, which are now pervasive in domains such as scientific research, Web application development, gaming, and user interface design. The lessons you will learn here complement those in traditional compilers and programming languages courses, which focus mainly on statically-typed languages. We will use the Python language as a case study. In the first half of this course, we will study the internals of the Python interpreter, which is implemented in C. In the second half, we will build analysis and debugging tools for Python, potentially extending open-source tools with large user bases. Familiarity with Python and C are beneficial but not strictly required.', 4, 'CSC 252 and CSC 254 are recommended.', 25),
(8, 'CSC ', '254', 'fall2014', 'PROGRAMMING LANGUAGE DESIGN & IMPLEMENTATION', 'Design and implementation of programming languages, with an emphasis on imperative languages and on implementation tradeoffs. In-depth examination of "how programming languages work." Topics include fundamental language concepts (names, values, types, abstraction, control flow); compilation and interpretation (syntactic and semantic analysis, code generation and optimization); major language paradigms (imperative, object-oriented, functional, logic-based, concurrent). Course projects include assignments in several different languages, with an emphasis on compilation issues.', 4, 'CSC 173; CSC 252 recommended', 54),
(9, 'CSC ', '256', 'fall2014', 'OPERATING SYSTEMS', 'Principles of operating system design, explored within the practical context of traditional, embedded, distributed, and real-time operating systems. Topics include device management, process management, scheduling, synchronization principles, memory management and virtual memory, file management and remote files, protection and security, fault tolerance, networks, and distributed computing. CSC 456, a graduate-level course, requires additional readings and assignments.', 4, 'CSC 252', 40),
(10, 'CSC ', '257', 'fall2014', 'COMPUTER NETWORKS', 'Introduction to computer networks and computer communication: Architecture and Protocols:. Design of protocols for error recovery, reliable delivery, routing and congestion control. Store-and-forward networks, satellite networks, local area networks and locally distributed systems. Case studies of networks, protocols and protocol families. Emphasis on software design issues in computer communication.', 4, 'CSC 252', 40),
(11, 'MTH', '141', 'fall2014', 'CALCULUS I', 'Analysis of the elementary real functions: algebraic, trigonometric, exponentials and their inverses and composites. Their graphs, derivatives, and integrals. Mean value theorem, maxima and minima, curve plotting. MTH 141, 142, and 143 is a three-semester sequence that covers, at a slower pace, exactly the same material as the two-semester sequence, MTH 161 and 162. This course uses the Tuesday/Thursday 08:00-09:30am Common Exam time.', 4, NULL, NULL),
(12, 'MTH', '142', 'fall2014', 'CALCULUS II', 'This course will consist of applications of the finite integrals, techniques of integration, calculus of the transcendental functions, improper integrals and the use of l''Hopital''s rule. This course uses the Tuesday/Thursday 08:00-09:30am Common Exam time.', 4, 'MTH 141', NULL),
(13, 'MTH', '143', 'fall2014', 'CALCULUS III', 'This is the third semester of a three-semester calculus sequence. Topics include infinite sequences and series, Taylor''s series, plane curves, parametric equations, polar coordinates, and arc length. This course uses the Tuesday/Thursday 08:00-09:30am Common Exam time.', 4, 'MTH 141, 142', NULL),
(14, 'MTH', '161', 'fall2014', 'CALCULUS IA', 'Elementary real functions: algebraic, trionometric, exponentials and their inverses and composites; their graphs, derivatives and integrals; limits, l''Hopital''s rules, Mean value theorem, maxima and minima, curve plotting. The fundamental theorem of calculus, with geometric and physical applications. (Fall and Spring) This course uses the Tuesday/Thursday 08:00-09:30am Common Exam time.', 4, NULL, NULL),
(15, 'MTH', '162', 'fall2014', 'CALCULUS IIA', 'Techniques of integration, improper integrals, applications to geometry and physics. Infinite series, Taylor series in one variable. Plane curves, parametric equations, polar coordinates, arc length. Prerequisite: MTH 161 or equivalent. (Fall and Spring) NOTE: Either MTH 164, 163, or 165 can be taken after MTH 162 or 143. This course uses the Tuesday/Thursday 08:00-09:30am Common Exam time.', 4, 'MTH 161 or equivalent', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_review`
--

CREATE TABLE IF NOT EXISTS `course_review` (
  `student_id` int(11) unsigned NOT NULL DEFAULT '0',
  `course_id` int(11) unsigned NOT NULL DEFAULT '0',
  `message` longtext NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `course_student` (`student_id`,`course_id`),
  KEY `student_id` (`student_id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enrolled`
--

CREATE TABLE IF NOT EXISTS `enrolled` (
  `student_id` int(11) unsigned NOT NULL DEFAULT '0',
  `section_id` int(11) unsigned NOT NULL DEFAULT '0',
  `grade` varchar(4) DEFAULT NULL,
  KEY `student_id` (`student_id`),
  KEY `section_id` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE IF NOT EXISTS `instructor` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `netid` char(8) NOT NULL DEFAULT '',
  `lastName` varchar(128) NOT NULL DEFAULT '',
  `firstName` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `netid` (`netid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `instructor_review`
--

CREATE TABLE IF NOT EXISTS `instructor_review` (
  `student_id` int(11) unsigned NOT NULL DEFAULT '0',
  `instructor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `message` longtext NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `instructor_student` (`student_id`,`instructor_id`),
  KEY `student_id` (`student_id`),
  KEY `instructor_id` (`instructor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `user_id` int(11) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`user_id`, `time`) VALUES
(2, '1398138727'),
(2, '1398138991'),
(2, '1398139046'),
(2, '1398139076'),
(2, '1398309790'),
(2, '1398309800'),
(2, '1398309809');

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE IF NOT EXISTS `major` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `department` varchar(4) NOT NULL DEFAULT '',
  `abbreviation` varchar(4) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`id`, `department`, `abbreviation`) VALUES
(1, 'CSC', 'BS');

-- --------------------------------------------------------

--
-- Table structure for table `major_course`
--

CREATE TABLE IF NOT EXISTS `major_course` (
  `major_id` int(11) unsigned NOT NULL DEFAULT '0',
  `course_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `major_id` (`major_id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `major_course`
--

INSERT INTO `major_course` (`major_id`, `course_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `major_track`
--

CREATE TABLE IF NOT EXISTS `major_track` (
  `major_id` int(11) unsigned NOT NULL DEFAULT '0',
  `track_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `major_id` (`major_id`),
  KEY `track_id` (`track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `major_track`
--

INSERT INTO `major_track` (`major_id`, `track_id`) VALUES
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` char(128) NOT NULL,
  `salt` char(128) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `email`, `password`, `salt`, `student_id`) VALUES
(1, 'test_user', 'test@example.com', '00807432eae173f652f2064bdca1b61b290b52d40e429a7d295d76a71084aa96c0233b82f1feac45529e0726559645acaed6f3ae58a286b9f075916ebf66cacc', 'f9aab579fc1b41ed0c44fe4ecdbfcdb4cb99b9023abb241a6db833288f4eea3c02f76e0d35204a8695077dcf81932aa59006423976224be0390395bae152d4ef', 0),
(2, 'yahehe', 'cdowney3@u.rochester.edu', '883da215571a10226d39e38e498070435d50bba14ea074b54b015fcd645e124eefa2547a9f7d26d5f9e35a8f9718a63f2802fbc5fef5ccefce27f978f7f4b658', '64cf153d0f33118d2b662a870501f5814c90056fee2cc7cd49e8c8d95dfb33842a6ddbda5c289ca0006d2679a8f74377204c8daa980d99994325643bd7383c0c', 0);

-- --------------------------------------------------------

--
-- Table structure for table `prerequisite`
--

CREATE TABLE IF NOT EXISTS `prerequisite` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) unsigned NOT NULL DEFAULT '0',
  `department` varchar(5) NOT NULL DEFAULT '',
  `number` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`),
  KEY `reference` (`department`,`number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `prerequisite`
--

INSERT INTO `prerequisite` (`id`, `course_id`, `department`, `number`) VALUES
(1, 2, 'CSC', '171'),
(2, 3, 'CSC', '172'),
(3, 15, 'MTH', '161'),
(4, 13, 'MTH', '142'),
(5, 12, 'MTH', '141'),
(6, 5, 'CSC', '171'),
(7, 5, 'CSC', '172'),
(8, 5, 'CSC', '173'),
(9, 5, 'MTH', '161'),
(10, 5, 'MTH', '142'),
(11, 5, 'MTH', '141'),
(12, 6, 'CSC', '171'),
(13, 6, 'CSC', '172'),
(14, 6, 'CSC', '173'),
(15, 6, 'MTH', '161'),
(16, 6, 'MTH', '142'),
(17, 6, 'MTH', '141'),
(18, 8, 'CSC', '173'),
(19, 9, 'CSC', '252'),
(20, 10, 'CSC', '252');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) unsigned NOT NULL DEFAULT '0',
  `building` varchar(64) DEFAULT NULL,
  `room` varchar(64) DEFAULT NULL,
  `times` varchar(255) DEFAULT NULL,
  `cap` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81072 ;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `course_id`, `building`, `room`, `times`, `cap`) VALUES
(30105, 1, 'B&L', '109', 'WF 1025-1140', NULL),
(30279, 2, 'GAVET', '202', 'WF 1025-1140', 75),
(30302, 3, 'LATT', '201', 'TR 1400-1515', 100),
(30317, 4, 'CSB', '601', 'WF 1025-1140', NULL),
(30351, 7, 'CSB', '632', 'MW 1525-1640', NULL),
(30365, 8, 'GRGEN', '108', 'MW 1400-1515', NULL),
(30378, 9, 'CSB', '601', 'TR 1400-1515', NULL),
(30380, 10, 'CSB', '601', 'MW 1230-1345', NULL),
(53429, 11, 'MEL', '221', 'TR 1650-1805', 60),
(53430, 11, 'B&L', '106', 'TR 1400-1515', 70),
(53448, 11, 'MEL', '221', 'MW 1400-1515', 60),
(53456, 11, 'GRGEN', '108', 'MWF 900-950', 50),
(53638, 12, 'GAVET', '312', 'MWF 900-950', 48),
(53640, 12, 'MOREY', '321', 'MW 1525-1640', 60),
(53732, 13, 'MOREY', '321', 'TR 1400-1515', 75),
(53749, 13, 'GAVET', '301', 'MWF 900-950', 45),
(53839, 14, 'HOYT', 'AUD', 'MWF 1025-1115', 90),
(53842, 14, 'HUTCH', '140', 'TR 1525-1640', 90),
(53850, 14, 'LATT', '201', 'MWF 900-950', 90),
(53868, 14, 'DEWEY', '2162', 'MW 1230-1345', 90),
(53873, 14, 'B&L', '106', 'TR 940-1055', 80),
(54132, 15, 'LATT', '201', 'MW 1230-1345', 90),
(54149, 15, 'HUTCH', '140', 'MWF 1025-1115', 90),
(54155, 15, 'MOREY', '321', 'MW 1650-1805', 90),
(54161, 15, 'HARK', '115', 'MWF 900-950', 90),
(75990, 5, 'CSB', '601', 'WF 1150-1305', NULL),
(81071, 6, 'CSB', '601', 'WF 1150-1305', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `netid` char(8) NOT NULL DEFAULT '',
  `lastName` varchar(128) NOT NULL DEFAULT '',
  `firstName` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `netid` (`netid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE IF NOT EXISTS `teaches` (
  `instructor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `section_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `instructor_id` (`instructor_id`),
  KEY `section_id` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE IF NOT EXISTS `track` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `numberRequired` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`id`, `name`, `numberRequired`) VALUES
(1, 'Systems', 3),
(2, 'Calculus', 3),
(3, 'Calculus Advanced', 2);

-- --------------------------------------------------------

--
-- Table structure for table `track_course`
--

CREATE TABLE IF NOT EXISTS `track_course` (
  `track_id` int(11) unsigned NOT NULL DEFAULT '0',
  `course_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `track_id` (`track_id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_course`
--

INSERT INTO `track_course` (`track_id`, `course_id`) VALUES
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 11),
(2, 12),
(2, 13),
(3, 14),
(3, 15);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
