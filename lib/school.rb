require 'pry'
class School

    attr_reader :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        @student_name = student_name
        @grade = grade

        if !@roster[@grade]
            @roster[@grade] = [] 
        end
            @roster[@grade] << @student_name
    end
    
    def grade(grade)
        @grade = grade
        a = @roster.find {|key, value| key == grade}.slice(1)
    end

    def sort
        new_roster = {}
        @roster.each do |k, v| 
            a = @roster[k] = v.sort
            new_roster[k] = a
        end
        new_roster
    end

end