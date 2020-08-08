require 'pry'
def clock_angle(time)
    # code your solution here
    hour , minute = time.split(":").map(&:to_i)
    adjusted_hour = hour * 5
    #minute = 6 degrees
    # hour hand is 2.5 degrees every 5 minutes
    if minute == 0
        if hour == 12
            return 0
        else
            return adjusted_hour * 6
        end
    end
    if minute > adjusted_hour
        return 360 + ((adjusted_hour - minute) * 6) + (minute*0.5)
    else
        return ((adjusted_hour - minute) * 6) + (minute*0.5)
    end

end


