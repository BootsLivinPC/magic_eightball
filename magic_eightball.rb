require "colorize"
require "pry"

def separator
  puts "~" * 150
  puts
end

  @random_answers =[
    "YES",
    "NO",
    "MAYBE, ASK AGAIN LATER",
    "DOESN'T LOOK GOOD",
    "YOU SHOULD ASK ELSEWHERE",
    "MY SOURCES SAY YES",
    "SURE, WHY NOT"]
    puts `clear`
  
  def menu
    separator
    separator
puts "                                Welcome to the Mystical Magic 8-Ball!".colorize(:magenta)
separator
separator
sleep(1)
puts "                        Type a question to get a answer! Or type QUIT to end program".colorize(:blue)
separator
user_questions
end

def user_questions
  user_input = gets.strip.upcase
  case user_input

   when user_input = "ADD_ANSWERS"
    add_answers

   when user_input = "RESET_ANSWERS"
    reset_answers

   when user_input = "PRINT_ANSWERS"
    print_answers
   
    when user_input = "EDIT_ANSWERS"
     edit_answers

     when  user_input = "QUIT" 
     puts "                     Thanks & Have a Magical Day!".colorize(:red)
     exit!
     else
     separator
     sleep(1)
     puts "#{random_answers}"
     sleep(3)
     menu
   end
end


def random_answers
  puts "~~~~~~~~~~~~~~~~~~~#{@random_answers.to_a.sample}".colorize(:yellow)
  separator
  menu
end

# def check_answers(add, @random_answers)

#   add.each do |words|
#     if @random_answers.include?(words)
#       puts "Answer already present"
#       return
#     end
#   end
#   puts "Your answers has been added"
# end
  
# while true
#   puts "Try Again"
  
#   add = gets.chomp.upcase
      
#   check_answers(add, @random_answers)
# end

def add_answers
  puts "Please Add New Answer, or type DONE to return"
    answer = gets.chomp.upcase
    
    
    if  @random_answers.include?(answer)
      answer == true
      puts "Answer Already Exists, Try Again"
      add_answers
    elsif answer == "DONE"
     puts "Bye"
     menu
    else
      @random_answers << answer
    end
  add_answers
end

def reset_answers
  new_arr = @random_answers.map do |words|
    words.to_s
  end
  # @random_answers.freeze
  # arr_clone = @random_answers.clone
  menu
end

def print_answers
  list = @random_answers
  list.each_with_index do |l, i|
    puts "#{i + 1}) #{l}"
  end
  menu
end

def edit_answers
  list = @random_answers
  list.each_with_index do |l, i|
    puts "#{i + 1}) #{l}"
  end
  puts "Which Answer Would You Like To Edit?"
  # puts "Choose Number"
  edit = gets.to_i
  @random_answers.delete_at(edit - 1)
  puts "#{add_answers}"
  end

menu