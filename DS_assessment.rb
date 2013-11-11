##1. Arrays

my_array = ["Blake","Ashley","Jeff"]
my_array.push("Derek")
my_array
my_array[1] 
my_array.index('Jeff') 

##2. Hashes

instructor = {:name =>"Ashley", :age => 27, :location =>"NYC"}
instructor
instructor[:name] 
instructor.key(27) 

##3. Nested Structures

school = { 
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}

school["founded_in"] = "2013"
school[:students].push ({:name => "Derek", :grade => "A"})
school[:students].delete (school[:students][1])
school[:students].each { |x| x[:semester] = "Summer" }
school[:instructors][1][:subject] = "being almost better than Blake"
school[:students][2][:grade] = "F"
school[:students].each { |hash| 
        if not(hash.key("B").nil?)
               hash[:name]
        end
  }
school[:instructors].each do |hash| 
        if not(hash.key("Jeff").nil?)
                hash[:subject]
        end
end


##4. Methods

def grade(school_name, student_name)
  
  school_name[:students].each do |hash|
          if hash[:name] == student_name
             return hash[:grade]
           end
      end
end

def update_subject(school_name, instructor_name, subject_name)
  
  school_name[:instructors].each do |hash|
    if hash[:name] == instructor_name
        hash[:subject] = subject_name
    end
  end
end

puts update_subject(school, "Blake", "being terrible")
            
def new_student(school_name, student_name, grade)

  school_name[:students].push ({:name => student_name, :grade => grade})
  
end

puts new_student(school, "Carrie", "C")


def new_key(school_name, new_key, new_value)
        school_name[:"#{new_key}"] = new_value
end

new_key(school, "Ranking", "1")  


##5. Object Orientation

class School  
  SCHOOLS = []
  def initialize(name, location, ranking)
    @name = name
    @location = location
    @ranking = ranking
    @instructors = []
    @students = []
  end
  
  attr_accessor :name, :location, :instructors, :students
  attr_reader :ranking
  
  def set_ranking(new_ranking)
    @ranking = new_ranking
  end

   def new_student(school_name, student_name, grade)
      school_name[:students].push ({:name => student_name, :grade => grade})
   end
  
   def remove_student(remove_name)
        students.each do |hash|
            if not(hash.key(remove_name).nil?)
             students.delete (hash)
           end
       end
   end
  
   def School.reset
        SCHOOLS.clear
   end
end  
  
##6. Classes

class Student
   def initialize(name, grade, semester)
        @name = name
        @grade = grade
        @semester = semester
   end
      attr_accessor :name, :grade, :semester
end

##7.

#a. "hello Student"
#b. "Student"
#c. "#<Student:0x00000001b9d150>"
#d. Nothing
#e. "goodbye"

