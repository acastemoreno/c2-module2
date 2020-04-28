require 'date'

def format_date(date)
  date.to_time.strftime("%B %d, del %Y") 
end