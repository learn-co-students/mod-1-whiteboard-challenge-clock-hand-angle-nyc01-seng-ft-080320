require 'pry'

def clock_angle(time)

    #split time in hr/min components..to floats
    split_time = time.split(":")
    hour = split_time[0].to_f
    min = split_time[1].to_f

    #check here for 0 hours == 12 hours, 0 works for our purposes
    hour == 12 ? hour = 0 : hour = hour

    #angle calcs for hr/min
    min_angle = min*(6)
    hour_angle = hour*30 + (min*30/60)

    #depending on which hand is in front, add 360 to calc (clockwise)
    if min_angle > hour_angle 
        (hour_angle + 360) - min_angle
    else
        hour_angle - min_angle
    end

end

#binding.pry

