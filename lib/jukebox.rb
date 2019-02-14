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
  puts("I accept the following commands:")
  puts("- help : displays this help message")
  puts("- list : displays a list of songs you can play")
  puts("- play : lets you choose a song to play")
  puts("- exit : exits this program")
end

def play(songs)
  puts("Please enter a song name or number:")
  choice = gets.chomp
  if songs.include?(choice)
    puts("Playing #{choice}")
  elsif choice.to_i < songs.length + 1 && choice.to_i > 0
    puts("Playing #{songs[choice.to_i - 1]}")
  else
    puts("Invalid input, please try again")
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts("#{index + 1}. #{song}")
  end
end

def exit_jukebox
  puts("Goodbye")
end

def run(songs)
  response = ""
  help
  while response != "exit"
    puts("Please enter a command:")
    response = gets.strip
    case response
    when "play"
      play(songs)
    when "list"
      list(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
    else
      puts("Invalid Command")
    end
  end
end
