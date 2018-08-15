5.times do |i|
  puts "Hello #{i}"
end

puts

1.upto(5) do |i|
  puts "Hello #{i}"
end

x = "Milos"
i = 8
1.upto(3) {|i| puts i.to_s; puts x}
puts i

puts (1..10).all? {|i| i == 3}

puts [1, 2, 3, 4, 5, 6, 8, 9].any? {|i| i == 9}

puts [*1..10].delete_if {|i| i % 3 == 0}.inspect

h1 = {"a" => 111, "b" => 222}
h2 = {"b" => 333, "c" => 444}
puts h1, h2
puts h1.merge(h2) {|k, o, n| o + n}
h1.merge!(h2) {|k, o, n| (o > n) ? o : n}
puts h1

array = [1, 2, 3, 4, 5]
array.map! do |i|
  if i > 3
    i * 3
  else
    i - 2
  end
end
puts array.inspect

puts h1.collect {|k, v| k + 1.to_s}.inspect

puts (1..5).map {|i| i if i > 2}.inspect

fruits = ['apple', 'banana', 'pear', '123456789']
puts fruits.sort_by {|fruit| fruit.reverse}

puts h1 = {"a" => 111, "b" => 777, "d" => 888, "c" => 222}
puts h1.to_a.inspect
puts h1.sort.inspect

puts h1.sort {|dvoclan1, dvoclan2| dvoclan1[0] <=> dvoclan2[0]}

a = h1.sort do |dv1, dv2|
  if dv1[1] < dv2[1]
    1
  elsif dv1[1] == dv2[1]
    0
  else
    -1
  end
end

puts a.inspect

puts [*1..10].inject(3) {|memo, i| memo + i}

array = [1, 2, 3, 4]
puts array.inject(2) {|m, i| m * i}
puts array.inject {|m, i| m + i if i <= 3}

x = array.inject() do |m, i|
  if i < 4
    m + 2; m + 1
  else
    m + 11 * i
  end
end
puts x

puts (1..4).inject(0) {|m, i| puts m + i; i}

puts fruits.inspect
longest = fruits.inject do |m, f|
  puts m
  if m.length < f.length
    f
  else
    m
  end
end
puts longest

puts duzina = fruits.inject(0) {|m, f| m + f.length}