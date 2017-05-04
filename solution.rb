#!/bin/ruby

time = gets.strip

postfix = time[-2..-1]
time.sub!('AM','')
time.sub!('PM','')
hours, minutes, seconds = time.split(':').map(&:to_i)
result = ''

if minutes < 10
    minutes = '0' + minutes.to_s
end
if seconds < 10
    seconds = '0' + seconds.to_s
end

if(postfix == 'AM')
    if hours == 12
        result = '00:' + minutes.to_s + ':' + seconds.to_s
    else
        if hours < 10
            hours = '0' + hours.to_s
        end
        result = hours.to_s + ':' + minutes.to_s + ':' + seconds.to_s
    end
elsif postfix == 'PM'
    if hours == 12
        result = '12:' + minutes.to_s + ':' + seconds.to_s
    else
        result = (hours + 12).to_s + ':' + minutes.to_s + ':' + seconds.to_s
    end
end

puts result