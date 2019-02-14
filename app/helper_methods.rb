def create_match(user_id, opponent_id=nil, location="Village")
  create_match = Match.create(user_id: user_id, opponent_id: opponent_id, location: location)
  create_match
end

def update_match_win_true_or_false(match, fight_score, num_to_win)
  if fight_score == num_to_win
    # binding.pry
    match.user_win = true
  elsif fight_score < num_to_win
    match.user_win = false
    puts "You did not win. Peace buddy."
    puts " "
  end
  match
end
