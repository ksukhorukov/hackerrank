#!/usr/bin/ruby

def serial_average(str)
	sss = str[0,3]
	xx_xx = str[4,5].to_f
	yy_yy = str[10,5].to_f

	average = ((xx_xx + yy_yy) / 2.0).round(2)

	"#{sss}-#{average}"
end

puts serial_average('001-12.43-56.78')