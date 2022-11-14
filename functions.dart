import 'dart:collection';
import 'dart:ffi';
import 'dart:math';


main(){
introduceMyself();
magicEightBall();
incrementSteps();
//progressUpdate();
introduction(name:"Ruba" , age:22 , home:"Tabuk");
almostAddition(22 , 35);
multiply(10, 20);
progressUpdate( 789,  1000);
progressUpdate( 456, 8000);
progressUpdate( 7000,  9000);
pacing(100,30,29,8800);
greeting("amal");
sumfun(30,20);
}

//Write a function called introduceMyself that prints a brief introduction of yourself. Call the function and observe the printout.
introduceMyself(){
  print("My name is Ruba albalawi , I'm 22 years old ");
}

//Write a function called magicEightBall that generates a random number and then uses either an if-else-if statements to print different responses based on the random number generated.
magicEightBall(){
   Random random = new Random();
var randomNumber = random.nextInt(5);

if(randomNumber==0){
  print("the number is zero");
}
else if(randomNumber==1){
 print("the number is one");
}else if(randomNumber==2){
 print("the number is two");
}else if(randomNumber==3){
 print("the number is three");
}else if(randomNumber==4){
 print("the number is four");
}else if (randomNumber==5){
 print("the number is five");
}

}

//Write a function called incrementSteps after the declaration of steps that will increment steps by one and then print its value. Call the function multiple times and observe the printouts.

incrementSteps(){

  var steps=0;
  steps+=1;
  print(steps);
}


//Write a function called progressUpdate after the declaration of goal.

progressUpdate(int steps , int goal){
  if(steps <goal*10/100){
    print("You're off to a good start");
  }
  else if(steps ==goal/2){
    print("You're almost halfway there!");
  }
   else if(steps <goal*90/100){
    print("You're over halfway there!");
  }
  else if(steps <goal){
    print("You're almost there!");
  }
  else {
    print("you beat your goal!");
  }
  
  }
//Write a new introduction function called introduction. 
    introduction({String?name , String?home , int ?age}){
    print("$name,$age , is from $home");

  }

//Write a function called almostAddition that takes two Int arguments.

almostAddition(int number1,int number2 ){
  var result;
  result=(number1 + number2)-2;
  return result;


  }
//7.Write a function called multiply that takes two Double arguments. 
multiply(double first , double second){
  print(first*second);
  
}
//Write a function called pacing that takes four Double parameters called currentDistance, totalDistance, currentTime, and goalTime.
pacing(double currentDistance , double totalDistance , double currentTime , double goalTime){
  var pace=currentTime/(currentDistance/totalDistance);
  if(pace<goalTime){
    print("KEEP IT UP!!");
  }
  else{
    print("You've got to push it just a bit harder!");
  }
   
}
//Write a function called greeting that takes a String argument called name
greeting(String?name){
  print("Hi, $name! How are you");
}
//Write a function that take two Int arguments, and returns the max of the two Int. The function should compare the two arguments, then return the result. Use the function and print the result.

sumfun(int fnum , int snum){
  var sum=fnum+snum+2;
  return sum;

}

//.Can you have a return statement in a void function? Does the return statement in the following function cause syntax errors? Explain you answer.

void addition(double x, double y) {   
//   print(x + y);
//   return x + y;
print("it will cause an syntax error , we use void only to print not to return");
 }

 //.Body mass index (BMI) is a measure of body fat based on height and weight. 
 bmi(int weight , int height){
  var mass=(weight/height*height);
 }

//a. Return a sales commission, given the sales amount and the commission rate.
Sales(double Sales ,commisionRate){

}
//b. Display the calendar for a month, given the month and year.
calender(int month, year){

}
//c. Return a square root of a number.
squareRoot(double? n1){

}
// Test whether a number is even, and returning true if it is.
evenum(int n1){

}
//Write a function that take a list of Int elemnts and return a sorted list descending without using sort(). I.e. if you pass in "[1,10,14,-4]" the return value might be "[14,10,1,-4]" Use the function and print the result.

descending(List list){
  List dis=[];

for( ;list!.length!=0;){

dis.add(list.reduce((value, element) => value > element ? value : element));

list.remove(list.reduce((value, element) => value > element ? value : element));
}

return dis;
}
//8.Write a function that takes an Int, to display it in increasing order. I.e. if you pass 3 display a pattern as follows:

count(){
 var  numm=3;
  for(var i=1; i<=numm! ;i++){


for(var x=1; x<=i; x++ ){

  print("$x ");



}
print("");
}
  }
//Write a function that counts the number of letters in a given string. Do not counts numbers or special characters.

  letter(){
    int count = 0;
  String Alphabet = "Hellworld";
  for (var element in String.split("")) {
    if (Alphabet.contains(element)) {
      count++;
    }
  }
  print("$String letters count is : $count");
}
//Check Password: Write a function that checks whether a string is a valid password. Suppose the password rules are as follows: If the password meets the rules print "Great! You Are secure" or "Password does not meet password rules" if not.

  password(String password) {
  List<String> passwordChar = password.split("");
  int DigitsCount = 0;
  for (var element in passwordChar) {
    if (element.contains(new RegExp(r'[\d]'))) {
      DigitsCount++;
    }

  }
  if (password.length > 8 &&
      RegExp(r'^[A-Za-z0-9]+$').hasMatch(password) &&
      DigitsCount >= 2) {
    print("Great! You Are secure");
  } else {
    print("Password does not meet password rules");
  }
}

//
bool IsPrime(int Number) {
  for (var i = 2; i <= Number / i; ++i) {
    if (Number % i == 0) {
      return false;
    }
  }
  return true;
}


