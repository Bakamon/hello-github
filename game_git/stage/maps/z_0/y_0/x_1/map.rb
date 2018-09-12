require_relative "load"

module ZYX001
  class Map
    def initialize
      @img=ZYX001::Load.new
    end

    def process_faster_player
    end

    def process_later_player
    end

    def draw_upper_player
    end

    def draw_under_player
      self.draw_grass
    end

    def draw_grass
      12.times do |i|
        16.times do |j|
          Window.draw(50*j,50*i,@img.grass)
        end
      end
    end

  end
end
