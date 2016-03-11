require 'time_difference'

module DateHelper
	def self.since_upload(end_date)
		date_info = TimeDifference.between(DateTime.now, end_date).in_general
		if date_info[:years] > 0
			return self.pluralise("year", date_info[:years])
		elsif date_info[:months] > 0
			return self.pluralise("month", date_info[:month])
		elsif date_info[:weeks] > 0
			return self.pluralise("week", date_info[:weeks])
		elsif date_info[:days] > 0
			return self.pluralise("day", date_info[:days])
		elsif date_info[:hours] > 0
			return self.pluralise("hour", date_info[:hours])
		elsif date_info[:minutes] > 0
			return self.pluralise("minute", date_info[:minutes])
		else date_info[:seconds] > 0	
			return self.pluralise("second", date_info[:seconds])
		end
	end

	def self.pluralise(word, count)
		return "#{count} #{word}#{count > 1 ? "s" : ""}"
	end
end