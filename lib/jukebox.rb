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

def list(array)
list = {}
  array.each_with_index do |song, i|
   puts "#{i+1}. #{song}"
   list[i+1] = song
  end
list
end

def help
puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play(array)
list ={}
array.each_with_index do |song, i|
  list[i+1] = song
end
list
puts "Please enter a song name or number:"
value = gets.chomp
output = nil
  list.each do |number, song|  
    if value.to_i == number
      output = list[number]
    elsif value == song
      output = list[number]
    end
  end
  if output == nil
    puts "Invalid input, please try again"
  else
    puts "Playing " + output
  end
end

def exit_jukebox
 puts "Goodbye"
end

def run(array)
help
puts "Please enter a command:"
command = gets.chomp
  while command != "exit"
    case command
      when "help"
        help
        puts "Please enter a command:"
        command = gets.chomp
      when "list"
        list(array)
        puts "Please enter a command:"
        command = gets.chomp
      when "play"
        play(array)
        puts "Please enter a command:"
        command = gets.chomp
      else
        help
        puts "Please enter a command:"
        command = gets.chomp
      end
    end
exit_jukebox
end