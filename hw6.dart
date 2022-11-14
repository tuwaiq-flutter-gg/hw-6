import 'package:hw6/hw6.dart' as hw6;
import 'dart:math';






void main() {
  introduceMyself();//......1...
  
magicEightBall();//.......2
incrementSteps();//........3
//......4.......................
//progressUpdate (110,1200);
//progressUpdate (150,300);
//progressUpdate (900,1000);
//progressUpdate (1100,1200);
//////////////////////////////////////
introduction(name: "Ahmed", home: "Riyadh", age: 32);//5.......

almostAddition(20,30);//.........6.....
multiply(7,8);//........7.....
progressUpdate (110,1200);
//........8&9..........
progressUpdate (110,1200);
progressUpdate (150,300);
progressUpdate (900,1000);
progressUpdate (1100,1200);
//.........10..........
  pacing(currentDistance: 90,totalDistance: 110,currentTime: 20,goalTime: 30);
  greeting(name:"Amal");//.....11....
  newfunch(12,14);//.....12...
  compfunction(10, 5);//.......13
  //.....14....
  print(
       "Yes it causes errors. The void function has two syntax, one with an argument and the other without, and both of them agree that they do not have a return clause");
       //.....15.....
       BMI(weight: 100, height: 200);
       //......17.......
   sort(sort1: [1, 10, 14, -4]);
   //.......18......
   display(numbar: 3);
   //.....19.....
   countsletters(let: "khuloud @kK 12");
   //.......20.......
   Password(a: "KhuloudNaif35467234@");
   //.........21......
     Number(a: 5);













}

//*### Functions...........1......
//.....1.........
introduceMyself(){
  print("my name is khulod Alshammari form Hail ,my dream to becom of the best programmers");
}
//.......2........
magicEightBall(){
   Random random = new Random();
var randomNumber = random.nextInt(5);

if ( randomNumber==0){
  print(" this is number 0");
}else if (randomNumber==1){
 print(" this is number 1");

}else if (randomNumber==2){
 print(" this is number 2");

}else if (randomNumber==3){
 print(" this is number 3");

}else {
  print(" this is number 4");
}

}
//.........3.............
incrementSteps(){
  var steps = 90;
  steps +=1;
  print(steps);
}
//...........4..........
 
//progressUpdate(int? steps , goal){
 // if(steps !<goal*10/100){
  //   print("You're off to a good start");
  // }
  // else if(steps ==goal/2){
  //   print("You're almost halfway there!");
   //}
  //  else if(steps <goal*90/100){
    // print("You're over halfway there!");
   //}
   //else if(steps <goal){
    // print("You're almost there!");
   //}
  // else {
    // print("you beat your goal!");
   //}

   //}
   //...........5.............
   introduction({String? name, String? home, int? age }){
    print("$name,$home,$age");

   }
   //.........6............
   almostAddition(int arg1,int arg2 ){
    var result; 
    result =(arg1+arg2)-2;
    print("${result}") ;
   }
   //.........7........
   multiply(int first, int second){
      var argemunt = (first*second);
    print("${argemunt}");


   }
   //.........8&9........

progressUpdate(int? steps , goal){
  if(steps !<goal*10/100){
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
   //..........10...........

 pacing({double? currentDistance, totalDistance, currentTime, goalTime }){

   double currentPace=currentDistance!/currentTime;
   double goalPace= totalDistance/goalTime;

   if(currentPace<goalPace){
     print("You've got to push it just a bit harder!");
   }else{

     print("Keep it up!");

   }

 }
 //..........11..........

 greeting({String? name}){

  return print("Hi, $name! How are you?");
 
 
 }
 //.......12.........
newfunch(int num1, int num2){
  var num3=num1+num2+2;
  return print(num3);

}
//.......13.........
compfunction(int? i,int? j){
  if(i!>j!){
   
    return print(i);
  }else{
    return print(j);
 
}
}
//......14............

 //void addition(double x, double y) {   
 //  print(x + y);
//   return x + y;}
//...........15......

 BMI({double? weight, double? height}) {
   double bodyfat = weight! / (pow(height!, 2));
   return print("Your body mass index (BMI) = $bodyfat");
 }
//......16.........
 salescommission({double? sales_amount, double? commission_rate}) {}
 // b:
 calendar({int? month, int? year}) {}
 // c:
 squareroot({double? num}) {}
 // d:
 iseven({int? num}) {}
 //.........17.....

 sort({List<int>? sort1}) {
   int c;
   for (int a = 0; a < sort1!.length - 1; a++) {
     for (int b = 0; b < (sort1.length - 1) - a; b++) {
       if (sort1[b] < sort1[b + 1]) {
         c = sort1[b];
         sort1[b] = sort1[b + 1];
         sort1[b + 1] = c;
       }
     }
   }
   return print(sort1);
 }
 //......18.....

 display({int? numbar}) {
   String c;
   for (int a = 1; a <= numbar!; a++) {
     c = ' ';
     for (int b = a; b > 0; b--) {
       c = c + " $b ";
     }
     print(c);
   }
   return;
 }
 //.......19.......

 countsletters({String? let}) {
   let = let!.toUpperCase();
   var c = 0;
   for (var a in let.split("")) {
     if (a.contains(new RegExp(r'^[A-Z]+$'))) {
       c += 1;
     }
   }
   return print("The number of letters $c");
 }
 //...........20.........

       Password ({String? a}) {
   var c = 0;
   if (a!.contains(RegExp(r'^[K-KH-z1-7]+$'))) {
     if (a.length >= 8) {
       for (var b in a.split("")) {
         if (b.contains(RegExp(r'^[[K-KH-z1-7]+$'))) {
           c += 1;
         }
       }
       if (c >= 2) return print("Great! You Are secure");
     }
   }
   return print('Password does not meet password rules');
 }
 //........21........

    Number({int? a}) {
   for (var b = 5; b <= a! / b; b++) {
     if (a % b == 0) {
       return print("it's not a prime Numbrt");
     }
   }
   return print("it's a prime Numbrt");
 }





   

 



