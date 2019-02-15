require 'pry'

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

=begin
def say_hello(name)

  "Hi #{name}!"
end

puts "Enter your name:"
user_name = gets.chomp

puts say_hello(user_name)
=end

def help

puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"

end

def list(songs)
  i = 0

  while i < songs.length
    puts "#{i + 1}. #{songs[i]}"
    i += 1
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  binding.pry
  user_input = gets.chomp
  check = false
  songs.each_with_index do |val, index|
    if user_input == val || user_input.to_i - 1 == index
      puts "Playing #{val}"
      check = true
    end
  end
  if check == false
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp

  until user_input == "exit"
    puts "Please enter a command:"
    user_input = gets.chomp
    if user_input == "help"
      help
    elsif user_input == "list"
      list(songs)
    elsif user_input == "play"
      play(songs)
    end
  end
  exit_jukebox
end
