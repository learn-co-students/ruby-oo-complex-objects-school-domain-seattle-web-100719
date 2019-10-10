require 'pry'
class School
    attr_reader :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, year)
        if @roster[year]
            @roster[year] << name
        else
            @roster[year] = []
            @roster[year] << name
        end
    end

    def grade(year)
        @roster[year]
    end

    def sort
        @roster.each do |key, value|
            @roster[key] = value.sort!
        end
        @roster
    end
end