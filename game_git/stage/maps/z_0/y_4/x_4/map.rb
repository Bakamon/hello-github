require_relative "load"

module ZYX044
  class Map
    def initialize
      @img=ZYX044::Load.new
      @ladder_panel=$ladder_panel_class.new(Window.width-150,Window.height-150,0)
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
