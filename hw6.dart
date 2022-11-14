import 'package:hw6/hw6.dart' as hw6;
import 'dart:math';
import 'dart:io';





void main() {
  introduceMyself();//......1...
  
magicEightBall();//.......2
incrementSteps();//........3
//......4.......................
progressUpdate (110,1200);
progressUpdate (150,300);
progressUpdate (900,1000);
progressUpdate (1100,1200);
//////////////////////////////////////
introduction(name: "Ahmed", home: "Riyadh", age: 32);//5.......

almostAddition(20,30);//.........6.....
multiply(7,8);










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

   

 



