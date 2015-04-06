
#Closures = enclosed piece of code that executes for us
# 1. Blocks = executable code
# 2. Proc = shorthand block - do not use a colon (:) when calling a proc (&my_proc) vs a method (&:to_s)
# 3. Lambda
# 4. Method

#block example
puts "Block in brackets"

array.each { |x| puts n*2 } #this is a block using curly braces

puts "Block in do-end"

#proc example

doubler = Proc.new { |x| puts x*2 }
doubler = Proc.new(&:puts x*2)


puts "Proc in do-end"

array.each do |x|
  doubler.call(x)
end

#METHOD TO BUILD PROCS
def gen_times(factor)
  return Proc.new { |n| n*facor }
end

#
class PhoneNumber

  def self.normal_number(number, &block1)
    number = block1.call(number)
  end

end

right_size = Proc.new { |x| x.rjust(10,'0') }

array = ["Dave", "Michelle", "Margaret", "Josh", "Ricky", "Erik", "Lev"]

my_proc = Proc.new {|name| puts name.upcase + " is a ruby rockstar!"}

array.map(&my_proc)
#without the ampersand(&) this uses .call
array.map { |x| my_proc.call(x) }

# .map vs. .each - each won't create a new array so you will have to return the value manually

#example of send - a method of the class Class
#look this up


