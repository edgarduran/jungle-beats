require_relative 'linklist'

jungle_beats = ARGV[0]
Linklist.new.play_beats_from_file(jungle_beats)
