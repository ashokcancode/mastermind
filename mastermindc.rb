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
dismastercode= mastercode.join(' ')
puts 'a mastercode has been set now try to break it'
end
