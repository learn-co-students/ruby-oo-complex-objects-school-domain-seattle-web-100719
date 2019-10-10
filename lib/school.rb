# code here!
class School

    attr_accessor :roster

    def initialize(schoolName)
        @schoolName = schoolName
        @roster = {}
    end

    def add_student(studentName, grade)

        #if a grade hasn't already been created, this will add it with a new empty array
        if !@roster[grade]
            @roster[grade] = Array.new
        end
        @roster[grade].push(studentName)
    end

    def grade(studentGrade)
        @roster[studentGrade]
    end

    def sort
        @roster.each_key do |keys|
            @roster[keys].sort! {|a, b| a <=> b}
        end
    end
    
end




