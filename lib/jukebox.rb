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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  puts "Goodbye"
end

def play(songs_array)
  puts "Please enter a song name or number:"
    user_input = gets.chomp
    if songs_array.include?(user_input)
      puts "Playing <#{user_input}>"
    elsif user_input.to_i < songs_array.length && user_input.to_i > 0
      puts "Playing <#{songs_array[user_input.to_i-1]}>"
    else  
      puts "Invalid input, please try again"
    end
end 

def exit_jukebox
  puts "Goodbye"
end

def run(songs_array)
    help
      puts "Please enter a command:"
        input = gets.chomp
       case songs_array
           when input == "list"
            puts songs_array
           when input == "help"
            help
           when input == "exit"
            exit_jukebox
           when input == "play"
          play
        end

end



def list(songs_array)
  songs_array.each_with_index{ |song, index| puts "#{index}. #{song}"}
end
