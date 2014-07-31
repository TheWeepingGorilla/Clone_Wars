require './lib/clone_war'


def linespace
  puts "\n"
end

def header
  system 'clear'
  puts "
▀▀█▀▀ █  █ █▀▀ 　 ▒█▀▀█ █   █▀▀█ █▀▀▄ █▀▀ 　 ▒█   █ █▀▀█ █▀▀█ █▀▀
▀▀█▀▀ █  █ █▀▀ 　 ▒█▀▀█ █   █▀▀█ █▀▀▄ █▀▀ 　 ▒█   █ █▀▀█ █▀▀█ █▀▀
▀▀█▀▀ █  █ █▀▀ 　 ▒█▀▀█ █   █▀▀█ █▀▀▄ █▀▀ 　 ▒█   █ █▀▀█ █▀▀█ █▀▀
▀▀█▀▀ █  █ █▀▀ 　 ▒█▀▀█ █   █▀▀█ █▀▀▄ █▀▀ 　 ▒█   █ █▀▀█ █▀▀█ █▀▀
▀▀█▀▀ █  █ █▀▀ 　 ▒█▀▀█ █   █▀▀█ █▀▀▄ █▀▀ 　 ▒█   █ █▀▀█ █▀▀█ █▀▀
▀▀█▀▀ █  █ █▀▀ 　 ▒█▀▀█ █   █▀▀█ █▀▀▄ █▀▀ 　 ▒█   █ █▀▀█ █▀▀█ █▀▀
 ▒█   █▀▀█ █▀▀ 　 ▒█    █   █  █ █  █ █▀▀ 　 ▒█ █ █ █▄▄█ █▄▄▀ ▀▀█
 ▒█   ▀  ▀ ▀▀▀ 　 ▒█▄▄█ ▀▀▀ ▀▀▀▀ ▀  ▀ ▀▀▀ 　 ▒█▄▀▄█ ▀  ▀ ▀ ▀▀ ▀▀▀

"
end

def rules
  puts "In the near future, celebrity clones will do battle."
  puts "The greater number in each battle will inflict greater harm."
  linespace
  puts "You will not know how wounded your clones are,"
  puts "because photoshop.  You will only know your dead"
  puts "as your numbers dwindle, and with them, your hopes."
  linespace
  puts "Fortunately, when friends meet, there will be new clones."
  puts "Unfortunately, their loyalities can be difficult to predict."
  linespace
  puts "When you run out of clones, you lose."
  puts "Also, your family is put to death. So try not to lose."
end

def list_clones
end

def clone_war
end

def main_menu
  loop do
    linespace
    puts "S > Send your clones into Battle!"
    puts "L > List all your clones by type."
    puts "R > Rules.  Show me the rules. "
    puts "X > Exit."
    linespace
    main_choice = gets.chomp.upcase
    if main_choice == "S"
      clone_war
    elsif main_choice == "L"
      list_clones
    elsif main_choice == "R"
      rules
    elsif main_choice == "X"
      puts "Fine! But remember...you may be a clone too..."
      linespace
      exit
    else
      system 'clear'
      puts "Invalid! Try again"
    end
  end
end

header
linespace
rules
main_menu
