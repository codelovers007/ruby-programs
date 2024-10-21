require 'date'

def interval_iterator(start_date, end_date, interval)
	start_date = Date.parse(start_date)
	end_date = Date.parse(end_date)
	if interval == 'monthly'
		monthly(start_date, end_date)
	else
		weekly(start_date, end_date)
	end
end

def monthly(start_date, end_date)
	date_arr = []
	(start_date..end_date).to_a.each do |date|
		date_arr << date.to_s if date.day == 1
	end
	date_arr
end

def weekly(start_date, end_date)
	date_arr = []
	(start_date..end_date).to_a.each do |date|
		date_arr << date.to_s if date.monday?
	end
	date_arr
end


# interval_iterator("01-01-2016", "31-05-2016", "monthly")

# interval_iterator("15-01-2016", "20-02-2016", "weekly")