require 'benchmark'


loop do
  
  year = rand(1..4000)
  p year
  
  
  
  def my_formula(year)
    if year % 4 == 0
      year_days = true
        if year % 100 == 0
   	      year_days = false
            if year % 400 == 0
              year_days = true	
            end	
        end   
     else
       year_days = false
    end
  end 
  
  def formula_from_internet(year)
    if year % 400 == 0
      year_days = true
     elsif year % 100 == 0
      year_days = false
     elsif year % 4 == 0
      year_days = true
     else
      year_days = false
    end
  end
  
  n = 100_000_000
  Benchmark.bmbm do |x|
    x.report("My formula")  {n.times{my_formula(year)}}
    x.report("From internet") {n.times{formula_from_internet(year)} }
  end
  
  
  =begin
  
  Rehearsal -------------------------------------------------
  My formula      5.219000   0.000000   5.219000 (  5.221676)
  From internet   7.141000   0.000000   7.141000 (  7.137638)
  -----------------------------------------------------------
  
                      user     system      total        real
  My formula      5.203000   0.000000   5.203000 (  5.199724)
  From internet   7.406000   0.000000   7.406000 (  7.412509)
  -----------------------------------------------------------
  
  Rehearsal -------------------------------------------------
  My formula      5.516000   0.000000   5.516000 (  5.521248)
  From internet   7.953000   0.000000   7.953000 (  7.974888)
  -----------------------------------------------------------
  
  =end
  
  gets
  
  Benchmark.bmbm do |x|
    x.report("From internet") {n.times{formula_from_internet(year)} }
    x.report("My formula")  {n.times{my_formula(year)}}
  end
  
  =begin
  
  Rehearsal -------------------------------------------------
  From internet   7.594000   0.000000   7.594000 (  7.600476)
  My formula      5.828000   0.000000   5.828000 (  5.828503)
  ------------------------------------------------------------
  
                      user     system      total        real
  From internet   8.172000   0.000000   8.172000 (  8.175002)
  My formula      6.218000   0.000000   6.218000 (  6.216838)
  -----------------------------------------------------------
  
  =end
  
  gets
  
end
  