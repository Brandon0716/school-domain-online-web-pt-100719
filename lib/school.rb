# awesomesauce
class School
  attr_accessor :name, :roster
  
def initialize(name)
  @name = name
  @roster = {}
  end
 def add_student(student, how)
    roster[how] ||= []
    roster[how] << student
  end 
  
  def grade(how)
    roster.detect do |x, y| 
      if x == how
        return y 
      end 
    end 
  end
def sort 
  confused = {}
  roster.each do |x, y| 
    confused[x] = y.sort 
  end 
  confused
end 
  
end 
  