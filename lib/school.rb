# code here!

class School
    attr_reader :name, :roster
    attr_writer :roster, :name
    def initialize(name, roster={})
        @name = name
        @roster = roster
    end

    def add_student(student_name,grade)
        @student_name = student_name 
        @grade = grade
        if @roster.size==0
            @roster[grade]=[student_name]
        elsif @roster[grade] == nil
            @roster[grade]=[]
            @roster[grade].push(student_name)
        else
            @roster[grade].push(student_name)
        end
    end

     def grade(student_grade)
        roster[student_grade]
     end

     def sort
        sorted_student={}
        roster.each_key do |student_grade| sorted_student[student_grade]=roster[student_grade].sort
        end
        sorted_student
    end

end

