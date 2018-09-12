module ZYX000
  class Load
    attr_reader :yajirushi_hidari,:yajirushi_shita,:kanban

    def initialize
      @yajirushi_hidari=Image.load("stage/maps/z_0/y_0/x_0/load/img/yajirushi_hidari.png")
      @yajirushi_hidari.set_color_key(C_BLACK)

      @yajirushi_shita=Image.load("stage/maps/z_0/y_0/x_0/load/img/yajirushi_shita.png")
      @yajirushi_shita.set_color_key(C_BLACK)

      @kanban=Image.load("stage/maps/z_0/y_0/x_0/load/img/kanban.png")
    end

  end
end
