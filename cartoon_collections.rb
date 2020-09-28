def square_array(array)
  array.map {|i| i * i}
end

def summon_captain_planet(planeteer_calls)
  planeteer_calls.map {|i| i.capitalize + '!'}
end

def long_planeteer_calls(planeteer_calls)
  planeteer_calls.any?{|i| i.length > 4}
end

def find_valid_calls(planeteer_calls)
  valid_calls = ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
  index = 0
  good_call = nil
  planeteer_calls.find do |call|
    call == valid_calls[index]
    good_call = call
    index += 1 
  end
  # planeteer_calls.each do |call|
  #   if call == valid_calls[index]
  #     good_call = call
  #   else
  #     index += 1
  #   end
  # end
  good_call
end
