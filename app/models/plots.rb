class Plot < ActiveRecord::Base
    belongs_to :tower

    def top
        self.tower.plots[0]
    end

    def bottom
        self.tower.plots[self.tower.plots.length-1]
    end

    def isTop?
        self.following_plot == nil
    end

    def distFromTop
        self.tower.plots.find_index(self) + 1
    end
end