#!/usr/bin/ruby

def process_text(arr)
  arr.map(&:strip).join(" ")
end


puts process_text(["Hi, \n", " Are you having fun?    "])