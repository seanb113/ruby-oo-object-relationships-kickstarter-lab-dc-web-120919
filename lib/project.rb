class Project
    attr_reader :title
    attr_accessor :backer

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers

         #takes Project Backer and collects an array of ProjectBacker of Objects
        result = ProjectBacker.all.select {|pair| pair.project == self }
        #returns Project Backer, but only the backer portion of the ProjectBacker object 
        return  result.map {|pair| pair.backer }
    end 

end