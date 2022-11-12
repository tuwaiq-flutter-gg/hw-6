# Homework 5

### Loops

1.Create a for-in loop that loops through values 1 to 100, and prints each of the values.

2.Create a for-in loop that loops through each of the characters in the `tuwaiq` string, and prints each of the values alongside the index.

3.Create a [String: String] dictionary, where the keys are names of states and the values are their capitals. Include at least three key/value pairs in your collection, then use a for-in loop to iterate over the pairs and print out the keys and values in a sentence.

4.Suppose you try to build an app contains a list of different movements that can be tracked. You want to display each item in the list to the user. Use a for-in loop to loop through movements below and print each movement.

5.Now suppose your app uses a dictionary to keep track of your average heart rate during each of the movements in movements. The keys correspond to the movements listed above, and the values correspond to the average heart rate that your fitness tracker has monitored during the given movement. Loop through movementHeartRates below, printing statements telling the user his/her average heart rate during each exercise.

6.Create a while loop that simulates rolling a 6-sided dice repeatedly until a 1 is rolled. After each roll, print the value. 
   (Hint: use nextInt(1...6) to generate a random number between 1 and 6).

##### You may want your fitness tracking app to help runners track and improve their cadence. Running cadence is the number of steps a runner takes in a minute. To help with this, you decide to let the user input a cadence, after which your app will play a sound at each interval they need to take another step.

7.For this exercise, you'll simulate a "test run" of the cadence feature of your app. Use a while loop to print "Take a step" to the console 10 times. Once you've successfully printed "Take a step" to the console 10 times, add the following code to the end of your while loop: Thread.sleep(forTimeInterval: 60/cadence). This will put a pause between each itertion of the while loop so that the print statements actually occur at the proper cadence.

8.Create a for-in loop that will loop through alphabet. Inside the loop, print every other letter by continuing to the next iteration if you are on a letter you do not wish to print. (Hint: You can use the isMultiple(of:) method on Int to only print even indexed characters).

9.Create a [String: String] dictionary where the keys are names of states and the values are their capitals. Include at least three key/value pairs in your collection, with one of them being your home state. Now loop through this dictionary again, printing out the keys and values in a sentence, but add an if statement that will check if the current iteration is your home state. If it is, print("I found my home!") and break out of the loop.

#### The Heart Rate App: You decide you want your app's users to be able to put in a heart rate range they would like to hit, and then you want the app to suggest movements where historically the user has reached that heart rate range. The dictionary movementHeartRates below contains keys corresponding to the movements that the app has tracked, and values corresponding to the average heart rate of the user that your fitness tracker has monitored historically during the given movement.

10.Loop through movementHeartRates below and if the heart rate doesn't fall between lowHR and highHR, continue to the next movement and heart rate. Otherwise, print "You could go <INSERT MOVEMENT HERE>."

### Conditional 

11.

### List 

### Maps

### Functions

-Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.

-Write a function called `magicEightBall` that generates a random number and then uses either an if-else-if statements to print different responses based on the random number generated. `var randomNum = new Random().nextInt(4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.

-As you may have guessed, functions are key to making your app work. For example, in every exercise dealing with step count until now, you have simply assigned a number of steps to a steps variable. This isn't very realistic seeing as the number of steps you take increments one at a time and continues changing throughout the day.

-A reoccurring process like this is a perfect candidate for a function. Write a function called `incrementSteps` after the declaration of `steps` that will increment steps by one and then print its value. Call the function multiple times and observe the printouts.

-Similarly, if you want to regularly provide progress updates to your user, you can put your control flow statements that check on progress into a function. Write a function called `progressUpdate` after the declaration of `goal`. The function should print "You're off to a good start." if steps is less than 10% of goal, "You're almost halfway there!" if steps is less than half of goal, "You're over halfway there!" if steps is less than 90% of goal, "You're almost there!" if steps is less than goal, and "You beat your goal!" otherwise. Call the function and observe the printout.

-Write a new introduction function called `introduction`. It should take two String parameters, `name` and `home`, and one Int parameter, `age`. The function should print a brief introduction. I.e. if "Ahmed," "Rriyadh," and 32 were passed into the function, it might print "Ahmed, 32, is from Riyadh." Call the function and observe the printout.

-Write a function called `almostAddition` that takes two Int arguments. The first argument should not require an argument label. The function should add the two arguments together, subtract 2, then print the result. Call the function and observe the printout.

-Write a function called `multiply` that takes two Double arguments. The function should multiply the two arguments and print the result. The first argument should not require a label, and the second argument should have an external label, by, that differs from the internal label. Call the function and observe the printout.

-In many cases you want to provide input to a function. For example, the progress function you wrote in the Functioning App exercise might be located in an area of your project that doesn't have access to the value of steps and goal. In that case, whenever you called the function, you would need to provide it with the number of steps that have been taken and the goal for the day so it can print the correct progress statement.
-Rewrite the function progressUpdate, only this time give it two parameters of type Int called `steps` and `goal`, respectively. Like before, it should print "You're off to a good start." if steps is less than 10% of goal, "You're almost halfway there!" if steps is less than half of goal, "You're over halfway there!" if steps is less than 90% of goal, "You're almost there!" if steps is less than goal, and "You beat your goal!" otherwise. Call the function and observe the printout.
-Call the function a number of times, passing in different values of steps and goal. Observe the printouts and make sure what is printed to the console is what you would expect for the parameters passsed in.

-Your fitness tracking app is going to help runners stay on pace to reach their goals. Write a function called `pacing` that takes four Double parameters called `currentDistance`, `totalDistance`, `currentTime`, and `goalTime`. Your function should calculate whether or not the user is on pace to hit or beat goalTime. If yes, print "Keep it up!", otherwise print "You've got to push it just a bit harder!"

-Write a function called greeting that takes a String argument called `name`, and returns a String that greets the name that was passed into the function. I.e. if you pass in "Amal" the return value might be "Hi, Amal! How are you?" Use the function and print the result.

-Write a function that takes two Int arguments, and returns an Int. The function should multiply the two arguments, add 2, then return the result. Use the function and print the result.


#debugging
-One principle that can help in debugging and maintaining code is abstraction. For example, in your fitness tracking app some of your existing functions have been written to both perform a calculation and print a message. But it's very possible that you'll decide to change either the calculation or the message in the future. It will be easier to go back and change this if you separate the calculation from the message.
-As an example, write a function that only does a portion of what your previous pacing function did. This function will be called `calculatePace`. It should take three Double arguments called `currentDistance`, `totalDistance`, and `currentTime`, and should return a Double that will represent the time at which the user will finish the run based on the user's current distance and time. call the function and print the return value.

-Now write a function called `pacing` that takes four Double arguments called `currentDistance`, `totalDistance`, `currentTime`, and `goalTime`. The function should also return a String, which will be the message to show the user. The function should call `calculatePace`, passing in the appropriate values, and capture the return value. The function should then compare the returned value to `goalTime` and if the user is on pace return "Keep it up!", and return "You've got to push it just a bit harder!" otherwise. Call the function and print the return value.

-

