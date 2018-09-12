require_relative "load"

module ZYX000
  class Map
    def initialize
      @img=ZYX000::Load.new
    end

    def process_faster_player
    end

    def process_later_player
    end

    def draw_upper_player
    end

    def draw_under_player
      Window.draw(Window.width-150,Window.height/2-100,@img.yajirushi_hidari)
      Window.draw(Window.width/2-100,Window.height-150,@img.yajirushi_shita)
      Window.draw(Window.width/2-250,Window.height/2-150,@img.kanban)
    end

  end
end
