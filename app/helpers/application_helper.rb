module ApplicationHelper

	def permited_access
		if user_signed_in? && current_user.email == "anf2@cin.ufpe.br"
			true		
		else
			false
		end
	end

end
