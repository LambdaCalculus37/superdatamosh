#!/usr/bin/ruby
require 'aviglitch'
  
a = AviGlitch.open 'file.avi'
a.glitch_with_index(:keyframe) do |data, i|
  x = data[25..28].unpack('B*').first
  w = rand(('0b' + x[0..12]).oct * 1.5)
  h = rand(('0b' + x[14..26]).oct * 1.5)
  x[0..12] = "%013b" % ((w > 50) ? w : 50)
  x[14..26] = "%013b" % ((h > 50) ? h : 50)
  (i == 0) ? data : data[0..24] + [x].pack('B*') + data[29..data.size]
end
a.output 'out.avi'
