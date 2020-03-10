# code here!

class School
  
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    @roster[grade].class == NilClass ? @roster[grade] = [student_name] : @roster[grade].push(student_name)
  end
  
  def grade(grade_number)
    @roster[grade_number]
  end
  
  def sort
    @roster.each {|grade, students| students = students.sort {|a, b| a<=>b}}
    @roster
  end
  
end