t = Time.now
year_days = 365
y = 0

leap_year = "leap year"
not_leap_year = 'not leap year'

if t.year % 4 == 0
  year_days = 366
    if t.year % 100 == 0
	year_days = 365	
          if t.year % 400 == 0
               year_days = 366		
          end	
    end    
end 

puts year_days > 365 ? "Now #{t.year} #{leap_year} #{year_days}":  "Now #{t.year} #{not_leap_year} #{year_days}"

while year_days != 366
  y = y + 1
if (t.year + y) % 4 == 0
  year_days = 366
    if (t.year + y) % 100 == 0
	year_days = 365	
          if (t.year + y) % 400 == 0
               year_days = 366		
          end	
    end    
end 
end
x = t.year + y

puts "next leap year #{x}" 





