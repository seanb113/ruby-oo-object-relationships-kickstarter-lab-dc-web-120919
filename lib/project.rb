class Project
    attr_reader :title
    attr_accessor :backer

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

end