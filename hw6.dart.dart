import 'dart:io';
import 'dart:math';

main(){
  double num1=2.5;
introduceMyself();//1
magicEightBall();//2
incrementSteps(100);//3
incrementSteps(101);//3
incrementSteps(400);//3
progressUpdate(4500);//4
introduction("Ahmed","Riyadh", 32);//5
almostAddition(10, 20);//6
multiply(num1, 10.5);//7
progressUpdate1(4500,10000);//8-9
progressUpdate1(13000,12000);//8-9
progressUpdate1(2450,5000);//8-9
pacing(60.0, 100, 30, 45);//10
print(greeting("Amal"));//11
print(multiplyupdate(2,6));//12
print("number ${compare(7, 10)} is greater");//13
addition(4, 5);//14
calBMI(60, 160);//15
print(SortedList([1,10,14,-4]));//17
DisplayIncreasingOrder(3);//18    
print(CountsNumberLetters("hi my name is ruba, my age= 20"));//19
checks("tioj54.g");//20 
PrimeNumber(8);//21


}
//__________________1___________________
introduceMyself (){
print("My name is Ruba");
}
//__________________2___________________
magicEightBall() {
Random random = new Random();
var randomNumber = random.nextInt(5);
if(randomNumber==0){
print("random number is ${randomNumber}");
}else if(randomNumber==1){
print("random number is ${randomNumber}");
}else if(randomNumber==2){
print("random number is ${randomNumber}");
}else if(randomNumber==3){
print("random number is ${randomNumber}");
}else if(randomNumber==4){
print("random number is ${randomNumber}");
}else{
print("random number is ${randomNumber}");
}
}
//__________________3___________________
incrementSteps (int steps){
  print(steps+=steps);
}
//__________________4___________________
progressUpdate(int step){
  var goal= 10000;
  if(step<goal/10){
    print("You're off to a good start.");
  }else if(step<goal/2 ){
    print("You're almost halfway there!");
  }else if (step<goal*.9){
    print("You're over halfway there!");
  }else if(step<=goal){
    print("You're almost there!");
  }else{
    print("You beat your goal!");
  }
}
//__________________5___________________
introduction(String name, String home, int age){
  var name="Ahmed";
  var home= "Riyadh";
  var age= 32;
  print("${name} ${age} is from ${home}.");
}
//__________________6___________________
almostAddition (int num1, int num2){
var sum= num1+num2;
sum-=2;
print(sum);
}
//__________________7___________________
multiply (double num1, double num2){
var sum= num1*num2;
print(sum);
}
//__________________8-9___________________
progressUpdate1(int steps, int goal){
  if(steps<goal/10){
    print("You're off to a good start.");
  }else if(steps<goal/2 ){
    print("You're almost halfway there!");
  }else if (steps<goal*.9){
    print("You're over halfway there!");
  }else if(steps<=goal){
    print("You're almost there!");
  }else{
    print("You beat your goal!");
  }
}
//__________________10___________________
pacing (double currentDistance, double totalDistance, double currentTime, double goalTime){
  var CurrentPace = currentDistance/currentTime;//20
  var TimePace= totalDistance/goalTime;//2.22
  if(CurrentPace>TimePace){
    print("Keep it up!");
  }else{
    print("You've got to push it just a bit harder!");
  }
}
//__________________11___________________
greeting (String name){
return"Hi, ${name}! How are you?";
}
//__________________12___________________
multiplyupdate (int num1, int num2){
var multiply= num1*num2;
multiply+=2;
return multiply;
}
//__________________13___________________
compare (int num1, int num2){
if(num1>num2){
  return num1;
}else{
return num2;
}
}
//__________________14___________________
void addition(double x, double y) {   
  print(x + y);
  // return x + y;
  print("Because the function type is void can't return the value");
}
//__________________15___________________
calBMI(int weight,int height){
var BMI= weight/((height*height)/100);
//var BMI= weight/(height*height)*10000; logical 
//print(BMI); to check 
}
//__________________16___________________
SalesCommission(num SalesAmount,num CommissionRate){}//a
void calendar(int month, int year){}//b
SquareRoot(int number){}//c
TestNUmEven(int number){}//d
//__________________17___________________
SortedList(List num){
   num.sort();
   return num;
}
//__________________18___________________
DisplayIncreasingOrder(int number){
  List numbers = [] ;
  for (var i = 1; i <=number; i++) {
    numbers.add(i);
    for (var i = numbers.length-1 ; i >= 0; i--) { stdout.write("${numbers[i]} "); }
    print("");
  }
}
//__________________19___________________
CountsNumberLetters(String name){
  int char = 0;
  for (var x in name.split("")) {
    if (x.contains(RegExp('^[a-zA-Z]+'))) {
      char++;
    }
  }
  return char;
}
//__________________20___________________// number 2 digit??
checks(String password){
  if(password.length==8 && !password.contains( RegExp(r'[!@#$%^&*(),.?":{}|<>]')) && password.contains(RegExp(r'[a-z][0-9]'))){
    print("Great! You Are secure");
  }else{
    print("Password does not meet password rules"); 
  }
}
//__________________21___________________
PrimeNumber(int number){
    if (number % 2 == 0) {
      print("${number} is not Prime Number");
    }else{
      print("${number} is prime Number");
    }
}