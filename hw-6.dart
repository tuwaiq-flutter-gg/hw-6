//import 'dart:html_common';
import 'dart:ffi';
import 'dart:io';

import 'dart:isolate';

import 'dart:math';
//var name1="Ahmed",home1 ="Riyadh" ;
//int age1=32;

//var steps =100;
main(){

introduceMyself();
magicEightBall();
////steps= incrementSteps(steps:steps);
incrementSteps(steps: 100);
////step= incrementSteps(steps: step);
////step= incrementSteps(steps: step);
progressUpdate();
introduction(name: "Ahmed",home: "Riyadh", age: 32);
almostAddition(x:2,y:3);
multiply(m: 4.5 ,n:5.5);
progressUpdate2(steps: 50, goal: 3000);
progressUpdate2(steps: 500, goal: 3000);
progressUpdate2(steps: 2000, goal: 3000);
progressUpdate2(steps: 2900, goal: 3000);
progressUpdate2(steps: 3000, goal: 3000);

pacing (currentDistance: 200,totalDistance: 400, currentTime: 12,goalTime: 30);
print(greeting ("Nama"));
print(multiply1(3, 5));

print(max(6, 7));
print("weight");
BMI(weight:  70.0,height: 165.5);
}
// -1
introduceMyself (){
  print("My Name Is Nama , I study Dart nowadays ");

}
//var intValue = Random().nextInt(10); // Value is >= 0 and < 10.
//-2
magicEightBall(){
for (var i=1;i<10;i++){
var randomNumber =Random().nextInt(5);

//do while(randomNumber!= 0){

if (randomNumber.isEven && randomNumber > 0) {
print(" this is an even number : $randomNumber");

//while (randomNumber != 0 ) {}

}
else if (randomNumber.isOdd){

print("I am Odd  $randomNumber ");
}
else print("=================== .  $randomNumber ====================");

}
}

//-3
incrementSteps({steps}){


steps++;
print(steps);


}


//-4

progressUpdate(){
var goal=3000;
print("===========================progressUpdate=======");
for (var i =1,steps=0 ;i <=7; i++, steps+=500){
  //print("=====if steps====");
if (steps< goal/10){

  print("You're off to a good start.");
}
else if (/*steps > goal/10 &&*/ steps < (goal/2)){
print("You're almost halfway there!");
}
else if (steps < (goal*0.9)){
print("You're over halfway there!");
}
else if (steps < goal){
print("You're almost there!" );
}
else {print("You beat your goal!");
}
print(steps);
}
}
introduction({String?name,String?home, int?age }){

print("$name , $age , is from $home");
}


void almostAddition({int? x, int? y}) => print( x! * y! - 2);


void multiply ({double? m, double? n}) => print(m! * n!);


progressUpdate2({double? steps, double? goal}){


  if (steps!< goal!/10){

  print("You're off to a good start.");
}
else if (/*steps > goal/10 &&*/ steps < (goal/2)){
print("You're almost halfway there!");
}
else if (steps < (goal*0.9)){
print("You're over halfway there!");
}
else if (steps < goal){
print("You're almost there!" );
}
else {print("You beat your goal!");
}
}

pacing({double? currentDistance, double?totalDistance, double? currentTime,double? goalTime})

{
double? currenpac = currentDistance!/currentTime!;
double? goalpace= totalDistance!/ currentTime!;

if (currenpac < goalpace)
    print("You've got to PUSH it just a bit harder!");
  else
    print("KEEP it up!");
}


String greeting(String name) => "Hi $name! How are you?";

multiply1(int i, int j) => i * j + 2;

int max(int i , int j) => i>j ? i :j;

//14
// the void functstion not return value , it just do something in it's body

BMI({double? weight , double? height})
{
  print(weight! / (height! * height));
}


SleCommis (Double amout, Double rate  ) {}
calener (int month, int year){ }
squareRoot(doublenum){}
iseven(int num){}







