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

def list(array)
  array.each_with_index do |element, i|
    puts "#{i + 1}. #{element}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  input = gets.chomp
  songs = {}
  array.each_with_index do |title, i|
    songs[i + 1] = title
  end
  if songs[input.to_i]
    puts "Playing " + songs[input.to_i]
  elsif array.include?(input)
    puts "Playing " + input
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help
  puts "Please enter command:"
  command = gets.chomp
  unless command == "exit"
    puts "Please enter command:"
    command = gets.chomp
    if command == "list"
      list(array)
    elsif command == "play"
      play(array)
    else command == "help"
      help
    end
  else
    exit_jukebox
  end
end
