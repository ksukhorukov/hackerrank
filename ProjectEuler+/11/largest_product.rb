#!/usr/bin/env ruby

data = []
lines = 20
while lines > 0
  row = $stdin.gets.strip.split(' ').map(&:to_i)
  data << row
  lines -= 1
end

@max = 0
module Problem011
 
  def horizontal ary
    ary.each do |row|
      row.each_cons(4) do |con|
        r = con.inject(&:*)
        @max = r if r > @max
      end
    end
  end

  def slash ary
    (0..16).each do |n|
      (0..16).each do |m|
        r = (0..3).inject(1){|p, i| p * ary[n + i][m + i]}
        @max = r if r > @max
      end
    end
  end
end
include Problem011
horizontal data
horizontal data.transpose
slash data
slash data.map(&:reverse).transpose
p @max




