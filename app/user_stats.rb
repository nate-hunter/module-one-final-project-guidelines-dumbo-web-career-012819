# def user_stat_table(current_user)
# 	user_stats = TTY::Table.new ['Health','Attack', 'Defense'], [[current_user.health, current_user.attack, current_user.defense]]
# end

# current = User.find_by(name: current_user)

# user_stat_table(current)

def user_stats(current_user)
	# user_stats = TTY::Table.new ['Health','Attack', 'Defense'], [[current_user.health, current_user.attack, current_user.defense]]
	# user_stats.render(:ascii)
	table = TTY::Table.new ['Name','Health', 'Attack', 'Defense'], [[current_user.name, current_user.health, current_user.attack, current_user.defense]]

	table.render(:unicode, alignments: [:center, :center, :center, :center])
end
