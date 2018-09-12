module Player
  class Load
    attr_reader :player

    def initialize

      @player=[
        Image.load("player/load/image/player_left.png"),
        Image.load("player/load/image/player_right.png")
      ]
      @player.each do |img|
        img.set_color_key(C_BLACK)
      end

    end
  end
end
