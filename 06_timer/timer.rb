class Timer
    def initialize
        @seconds = 0
    end

    attr_accessor :seconds

    def time_string
        puts @seconds
        hrs = @seconds/3600
        min = (@seconds-hrs*3600)/60
        sec = @seconds-hrs*3600-min*60
        sprintf("%02d:%02d:%02d", hrs, min, sec)
    end
end