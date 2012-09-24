#!/usr/bin/ruby

require 'readline'

#--------------------------------

# Store the state of the terminal
stty_save = `stty -g`.chomp

#--------------------------------

Readline.completion_append_character = " "

Readline.completion_proc = Proc.new do |str|
  Dir[str+'*'].grep( /^#{Regexp.escape(str)}/ )
end

# Readline History - prevent empty and dups records
#   1. Read a line and append to history
#   2. Quick Break on nil
#   3. Remove from history if empty or dup
def readline_with_hist_management
  line = Readline.readline('> ', true)
  return nil if line.nil?
  if line =~ /^\s*$/ or Readline::HISTORY.to_a[-2] == line
    Readline::HISTORY.pop
  end
  line
end

begin
  while line = readline_with_hist_management
  	case line
		# Interrupt and restore to terminal (text shortcuts)
  	when '\q',':q',':exit'
  		raise Interrupt
  	else
  		p line
  	end
  end
rescue Interrupt => e
  system('stty', stty_save) # Restore to terminal
  exit
end