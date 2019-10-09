# code here!
require "pry"
class School

    attr_reader :roster, :school_name

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ? @roster[grade] << name : @roster[grade] = [name]
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.keys.each do |grade|
            @roster[grade].sort!
        end
        @roster.sort.to_h
    end
end

hth = School.new("High Tech High")
#binding.pry
