# /dice.rb

require "sinatra"
require "sinatra/reloader"

get("/") do
  "Hello World"
end

get("/zebra") do
  " hello,everyone "
end 

get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end

get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d10</h1>
   <p>#{outcome}</p>"
end

get("/dice/1/20") do
  first_die = rand(1..20)
  

  outcome = "You rolled a #{first_die}."
  "<h1>1d20</h1>
   <p>#{outcome}</p>"

  end
