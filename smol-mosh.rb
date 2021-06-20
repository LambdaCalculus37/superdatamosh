#!/usr/bin/ruby
require 'aviglitch'
  
a = AviGlitch.open 'file.avi'
a.glitch :keyframe do |f|   
  nil                       
end                         
a.output 'out.avi'
