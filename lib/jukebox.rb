# songs = [
#   "Phoenix - 1901",
#   "Tokyo Police Club - Wait Up",
#   "Sufjan Stevens - Too Much",
#   "The Naked and the Famous - Young Blood",
#   "(Far From) Home - Tiga",
#   "The Cults - Abducted",
#   "Phoenix - Consolation Prizes",
#   "Harry Chapin - Cats in the Cradle",
#   "Amos Lee - Keep It Loose, Keep It Tight"
# ]

def help
  #The def methpd will put out the following
  I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
end



def play(my_songs)
  #you should still ask the user for input and collect their song choice
 #this time, only allow user's to input a song name
 #check to see if the name they give is in fact a key of the my_songs hash
 #if it isn't, tell them their choice is invalid
 #if it is, play the song using the system 'open <file path>' syntax
 #get the file path of the song by looking it up in the my_songs hash

 puts "Please enter a song name:"
 user_input = gets.chomp
 if my_songs.has_key?(user_input)
  puts "Playing #{user_input}"
  system "open #{my_songs.key(user_input)}"
 else
  puts "Invalid input, please try again"
 end
end
end


def run(my_songs)
  #First, this method should call on the help method to show the user the available commands.
# Then, it should puts out the prompt: "Please enter a command:".
# It should capture the user's response using gets.chomp or gets.strip.
loop do
   puts "Please enter a command:"
   user_input = gets.downcase.chomp
   case user_input
   when "exit"
     exit_jukebox
     break
   when "list"
     list(my_songs)
   when "play"
     play(my_songs)
   when "help"
     help
   else
     help
   end
end
end
end


def run_guessing_game
  loop do
    puts "Guess a number between 1 and 6."
    user_input = gets.chomp
    num=rand(1..6) #This will generate a random number
    if user_input(1..6) =="exit"
      puts "goodbye"
      break #break will stop the game
     elsif user_input.to_i == num
        puts "You guessed the correct number!"
     elsif user_input.to_i != num
        puts "The computer guessed #{num}."
     else
        puts "Invalid input"
     end
  end
end
