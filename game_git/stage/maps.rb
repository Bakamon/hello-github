require_relative "maps/z_0/y_0/x_0/map.rb"
require_relative "maps/z_0/y_0/x_1/map.rb"
require_relative "maps/z_0/y_0/x_2/map.rb"
require_relative "maps/z_0/y_0/x_3/map.rb"
require_relative "maps/z_0/y_0/x_4/map.rb"
require_relative "maps/z_0/y_1/x_0/map.rb"
require_relative "maps/z_0/y_1/x_1/map.rb"
require_relative "maps/z_0/y_1/x_2/map.rb"
require_relative "maps/z_0/y_1/x_3/map.rb"
require_relative "maps/z_0/y_1/x_4/map.rb"
require_relative "maps/z_0/y_2/x_0/map.rb"
require_relative "maps/z_0/y_2/x_1/map.rb"
require_relative "maps/z_0/y_2/x_2/map.rb"
require_relative "maps/z_0/y_2/x_3/map.rb"
require_relative "maps/z_0/y_2/x_4/map.rb"
require_relative "maps/z_0/y_3/x_0/map.rb"
require_relative "maps/z_0/y_3/x_1/map.rb"
require_relative "maps/z_0/y_3/x_2/map.rb"
require_relative "maps/z_0/y_3/x_3/map.rb"
require_relative "maps/z_0/y_3/x_4/map.rb"
require_relative "maps/z_0/y_4/x_0/map.rb"
require_relative "maps/z_0/y_4/x_1/map.rb"
require_relative "maps/z_0/y_4/x_2/map.rb"
require_relative "maps/z_0/y_4/x_3/map.rb"
require_relative "maps/z_0/y_4/x_4/map.rb"
require_relative "maps/z_1/y_0/x_0/map.rb"
require_relative "maps/z_1/y_0/x_1/map.rb"
require_relative "maps/z_1/y_0/x_2/map.rb"
require_relative "maps/z_1/y_0/x_3/map.rb"
require_relative "maps/z_1/y_0/x_4/map.rb"
require_relative "maps/z_1/y_1/x_0/map.rb"
require_relative "maps/z_1/y_1/x_1/map.rb"
require_relative "maps/z_1/y_1/x_2/map.rb"
require_relative "maps/z_1/y_1/x_3/map.rb"
require_relative "maps/z_1/y_1/x_4/map.rb"
require_relative "maps/z_1/y_2/x_0/map.rb"
require_relative "maps/z_1/y_2/x_1/map.rb"
require_relative "maps/z_1/y_2/x_2/map.rb"
require_relative "maps/z_1/y_2/x_3/map.rb"
require_relative "maps/z_1/y_2/x_4/map.rb"
require_relative "maps/z_1/y_3/x_0/map.rb"
require_relative "maps/z_1/y_3/x_1/map.rb"
require_relative "maps/z_1/y_3/x_2/map.rb"
require_relative "maps/z_1/y_3/x_3/map.rb"
require_relative "maps/z_1/y_3/x_4/map.rb"
require_relative "maps/z_1/y_4/x_0/map.rb"
require_relative "maps/z_1/y_4/x_1/map.rb"
require_relative "maps/z_1/y_4/x_2/map.rb"
require_relative "maps/z_1/y_4/x_3/map.rb"
require_relative "maps/z_1/y_4/x_4/map.rb"

module Stage
  class Maps
    attr_reader :maps

    def initialize
      @maps=Array.new($STAGE_MAX_Z).map{Array.new($STAGE_MAX_Y).map{Array.new($STAGE_MAX_X)}}
      @maps[0][0][0]=ZYX000::Map.new
      @maps[0][0][1]=ZYX001::Map.new
      @maps[0][0][2]=ZYX002::Map.new
      @maps[0][0][3]=ZYX003::Map.new
      @maps[0][0][4]=ZYX004::Map.new
      @maps[0][1][0]=ZYX000::Map.new
      @maps[0][1][1]=ZYX011::Map.new
      @maps[0][1][2]=ZYX012::Map.new
      @maps[0][1][3]=ZYX013::Map.new
      @maps[0][1][4]=ZYX014::Map.new
      @maps[0][2][0]=ZYX020::Map.new
      @maps[0][2][1]=ZYX021::Map.new
      @maps[0][2][2]=ZYX022::Map.new
      @maps[0][2][3]=ZYX023::Map.new
      @maps[0][2][4]=ZYX024::Map.new
      @maps[0][3][0]=ZYX030::Map.new
      @maps[0][3][1]=ZYX031::Map.new
      @maps[0][3][2]=ZYX032::Map.new
      @maps[0][3][3]=ZYX033::Map.new
      @maps[0][3][4]=ZYX034::Map.new
      @maps[0][4][0]=ZYX040::Map.new
      @maps[0][4][1]=ZYX041::Map.new
      @maps[0][4][2]=ZYX042::Map.new
      @maps[0][4][3]=ZYX043::Map.new
      @maps[0][4][4]=ZYX044::Map.new

      @maps[1][0][0]=ZYX100::Map.new
      @maps[1][0][1]=ZYX101::Map.new
      @maps[1][0][2]=ZYX102::Map.new
      @maps[1][0][3]=ZYX103::Map.new
      @maps[1][0][4]=ZYX104::Map.new
      @maps[1][1][0]=ZYX100::Map.new
      @maps[1][1][1]=ZYX111::Map.new
      @maps[1][1][2]=ZYX112::Map.new
      @maps[1][1][3]=ZYX113::Map.new
      @maps[1][1][4]=ZYX114::Map.new
      @maps[1][2][0]=ZYX120::Map.new
      @maps[1][2][1]=ZYX121::Map.new
      @maps[1][2][2]=ZYX122::Map.new
      @maps[1][2][3]=ZYX123::Map.new
      @maps[1][2][4]=ZYX124::Map.new
      @maps[1][3][0]=ZYX130::Map.new
      @maps[1][3][1]=ZYX131::Map.new
      @maps[1][3][2]=ZYX132::Map.new
      @maps[1][3][3]=ZYX133::Map.new
      @maps[1][3][4]=ZYX134::Map.new
      @maps[1][4][0]=ZYX140::Map.new
      @maps[1][4][1]=ZYX141::Map.new
      @maps[1][4][2]=ZYX142::Map.new
      @maps[1][4][3]=ZYX143::Map.new
      @maps[1][4][4]=ZYX144::Map.new


    end
  end
end
