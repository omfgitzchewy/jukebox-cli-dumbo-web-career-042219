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
    puts "#{i}. #{element}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  input = gets.chomp

  if array.include?(input)
    puts "Playing" input
  else
    "Invalid input, please try again"
  end
end
