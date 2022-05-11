class Tower < ActiveRecord::Base
    has_many :plots


    def topPlot
        self.plots[0]
    end

    def bottomPlot
        self.plots[self.plots.length-1]
    end

    def waterPlots(num)
        waterPerPlot = num / 4
        self.plots.each do |plot|
            plot.water_level += waterPerPlot.to_f
        end
    end

    def dryOut
        self.plots.each do |plot|
            plot.water_level -= plot.dehydration_rate.to_f
        end
    end
end
