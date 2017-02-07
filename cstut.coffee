# comments are just hash's
###
3 hash's for multiline comments
and stuff
###
name = "Phil" # there is no var and no semicolons
csOutput = document.getElementById("csoutput")

csOutput.innerHTML = "Hello #{name}<br>"

aString = "I'm a String"

csOutput.insertAdjacentHTML('beforeend', 'aString is a String<br>') if typeof aString is 'string'

largestNum = Number.MAX_VALUE
smallestNum = Number.MIN_VALUE

largeNumStr = "The largest number is #{largestNum}.<br>"

smallNumStr = "The smallest number is #{smallestNum}.<br>"

csOutput.insertAdjacentHTML('beforeend', largeNumStr + '<br>')
csOutput.insertAdjacentHTML('beforeend', smallNumStr + '<br>')

areYouHappy = no
csOutput.insertAdjacentHTML('beforeend', 'areYouHappy is a Boolean<br>') if typeof areYouHappy is 'boolean'

csOutput.insertAdjacentHTML('beforeend', "5 + 2 = #{5 + 2}<br>") # this interpolation needs to be between double quotes ("") other wise the math operation will not be executed
csOutput.insertAdjacentHTML('beforeend', "5 - 2 = #{5 - 2}<br>")
csOutput.insertAdjacentHTML('beforeend', "5 * 2 = #{5 * 2}<br>")
csOutput.insertAdjacentHTML('beforeend', "5 / 2 = #{5 / 2}<br>")
csOutput.insertAdjacentHTML('beforeend', "5 % 2 = #{5 % 2}<br>")

precisionTest = 0.1000000000000001;
csOutput.insertAdjacentHTML('beforeend', "Precision: #{precisionTest + 0.1000000000000011}<br>")

balance = 1563.87
csOutput.insertAdjacentHTML('beforeend', "Monthly Payment #{(balance/12).toFixed(2)}<br>")

randNum = 5
csOutput.insertAdjacentHTML('beforeend', "randNum++ = #{randNum++}<br>") # randNum is now equal to 6 but since the ++ is placed after the var being displayed before the incrementing is executed so it appears on the page as 5
csOutput.insertAdjacentHTML('beforeend', "++randNum = #{++randNum}<br>") #the randNum has been incremented up from 6 to 7 but it displays as seve on the page because the ++ comes before the var in the interpolation
csOutput.insertAdjacentHTML('beforeend', "randNum-- = #{randNum--}<br>")
csOutput.insertAdjacentHTML('beforeend', "--randNum = #{--randNum}<br>")

csOutput.insertAdjacentHTML('beforeend', "randNum+= 5: #{randNum+= 5}<br>") #you can use += as well as other similar operators
csOutput.insertAdjacentHTML('beforeend', "randNum *= 5: #{randNum*= 5}<br>")

#order of operations:
csOutput.insertAdjacentHTML('beforeend', "3 + 2 * 5 = #{3 + 2 * 5}<br>") #multiplication has a hire precendent over addition
csOutput.insertAdjacentHTML('beforeend', "(3 + 2) * 5 = #{(3 + 2) * 5}<br>") #parentheses have hire precedent than multiplication

#other maths:
csOutput.insertAdjacentHTML('beforeend', "Math.E = #{Math.E}<br>")
csOutput.insertAdjacentHTML('beforeend', "Math.PI = #{Math.PI}<br>")
csOutput.insertAdjacentHTML('beforeend', "Math.abs(-8) = #{Math.abs(-8)}<br>")
csOutput.insertAdjacentHTML('beforeend', "Math.cbrt(1000) = #{Math.cbrt(1000)}<br>") #cuberoot
csOutput.insertAdjacentHTML('beforeend', "Math.ceil(6.45) = #{Math.ceil(6.45)}<br>")
csOutput.insertAdjacentHTML('beforeend', "Math.floor(6.45) = #{Math.floor(6.45)}<br>")
csOutput.insertAdjacentHTML('beforeend', "Math.round(6.45) = #{Math.round(6.45)}<br>")
csOutput.insertAdjacentHTML('beforeend', "Math.log(10) = #{Math.log(10)}<br>")
csOutput.insertAdjacentHTML('beforeend', "Math.log10(10) = #{Math.log10(10)}<br>")
csOutput.insertAdjacentHTML('beforeend', "Math.pow(4,2) = #{Math.pow(4,2)}<br>")
csOutput.insertAdjacentHTML('beforeend', "Math.sqrt(1000) = #{Math.sqrt(1000)}<br>")

#random
newRandNum = Math.floor(Math.random() * 100) + 1
csOutput.insertAdjacentHTML('beforeend', "Random Number = #{newRandNum}<br>")

#using strings
fName = "Jeff"
lName = "Snow"
csOutput.insertAdjacentHTML('beforeend', fName + " " + lName + "<br>")
longString = "This is such a long string but I'll use it."
csOutput.insertAdjacentHTML('beforeend', "String length : #{longString.length}<br>")
csOutput.insertAdjacentHTML('beforeend', "Index of String : #{longString.indexOf("but")}<br>")
csOutput.insertAdjacentHTML('beforeend', "Index 8's character : #{longString.charAt(8)}<br>")
csOutput.insertAdjacentHTML('beforeend', "Word at 27 : #{longString.slice(27,31)}<br>")
csOutput.insertAdjacentHTML('beforeend', "After 27 : #{longString.slice(27)}<br>")
longString = longString.replace("use", "kick the crap out of")
csOutput.insertAdjacentHTML('beforeend', "New String : #{longString}<br>")
strArray = longString.split(" ")
csOutput.insertAdjacentHTML('beforeend', "New String split into an array : #{strArray}<br>")
for x in strArray
  csOutput.insertAdjacentHTML('beforeend', "#{x}<br>")
gappyString = "   Why so     so many    spaces?



"
csOutput.insertAdjacentHTML('beforeend', "String with gaps: #{gappyString}<br>")
gappyString = gappyString.trim() #removes extra spaces
csOutput.insertAdjacentHTML('beforeend', "String with trim function : #{gappyString}<br>")
csOutput.insertAdjacentHTML('beforeend', "Uppercase: #{longString.toUpperCase()}<br>")
csOutput.insertAdjacentHTML('beforeend', "Lowercase: #{longString.toLowerCase()}<br>")

###conditionals
We use indentation instead of brackets
== and !== are the same as === and !== normal JS.
###

# age = 3
# age = 16
age = 19
if age >= 18
  csOutput.insertAdjacentHTML('beforeend',
    "You can vote!<br>")

  if (age >= 16)
    csOutput.insertAdjacentHTML('beforeend',
      "You can drive also!<br>")

else if (age >=16)
  csOutput.insertAdjacentHTML('beforeend',
    "You can drive!<br>")
else
    csOutput.insertAdjacentHTML('beforeend',
      'You\'ll be 16 soon<br>')
