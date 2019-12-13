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
    projectbacker.all.select {|}


end
