def power(a,b)
    c=a
    (b-1).times do
    a = a * c
    end
    return a
  end
#puts power(2,3);
def factorial(a)
    b=1
    begin
      b = b*a
      a -= 1
    end while a>0
    b
  end
  #puts factorial(5)

def uniques(arr)
    out = [];
    for item in arr
       if(!out.include?(item))
           out.push(item)
       end
   end
   puts out
 end
#uniques([1,5,"frog", 2,1,3,"frog"])
def combinations(arr1,arr2)
  out = [];
  for i in arr1
    for j in arr2
      out.push(i+j)
    end
  end
  return out
end
#puts combinations(["on","in"],["to","rope"])
def is_prime?(num)
  i = 2
  if num<2  
    return false
  elsif num==2
    return true
  end
  while i<num do
    if num%i===0
      return false
    else
      i+=1
    end
  end
  return true
end
#puts is_prime?(7)
#puts is_prime?(14)

def overlap(r1,r2)
  calc1 = []
  calc2 = []
  i=r1[0][0]
  j=r1[0][1]
   while i<r1[1][0]-1 do
    while j<r1[1][1]-1 do
      calc1.push([i+1,j+1])
      j+=1
    end
    j=r1[0][1]
    i+=1
  end
  i=r2[0][0]
  j=r2[0][1]
   while i<r2[1][0]-1 do
    while j<r2[1][1]-1 do
      calc2.push([i+1,j+1])
      j+=1
    end
    j=r2[0][1]
    i+=1
  end
  count = (calc1+calc2).length;
  countpress = (calc1+calc2).uniq.length
  if(count==countpress)
    return false
  else
    return true
  end
end
#puts overlap([ [0,0],[3,3] ],[ [1,1],[4,5] ] )
#puts overlap([ [0,0],[1,4] ],[ [1,1],[3,2] ] )

def counting_game(people_num,number)
  people = people_num
  num = number
  step = 1
  i = 1
  inum = 1
  while inum<num+1 do
    puts "people number " + i.to_s + " says " + inum.to_s
    if((inum%7==0)&&(inum%11==0))
      step *= -1
      i+=step
    elsif(inum%7==0)
      step *= -1
    elsif(inum%11==0)
      i+=step
    end
    i+= step
    if(i>=people+1)
      i-=people
    elsif(i<=0)
      i+=people
    end
    inum+=1
  end
end

#counting_game(10,100)
