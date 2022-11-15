# Homework 6

### Functions

1.Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.

2.Write a function called `magicEightBall` that generates a random number and then uses either an if-else-if statements to print different responses based on the random number generated.
```
Random random = new Random();
var randomNumber = random.nextInt(5);
``` 
`Hint: implement dart:math before using Random class`

will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.

#### As you may have guessed, functions are key to making your app work. For example, in every exercise dealing with step count until now, you have simply assigned a number of steps to a steps variable. This isn't very realistic seeing as the number of steps you take increments one at a time and continues changing throughout the day.

3.Write a function called `incrementSteps` after the declaration of `steps` that will increment steps by one and then print its value. Call the function multiple times and observe the printouts.

#### Similarly, if you want to regularly provide progress updates to your user, you can put your control flow statements that check on progress into a function. 

4.Write a function called `progressUpdate` after the declaration of `goal`. The function should print "You're off to a good start." if steps is less than 10% of goal, "You're almost halfway there!" if steps is less than half of goal, "You're over halfway there!" if steps is less than 90% of goal, "You're almost there!" if steps is less than goal, and "You beat your goal!" otherwise. Call the function and observe the printout.

5.Write a new introduction function called `introduction`. It should take two String parameters, `name` and `home`, and one Int parameter, `age`. The function should print a brief introduction. I.e. if "Ahmed," "Rriyadh," and 32 were passed into the function, it might print "Ahmed, 32, is from Riyadh." Call the function and observe the printout.

6.Write a function called `almostAddition` that takes two Int arguments. The first argument should require an argument label. The function should add the two arguments together, subtract 2, then print the result. Call the function and observe the printout.

7.Write a function called `multiply` that takes two Double arguments. The function should multiply the two arguments and print the result. Call the function and observe the printout.

#### In many cases you want to provide input to a function. For example, the progress function you wrote above in the Functioning App exercise might be located in an area of your project that doesn't have access to the value of steps and goal. In that case, whenever you called the function, you would need to provide it with the number of steps that have been taken and the goal for the day so it can print the correct progress statement.

8.Rewrite the function `progressUpdate`, only this time give it two parameters of type Int called `steps` and `goal`, respectively. Like before, it should print "You're off to a good start." if steps is less than 10% of goal, "You're almost halfway there!" if steps is less than half of goal, "You're over halfway there!" if steps is less than 90% of goal, "You're almost there!" if steps is less than goal, and "You beat your goal!" otherwise. Call the function and observe the printout.

9.Call the function a number of times, passing in different values of steps and goal. Observe the printouts and make sure what is printed to the console is what you would expect for the parameters passsed in.

#### Your fitness tracking app is going to help runners stay on pace to reach their goals. 

10.Write a function called `pacing` that takes four Double parameters called `currentDistance`, `totalDistance`, `currentTime`, and `goalTime`. Your function should calculate whether or not the user is on pace to hit or beat goalTime. If yes, print "Keep it up!", otherwise print "You've got to push it just a bit harder!"

11.Write a function called `greeting` that takes a String argument called `name`, and returns a String that greets the name that was passed into the function. I.e. if you pass in "Amal" the return value might be "Hi, Amal! How are you?" Use the function and print the result.

12.Write a function that takes two Int arguments, and returns an Int. The function should multiply the two arguments, add 2, then return the result. Use the function and print the result.

13.Write a function that take two Int arguments, and returns the max of the two Int. The function should compare the two arguments, then return the result. Use the function and print the result.

14.Can you have a return statement in a void function? Does the return statement in the following function cause syntax errors? Explain you answer.

```
void addition(double x, double y) {   
  print(x + y);
  return x + y;
}
```

15.Body mass index (BMI) is a measure of body fat based on height and weight. It can be calculated by taking your weight in kilograms and dividing by the square of your height in meters. Write a function that take 
parameters `weight` , `height` and then display the BMI.

16.Write function headers (not the bodies) for the following methods:

a. Return a sales commission, given the sales amount and the commission rate.
b. Display the calendar for a month, given the month and year.
c. Return a square root of a number.
d. Test whether a number is even, and returning true if it is.

17.Write a function that take a list of Int elemnts and return a sorted list descending without using sort().  I.e. if you pass in "[1,10,14,-4]" the return value might be "[14,10,1,-4]" Use the function and print the result.

18.Write a function that takes an Int, to display it in increasing order.
 I.e. if you pass 3 display a pattern as follows:
 
```
1
2 1 
3 2 1 
```

19.Write a function that counts the number of letters in a given string. Do not counts numbers or special characters.

20.Check Password: Write a function that checks whether a string is a valid password. Suppose the password rules are as follows:
If the password meets the rules print "Great! You Are secure" or "Password does not meet password rules" if not.

a. A password must have at least eight characters.
b. A password consists of only letters and digits.
c. A password must contain at least two digits.

21. Write a function that takes an Int, then use a for loop to check if it's a Prime Number or not.





