class Timer
attr_accessor :seconds
	def initialize 
		@seconds = seconds
	end
	
	def seconds
	    @seconds = 0
	end
	
	def time_string
	    if @seconds == 0
	        return "00:00:00"
	    elsif @seconds > 0 and @seconds <60
	        return "00:00:#{@seconds}"
	    elsif @seconds >60
	        total_hour = @seconds / 3600
	        if total_hour < 10
	        	total_hour = "0" + total_hour.to_s
	        else
	        	total_hour
	        end	
	        total_min = (@seconds % 3600) / 60
	        if total_min < 10
	        	total_min = "0" + total_min.to_s
	        else
	        	total_min
	        end	
	        total_sec = (@seconds % 3600) % 60
	        if total_sec < 10
	        	total_sec = "0" + total_sec.to_s
	        else
	        	total_sec
	        end	
	        return "#{total_hour}:#{total_min}:#{total_sec}"
	        
	   end
	end
end
timer = Timer.new
puts timer.seconds
timer.seconds = 12
puts timer.time_string
timer.seconds = 39966
puts timer.time_string