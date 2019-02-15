songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list (songs)
songs.each_with_index do |song, index|
puts "#{index+1}. #{song}" 
end
end

def play (songs)
 puts "Please enter a song name:"
 user_input = gets.chomp
 if songs.include?(user_input)
  puts "Playing #{user_input}"
  elsif (1..9).to_a.include?(user_input.to_i)
    puts "Playing #{songs[user_input.to_i - 1]}"
 else
  puts "Invalid input, please try again"
end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
help
puts "Please enter a command:"
user_command = gets.strip
until user_command == "exit"
puts "Please enter a command:"
if user_command == "list"
  list
  elsif user_command == "play"
  play
  elsif user_command == "help"
  help
end
end
exit_jukebox
end



