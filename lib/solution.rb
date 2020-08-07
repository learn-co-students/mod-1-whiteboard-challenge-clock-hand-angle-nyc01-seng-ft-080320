require 'pry'
def clock_angle(time)
    # input: string of the format "9:00"
    # output: integer of angle degrees between them
    
    # split the string

    hr_min = get_hr_min(time)
    hr = hr_min[0].to_f
    min = hr_min[1].to_f

    
    # find angle from origin of minute hand
    # find angle from origin of hour hand
    min_angle = get_angle_from_origin(min, "minute") 
    hr_angle = get_angle_from_origin(hr, "hour")
        if min > 0
            hr_angle += 30*(min/60)
            
        end
   
    answer = hr_angle - min_angle
    if answer < 0
        answer += 360
    end
    

    if answer == 360
        answer = 0
    end
    answer
end

def get_hr_min(time_string)
    time_string.split(":")
end

def get_angle_from_origin(num, type)
    # each min is 360/60 = 6 degrees from origin clockwise
    # each hr is 360/12 = 30 degrees from origin clockwise

    if type == "minute"
        num * 6
    elsif type == "hour"
        num * 30
    end

end
