# case statement: what action to take, here: based on what the user types

movies = {
  fabuleux_destin_d_amelie_poulain: 4,
  fight_club: 3,
  american_beauty: 4,
}

actions = ["add", "update", "display", "delete"]

def ask_action()
  actions = ["add", "update", "display", "delete"]
  puts "Please select an action: add, update, display, delete"
  choice = gets.chomp.downcase
  
  if actions.include?(choice)
    choice
  else
    choice = ask_action()
  end
  
end


def ask_title()
  puts "Please enter a title "
  title = gets.chomp
end


def ask_rating()
  puts "Please enter your rating for this movie (between 0 and 5) "
  rating = gets.chomp
  rating.match(/^[0-5]{1}$/) ? rating.to_i : ask_rating()  
end

# start of programm

choice = ask_action()

case choice
when "add"
  title = ask_title
  
  if movies[title.to_sym] == nil 
    rating = ask_rating
    movies[title] = rating
    puts "The movie and the rating have been added"
    puts movies
    
  else 
    puts "The movie already exists"    
  end
  
  
when "update" 
  title = ask_title
  if movies[title.to_sym] == nil
    puts "This movie does not exist in the database"
    
  else 
    rating = ask_rating
    movies[title.to_sym] = rating.to_i
    puts movies
  end
  
when "display" 
  movies.each { |title, rating| puts "#{title}: #{rating}" }
  movies.display
  
when "delete"
  title = ask_title
  if movies[title.to_sym] == nil
    puts "This movie does not exist in the database"
    
  else 
    movies.delete(title.to_sym)
    puts "the movie has been deleted" 
    puts movies    
  end
  
else
  puts "This is not an option"
end