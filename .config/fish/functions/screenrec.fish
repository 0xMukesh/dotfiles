function screenrec --wraps='ffmpeg -f x11grab -i :0.0 -f pulse -i alsa_output.pci-0000_00_1f.3.analog-stereo.monitor rec.mp4' --description 'alias screenrec ffmpeg -f x11grab -i :0.0 -f pulse -i alsa_output.pci-0000_00_1f.3.analog-stereo.monitor rec.mp4'
  ffmpeg -f x11grab -i :0.0 -f pulse -i alsa_output.pci-0000_00_1f.3.analog-stereo.monitor rec.mp4 $argv
        
end
