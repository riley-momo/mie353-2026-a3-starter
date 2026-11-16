% =====================================================================
% MIE353 Assignment 3, Part 1: Degree Program Knowledge Base
%
% This file is given to you. Do not change it: write your rules in
% kb_rules.lp and your queries in queries/query1.lp ... query6.lp.
%
% Predicate Schema
%   student(StudentId, FirstName, LastName).
%   instructor(InstructorId, FirstName, LastName, Department).
%   course(CourseCode, Title, Department, Year).
%   prerequisite(Course, Prereq).        Prereq must be passed before Course
%   teaches(InstructorId, CourseCode).
%   completed(StudentId, CourseCode, Grade).   a finished course, with its grade
%   enrolled(StudentId, CourseCode).           a course the student is taking now
% =====================================================================

course(aps101, "Engineering Strategy and Practice", aps, 1).
course(mat186, "Calculus I", mat, 1).
course(mat187, "Calculus II", mat, 1).
course(mat188, "Linear Algebra", mat, 1).
course(csc180, "Introduction to Programming", csc, 1).
course(csc190, "Data Structures", csc, 1).
course(mie231, "Probability and Statistics", mie, 2).
course(mie250, "Object-Oriented Programming", mie, 2).
course(mie245, "Algorithms and Complexity", mie, 2).
course(mie262, "Operations Research I", mie, 2).
course(mie368, "Analytics in Action", mie, 3).
course(mie350, "Information Systems Design", mie, 3).
course(mie424, "Optimization for Machine Learning", mie, 4).
course(mie451, "Decision Support Systems", mie, 4).

prerequisite(mat187, mat186).
prerequisite(csc190, csc180).
prerequisite(mie231, mat187).
prerequisite(mie250, csc190).
prerequisite(mie245, mie250).
prerequisite(mie262, mat188).
prerequisite(mie368, mie231).
prerequisite(mie368, mie262).
prerequisite(mie350, mie245).
prerequisite(mie424, mie368).
prerequisite(mie424, mat188).
prerequisite(mie451, mie350).
prerequisite(mie451, mie231).

instructor(i01, "Grace", "Hopper", csc).
instructor(i02, "Emmy", "Noether", mat).
instructor(i03, "Alan", "Turing", mie).
instructor(i04, "Katherine", "Johnson", mat).
instructor(i05, "George", "Dantzig", mie).
instructor(i06, "Lillian", "Gilbreth", aps).

teaches(i06, aps101).
teaches(i02, mat186).
teaches(i02, mat187).
teaches(i04, mat188).
teaches(i01, csc180).
teaches(i01, csc190).
teaches(i04, mie231).
teaches(i03, mie250).
teaches(i03, mie245).
teaches(i05, mie262).
teaches(i05, mie368).
teaches(i03, mie350).
teaches(i05, mie424).
teaches(i03, mie451).

student(s01, "Maya", "Chen").
student(s02, "Omar", "Haddad").
student(s03, "Priya", "Raman").
student(s04, "Lucas", "Martin").
student(s05, "Sofia", "Rossi").
student(s06, "Daniel", "Okafor").
student(s07, "Hannah", "Kim").
student(s08, "Ethan", "Novak").
student(s09, "Zara", "Ali").
student(s10, "Noah", "Tremblay").

completed(s01, aps101, 88).
completed(s01, mat186, 91).
completed(s01, mat187, 85).
completed(s01, mat188, 90).
completed(s01, csc180, 94).
completed(s01, csc190, 89).
completed(s01, mie231, 82).
completed(s01, mie262, 87).
completed(s01, mie250, 92).
completed(s01, mie245, 86).
completed(s01, mie368, 90).
completed(s02, aps101, 72).
completed(s02, mat186, 65).
completed(s02, mat187, 41).
completed(s02, mat187, 58).
completed(s02, mat188, 70).
completed(s02, csc180, 77).
completed(s02, mie262, 61).
completed(s03, aps101, 80).
completed(s03, mat186, 78).
completed(s03, mat187, 74).
completed(s03, mat188, 83).
completed(s03, csc180, 85).
completed(s03, csc190, 79).
completed(s03, mie231, 71).
completed(s03, mie250, 76).
completed(s04, aps101, 69).
completed(s04, mat186, 55).
completed(s04, mat187, 52).
completed(s04, mat188, 38).
completed(s04, csc180, 60).
completed(s05, aps101, 90).
completed(s05, mat186, 84).
completed(s05, mat187, 88).
completed(s05, mat188, 92).
completed(s05, csc180, 81).
completed(s05, csc190, 85).
completed(s05, mie231, 79).
completed(s05, mie262, 83).
completed(s06, aps101, 75).
completed(s06, mat186, 70).
completed(s06, mat188, 66).
completed(s06, csc180, 62).
completed(s06, csc190, 44).
completed(s07, aps101, 85).
completed(s07, mat186, 90).
completed(s07, mat187, 87).
completed(s07, mat188, 89).
completed(s07, csc180, 92).
completed(s07, csc190, 90).
completed(s07, mie250, 88).
completed(s07, mie245, 84).
completed(s07, mie350, 81).
completed(s07, mie231, 80).
completed(s08, aps101, 64).
completed(s08, mat186, 59).
completed(s08, csc180, 71).
completed(s09, aps101, 93).
completed(s09, mat186, 95).
completed(s09, mat187, 91).
completed(s09, mat188, 97).
completed(s09, csc180, 88).
completed(s09, mie262, 90).

enrolled(s01, mie350).
enrolled(s01, mie424).
enrolled(s02, mie231).
enrolled(s03, mie245).
enrolled(s03, mie262).
enrolled(s04, mat188).
enrolled(s04, mie231).
enrolled(s05, mie368).
enrolled(s05, mie250).
enrolled(s06, csc190).
enrolled(s06, mie262).
enrolled(s07, mie451).
enrolled(s08, mat187).
enrolled(s08, mie250).
enrolled(s09, mie231).
enrolled(s09, mie368).
enrolled(s10, aps101).
enrolled(s10, mat186).
