class School
    attr_accessor :name, :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, student_grade)
        if @roster.keys.include?(student_grade)
            @roster[student_grade].push(student_name)
        else
            @roster[student_grade] = [student_name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sortedRoster = @roster.sort.to_h
        sortedRoster.map {|grade, students| [grade, students.sort]}.to_h
    end
end