puts 123
print 456
puts 789
# puts 23132

puts -200.next

x = 10
x += 1.0

puts 'I said "I\'m escaped"'
puts 'Cao \n Cao \t Cao'
puts "Cao \n Cao \t Cao"
puts "Broj x je = #{x}"

puts "hello".capitalize

ar = ["a", "b", "c"]
puts ar.class
puts ar
print ar.to_s + "\n"
ar << "d"
print ar.to_s + "\n"
ar[3] = nil
print ar.to_s + "\n"
puts (ar=nil).class
puts ar.class

array2 = [1, "2", 3.0, ["a","b"], "dog"]
puts array2.inspect + " ovo je string"
print array2
puts

array = [1,2,3,4,5]
array << 0
puts array.sort.inspect
puts array.inspect
puts array.sort!.inspect
puts array.inspect
array << 2
puts array.uniq.inspect
puts array.inspect

puts (array + ["a",0,1]).inspect
array += ["a",0,1]
puts (array).inspect
array -= ["a",0,1]
puts (array).inspect


person = {"name" => "Milos", "last_name" => "Antic"}
puts person.class
puts person
mixed = {2 => ['a','b'], 'hello' => 'world', [10,20,30] => 'top'}
print mixed
puts
puts mixed[[10,20,30]]
puts mixed.length
puts mixed.size
puts mixed.keys.inspect
puts mixed.values.inspect
puts mixed.to_a.inspect
puts mixed.to_s.inspect
puts person.class

a = :test
b = "test"
puts a.object_id
puts b.object_id
c = :test
d = "test"
puts c.object_id
puts d.object_id
puts c.class
puts d.class

person = {:name => "Milos", :last_name => "Antic"}
person2 = {:name => "Milos", :last_name => "Antic"}
puts person['name'].class
puts nil
puts :nil.class
puts person[:name]
puts person.has_key?(:last_name).instance_of?(FalseClass)

x = 1..10
y = 1...10
puts x.begin.to_s + " " + x.end.to_s
puts x.first.to_s + " " + x.last.to_s
puts y.begin.to_s + " " + y.end.to_s
puts y.first.to_s + " " + y.last.to_s
puts x.include?(9)
puts x.include?(10)
puts x.include?(1)
puts y.include?(9)
puts y.include?(10)
puts y.include?(1)
puts z = [*x].inspect
puts z = [*y].inspect
puts z = [*y].class
puts t = 'a'..'h'
puts [*t].inspect
puts t.include?("b")

puts "asdasasd".class


#Constants
KON = "123465497998664987987"
puts KON
puts KON.class
Kob = KON
KON = 3
puts Kob
puts Kob.class
Kob = 20
puts KON
puts KON.class
kKk = 'asdas'
puts kKk.class

x = "555"
y = x
x = x + "2"
puts x
puts y

x = 4
if x > 10
  puts "vece od 10"
elsif x<3
  puts "manje od 3"
else
  puts "izmedju 3 i 10"
end

name = "Misa"
puts "Ovo je Misa" if name == 'Misa'


#Control structures
x=5
case x
when 5
  puts "five"
when 6
  puts "six"
else
  puts "other than five or six"
end

case
when (x==5)
  puts "five"
when (x==6)
  puts "six"
else
  puts "other than five or six"
end

unless x==0
  puts "x != 0"
end
x=1
puts x==1 ? x = "one" : "not one"

k=nil
if k
  puts y=k
else
  puts y=x
end

k1=0
if k1
  puts y1=k1
else
  puts y1=x
end

puts y3 = k || x
puts y2 = k1 || x

x=nil
puts x = x || false




#LOOPS
x=0
loop do
  x += 2
  break if x>10
  next if x==6
  puts x
end

x=0
while x<=10
  x += 2
  next if x==6
  puts x
end

x=0
until x>10
  x+=2
  next if x==6
  puts x
end

x = 0
puts x +=2 while x <= 10

x = 0
puts x +=2 until x > 10


# Iterators
5.times do
  puts "Hello"
end

5.times { puts "Hello" }
1.upto(3) { puts "Cao" }
5. downto(2) { puts "Hej" }
(3..5).each  { puts "Oj" }

y = 1
x = 78
1.upto(5) do |x|
  y += 1
  redo if (y<10 and x==3)
  puts "Hello " + x.to_s + " " + y.to_s
end
puts "Ipsilon je:" + y.to_s + " Iks je:" + x.to_s

ar = [1,2,3,4, "aa"]
puts ar.length

1.step(5,2) do |var|
  puts var.to_s
end
(1..5).step(2) do |var|
  puts var.to_s
end
niz = ['a', 'b', 4]
niz.each_with_index do |val, ind|
  puts "niz[#{ind}]=#{val}"
end
num = 1
1.upto(4) {|num| puts num.to_s}
puts num