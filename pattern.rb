=begin

Program for pattern printing

*
* *
* * * 
* * * *
* * * * *

=end

(1..5).each do |n|
  print '* ' * n
  print '  ' * (5-n)
  puts
end


=begin

Program for pattern printing

        * 
      * * 
    * * * 
  * * * * 
* * * * *

=end

n = 6

(1..n).each do |i|
  print '  ' * (n-i)
  print '* ' * i
  puts
end


=begin

Program for pattern printing

     * 
    * * 
   * * * 
  * * * * 
 * * * * * 
* * * * * *

=end


(1..6).each do |n|
  print ' ' * (6-n)
  print '* ' * n
  puts
end
