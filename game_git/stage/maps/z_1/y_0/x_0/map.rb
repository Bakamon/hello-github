require_relative "load"

module ZYX100
  class Map
    def initialize
      @img=ZYX100::Load.new
      @ladder_panel=$ladder_panel_class.new(100,100,1)
    end

    def process_faster_player
    end

    def process_later_player
      @ladder_panel.onto_player
    end

    def draw_upper_player
    end

    def draw_under_player
      @ladder_panel.draw
    end

  end
end
