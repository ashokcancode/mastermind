
def playbyuser(m,n)
  attemptcode=[]
puts "put the values you want to select as you option"
  usercfc=gets.chomp.split('')
usercfc.each{|v| attemptcode.append(n[v.to_i])}
puts attemptcode.join(' ')
common=m&attemptcode
right=0
      wright=0
  if common.any?
    common.each{|k| mi=m.find_index(k) 
    pi=attemptcode.find_index(k) 
    if mi==pi 
      right=right+1
    else 
      wright=wright+1
    end}
  else
      puts 'all the values were wrong'
  end
  puts"right#{right} wr#{wright}"
  if right>0
  puts "this many were right #{right}"
  end
  if wright>0
  puts "this many were half right#{wright}"
  end
end
puts 'mastermind'
puts 'for codesetter type 1 for codebreaker type 2'
userc=gets.chomp.to_i
codevalues=["🥭","🍓","🍉","🍎","🍆","🍌","🥥","🐼"]
#depending on the user a code is set or manually created
confirm=1
if userc==1
# if user selects to be codesetter
  while confirm == 1
  mastercode=[]
 puts 'please type the numbers without space to make code'
userin=gets.chomp.split('')
userin.each{|m| mastercode.append(codevalues[m.to_i])}
puts mastercode.join(' ')
puts 'shall we proced if not then press 1 or 2 to go ahead'
confirm=gets.chomp.to_i
end
else 
  #if user selects to be code breaker
  mastercode = codevalues.sample(4)
puts dismastercode= mastercode.join(' ')
puts 'a mastercode has been set now try to break it'
playbyuser(mastercode,codevalues)
end

