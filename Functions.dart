

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  
  // 1
  introduceMyself(); //calling this function will print a brief introduction of myself

  // 2
  //calling this function will generate differnt random numbers in every call and every run.
  magicEightBall();
  magicEightBall();
  magicEightBall();
  magicEightBall();
  

  // 3
  // calling this function will increment the steps by 10 and in every call the steps will be incremented
  print(steps);
  incrementSteps();
  print(steps);
  incrementSteps();
  print(steps);
  incrementSteps();
  print(steps);

  // 4
  // calling this function will print how faar you are from the goal
  // progressUpdate();

  // 5
  // this function will print information about differnt persons depending on the parameters
  introduction(name: "shatha", home: "riyadh" , age: 23);

  // 6
  //  I'm not sure that I understand the argument labeling 
  almostAddition(num1: 2, num2: 4);

  // 7
  //  I'm not sure that I understand the argument labeling 
  multiply(num1: 2 , num2: 2);

  // 8
  progressUpdate(steps: 6000 , goal: 9000);

  // 9
  progressUpdate(steps: 300, goal: 10000);
  progressUpdate(steps: 4000, goal: 5000);
  progressUpdate(steps: 100, goal: 200);
  progressUpdate(steps: 400, goal: 1000);

  // 10
  pacing(currentDistance: 100, totalDistance: 200, currentTime: 2 , goalTime: 5 );

  // 11
  print(greeting(name: "SHATHA"));

  // 12
  print(multiplyTwoAddTwo(num1: 2, num2: 2));
  // 13
  print("the max int for 10 and 50 is ${maxInt(num1: 10, num2: 50)}");
  // 14
  // you can't have a return in a void function because the void means that this function does not return a value

  // 15
  print("your IBM is :");
  BMI(hight: 150, wight: 50);

  // 16
  // a. double salesCommission({double? salesAmount, double? commissionRate}) {}
  // b. MonthCalendar({String? Month, String? year}){}
  // c. num squareRoot({num? number}){}
  // d. bool OddOrEven({num? num1, num? num2}){}

  // 17
  List<int> numbers = [1,10,14,-4];
  print("unsorted : ");
  print(numbers);
  print("sorted : ");
  print(sortList(unsorted: numbers));

  // 18
  increasing(num: 3);

  // 19
  print("Letter counter for s1ss33j is ${letterCounter(text: "s1ss33j")}");

  // 20
  CheckPassword(pass: "s1234567");

  // 21
  isPrimeNumber(num: 11);

}

// 1
introduceMyself(){
  print("my name is shatha and I'm studying flutter at tuwaiq acadimy");
}

// 2
magicEightBall(){
  Random random = new Random();
  var randomNumber = random.nextInt(5);

  if((randomNumber % 2 ) == 0 ){
    print("this is the random number $randomNumber and it is even.");
  }else{
    print("this is the random number $randomNumber and it is odd.");
  }
}

// 3
var steps = 1000 ;
incrementSteps(){
  steps += 10 ;
}

// 4
var goal = 10000 ;
// progressUpdate(){
//   if( steps < ( (goal/100)*10 ) ){
//     print("You're off to a good start.");
//   } else if( steps < (goal/2)){
//     print("You're almost halfway there!");
//   } else if( steps < ( (goal/100)*90) ) {
//     print("You're over halfway there!");
//   } else if( steps < goal ) {
//     print("You're almost there!");
//   } else {
//     print("You beat your goal!");
//   }
// }

// 5
introduction({String? name, String? home , int? age}){
  print("this is $name, I'm $age years old, and I'm from $home");
}

// 6
//  I'm not sure that I understand the argument labeling 
almostAddition({int? num1, int? num2} ){
  print( num1! + num2! - 2 );
}

// 7
multiply({double? num1, double? num2}){
   print( num1! * num2! );
  //  I'm not sure that I understand the argument labeling 
}

// 8
progressUpdate({int? steps, int? goal}){
  if( steps! < ( (goal!/100)*10 ) ){
    print("You're off to a good start.");
  } else if( steps < (goal/2)){
    print("You're almost halfway there!");
  } else if( steps < ( (goal/100)*90) ) {
    print("You're over halfway there!");
  } else if( steps < goal ) {
    print("You're almost there!");
  } else {
    print("You beat your goal!");
  }
}

// 10
pacing({ double? currentDistance , double? totalDistance, double? currentTime, double? goalTime}){

  var pace = currentTime! * (totalDistance! / currentDistance!) ;

  if(pace <= goalTime! ){
    print("Keep it up!");
  } else {
    print( "You've got to push it just a bit harder!");
  }

}

// 11

greeting({String? name}){

  return "Hi, $name! How are you?" ;

}

// 12
multiplyTwoAddTwo({ int? num1 , int? num2}){
  return num1! * num2! + 2 ;
}

// 13
maxInt({ int? num1 , int? num2}){
  
  return num1! > num2! ? num1 : num2 ;

}

// 14
// you can't have a return in a void function because the void means that this function does not return a value
void addition(double x, double y) {   
  print(x + y);
  // return x + y;
}

// 15

BMI({int? hight, int? wight}){
  print(wight! / (hight!*2) );
}

// 16
// a. double salesCommission({double? salesAmount, double? commissionRate}) {}
// b. MonthCalendar({String? Month, String? year}){}
// c. num squareRoot({num? number}){}
// d. bool OddOrEven({num? num1, num? num2}){}

// 17
sortList({List<int>? unsorted}){
  List<int> sorted = [];
  int length = unsorted!.length;

  for (var i = 0; i < length; i++) {
    int max = unsorted[0];
    for (var element in unsorted) {
      if(element > max){
        max = element ;
      }
    }
    sorted.add(max);
    unsorted.remove(max);
  }

  return sorted ;
}

// 18

increasing({int? num}){
  List numbers = [] ;
  for (var i = 1; i <= num!; i++) {
    numbers.add(i);
    for (var i = numbers.length-1 ; i >= 0; i--) { stdout.write("${numbers[i]} "); }
    print("");
  }
}

// 19

letterCounter({String? text}){
  int counter = 0 ;
  for (var i = 0; i < text!.length; i++) {
    if(text[i].contains(new RegExp(r'[a-z]'))){
      counter++ ;
    } 
  }
  return counter;
}

// 20
CheckPassword({String? pass}){
  if(pass!.length >= 8 && pass.contains(new RegExp(r'[a-z][0-9]'))){
    var i = 0 ;
    var digits = 0 ;
    while(i<pass.length){
      if(pass[i].contains(new RegExp(r'[0-9]'))){
        digits++;
      }
      i++;
    }

    if(digits >= 2 ){
      print("Great! You Are secure");
    }
      
  }else {
    print("Password does not meet password rules");
  }
}

// 21

isPrimeNumber({int? num}){
  for (var i = 2; i < num! / i; i++) {
    if (num % i == 0) {
      print('$num is not a prime number.');
      break;
    }
  }
  print('$num is a prime number.');
  
}













