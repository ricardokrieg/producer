#encoding: UTF-8
module PagesHelper

	def sauda
		if Date.today.wday < 3 then
			"Boa semana"
		else
			"bom fim de semana"
		end
	end
	def dia_semana
		if Date.today.wday == 1
			"hoje é segunda-feira"
		
	else Date.today.wday == 2
		"hoje é terça-feira"
	end
	end
end
