module HandiCapulator

	def apply_handicap
		# player handicap
		# do they stroke?
		#   if so, how many?
		#     subtract stroke
		# if not, raw score


		# TODO- > 18 handicap
		strokes_to_subtract = 	if stroke?
									1
								else
									0
								end

		player.score - strokes_to_subtract
	end

	def stroke?
		player_hanidcap >= hole_handicap
	end


end