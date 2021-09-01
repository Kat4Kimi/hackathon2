class Wallet
	def initialize(money)
	@wallet = money
	end

	def add_money(wallet)
		 @wallet += money
	end

	def subtract_money(wallet)
		@wallet -= money
 end

	def validate_money(money)
		if money > 1 && (@wallet - money) >= 0
			true
		else
			false
		end
	end


	def current_balance
		return @wallet
	end	
end
