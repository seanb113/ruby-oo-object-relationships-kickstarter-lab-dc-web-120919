require "pry"

class Backer
attr_reader :name
attr_accessor :project

@@all = []

def initialize(name)
    @name = name
end

def back_project(project)
    ProjectBacker.new(project, self)
end

def backed_projects

    #takes Project Backer and collects an array of ProjectBacker of Objects
    result = ProjectBacker.all.select {|pair| pair.backer == self }

    #returns Project Backer, but only the project portion of the ProjectBacker object 
    return  result.map {|pair| pair.project }

end

end 

