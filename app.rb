require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Dice Roll</h1>
  <p>Define some routes in app.rb</p>
  "
  erb(:homepage)
end

get("/process-roll") do
  @num_dice = params.fetch("dice").to_i
  @sides = params.fetch("sides").to_i

  @rolls = []

  @num_dice.times do
    @rolls.push(rand(1..@sides))
  end
  
  erb(:results)
end
