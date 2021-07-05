# Superdatamosh

A small set of Ruby scripts written to work with the [aviglitch](https://github.com/ucnv/aviglitch) Rubygem. This code was borrowed from their example page.

**USAGE**

In order to run these scripts, you'll need the aviglitch Rubygem installed. You can download a fork from my GitHub [here](https://github.com/LambdaCalculus37/aviglitch) and compile it by running in its directory:

> gem install aviglitch

The README file for aviglitch has further usage details.

**PREPARING THE VIDEO FILES**

These scripts, and by extension, aviglitch, read in AVI files. So how are you supposed to use these on all your modern codec using, modern containerized videos? Fret not; a simple ffmpeg command in your favorite terminal will do the trick:

> ffmpeg -i /path/to/your/video file.avi

Afterwards, you can use ffmpeg to do the same in reverse in order to get a web-ready version of the video to show off to your friends!

> ffmpeg -i out.avi moshed-video.mp4 (replace moshed-video.mp4 with whatever you want to call the file)

**THE SCRIPTS**

1. smol-mosh.rb - Does some minor datamoshing

2. big-mosh.rb - You're gonna see some wild results!

3. superdatamosh.rb - The Big One... this script will trash your video something absolutely fierce!

**TO DO**

1. Try and take file I/O params when you run the scripts; right now it's hardcoded to take a file named 'file.avi' and output 'output.avi'.

2. Anything else?