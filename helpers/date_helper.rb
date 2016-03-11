module DateHelper
	def self.since_upload(date)
		days = (DateTime.now - date).to_i
		if days == 0 
			return "today"
		else
			return "#{days} day#{days > 1 ? "s" : ""} ago"
		end
	end
end