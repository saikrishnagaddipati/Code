# we get the input for below four variables and then we have to move thor who is at @initial_x and @inital_y to the position specified
#at @light_x and light_y
@light_x, @light_y, @initial_tx, @initial_ty = gets.split(" ").collect {|x| x.to_i}
thor_x = @initial_tx
thor_y = @initial_ty
# game loop
loop do
    remaining_turns = gets.to_i # The remaining amount of turns Thor can move. Do not remove this line.
    direction_x = ""
    direction_y = ""
    if thor_x > @light_x
      direction_x = "W"
      thor_x -= 1
    elsif thor_x < @light_x
      direction_x = "E"
      thor_x += 1
    end
        
    if thor_y > @light_y
      direction_y = "N"
      thor_y -= 1
    elsif thor_y < @light_y
      direction_y = "S"
      thor_y += 1
    end
    puts direction_y << direction_x
end
