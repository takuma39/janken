class HomesController < ApplicationController

	def top


	end


	def judgment
		@select = params[:janken]

		# if params[:janken] == "グー"
		# 	@judgment = "パー"
		# elsif params[:janken] == "チョキ"
		# 	@judgment = "グー"
		# elsif params[:janken] == "パー"
		# 	@judgment = "チョキ"
		# else
		# 	redirect_to root_path
		# end


		r = rand(3)

		if r == 1
			@judgment = "グー"
				if @select == "グー"
					@victory = "引き分け"
				elsif @select == "チョキ"
					@victory = "負け"
				elsif @select == "パー"
					@victory = "勝ち"
				end

		elsif r == 2
			@judgment = "チョキ"
				if @select == "グー"
					@victory = "勝ち"
				elsif @select == "チョキ"
					@victory = "引き分け"
				elsif @select == "パー"
					@victory = "負け"
				end

		elsif r == 3
			@judgment = "パー"
				if @select == "グー"
					@victory = "負け"
				elsif @select == "チョキ"
					@victory = "勝ち"
				elsif @select == "パー"
					@victory = "引き分け"
				end

		else
			redirect_to root_path
		end

	end

end
