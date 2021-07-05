#!/usr/bin/ruby
require 'aviglitch'
  
a = AviGlitch.open 'file.avi'       # Rewrite this line for your file.
d = []
a.frames.each_with_index do |f, i|
  d.push(i) if f.is_deltaframe?     # Collecting non-keyframes indices.
end
q = a.frames[0, 5]                  # Keep first key frame.
100.times do
  x = a.frames[d[rand(d.size)], 1]  # Select a certain non-keyframe.
  q.concat(x * rand(50))            # Repeat the frame n times and concatenate with q.
end
o = AviGlitch.open q                # New AviGlitch instance using the frames.
o.output 'output.avi'
