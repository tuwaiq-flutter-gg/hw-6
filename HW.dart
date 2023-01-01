
import 'dart:math';
import 'dart:io';

main(){

introduceMyself(){
  print("My name is muhammed alaqeel , 23 years old ");
}

///////
///
///

magicEightBall(){

  Random random =  Random();
var randomNumber = random.nextInt(5);

if(randomNumber==0){
  print("this is number zero");
}else if(randomNumber==1){

  print("this is number one");

}else if(randomNumber==2){

  print("this is number two");

}else if(randomNumber==3){

  print("this is number three");

}else {

  print("this is number four");

}

}

magicEightBall();
magicEightBall();
magicEightBall();
magicEightBall();


var steps =90;
incrementSteps(){

steps++;

}

incrementSteps();
print(steps);


var goal =100;

// progressUpdate(){

//   if(steps<(goal*.1)){
//     print("You're off to a good start.");
//   }else if(steps<goal*.5){
//     print("You're almost halfway there!");


//   }else if(steps<goal*.9){
//         print("You're over halfway there!");

//   }else if(steps>=goal*.9){
//         print("You're almost there!");

//   }
//   else{
//     print("yoy beat your goal");
//   }


// }



progressUpdate({int? steps,goal}){

  if(steps!<(goal*.1)){
    print("You're off to a good start.");
  }else if(steps<goal*.5){
    print("You're almost halfway there!");


  }else if(steps<goal*.9){
        print("You're over halfway there!");

  }else if(steps>=goal*.9 && steps<goal){
        print("You're almost there!");

  }
  else{
    print("yoy beat your goal");
  }


}

progressUpdate(steps: 1100,goal: 1200);

progressUpdate(steps: 10,goal: 1200);
progressUpdate(steps: 400,goal: 1200);

progressUpdate(steps: 1300,goal: 1200);



introduction({String? name, String? home, int? age }){

print("$name, $age, is from $home.");

}

introduction(name: "Ahmed", home: "Riyadh", age: 32);


almostAddition({int? i1,i2 }){

  print(" ${i1!+i2-2}");
};

almostAddition(i1: 10,i2: 20);
multiply({ double? first, second }){
  print("${second+first!}");


}

multiply(first: 2,second: 3);



pacing({double? currentDistance, totalDistance, currentTime, goalTime }){

  double currentPace=currentDistance!/currentTime;
  double goalPace= totalDistance/goalTime;

  if(currentPace<goalPace){
    print("You've got to push it just a bit harder!");
  }else{

    print("Keep it up!");

  }

}

pacing(currentDistance: 100,totalDistance: 200,currentTime: 10,goalTime: 19);


greeting({String? name}){

  return "Hi, $name! How are you?";

}


print(greeting(name:"Amal"));




multAdd2({int? i1,i2}){

  return (i1!*i2)+2;
}


print(multAdd2(i1: 2,i2: 3));


compare({int? i1,i2}){

  if(i1!>i2){
    return i1;
  }
return i2;
}

print(compare(i1: 20,i2: 5));






// void addition(double x, double y) {   
//   print(x + y);
//   return x + y;
// }


print("void functio will not return anything, it only excute the code inside, the code above will cause an error");


bmi({double? weight, height}){

  print(weight!/(height*height));

}

bmi(weight: 85,height: 170);


SalesCommision({double? SalesAmount,commisionRate}){

}

calender({int? month, year}){

}

squareRoot({double? num}){

}

isEven({int? num}){

}

descending({List? list}){

List resultedList=[];

for( ;list!.length!=0;){

resultedList.add(list.reduce((value, element) => value > element ? value : element));
list.remove(list.reduce((value, element) => value > element ? value : element));
}

return resultedList;
}


print(descending(list: [1,10,14,-4,]));



display({int? num}){

    // stdout.write("Hello ");

for(var i=1; i<=num! ;i++){


for(var j=1; j<=i; j++ ){

  stdout.write("$j ");



}
print("");
}

}

display(num: 5);


letters({String? s}){

var count=0;


for(var i in s!.split("")){

if(i.contains(new RegExp('^[a-zA-Z]+'))){
count++;
}
}

return count;
}



print("");
print(letters(s:"ery!@#!%#44"));

password({String? pass}){

if(!(pass!.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]')))) {

if(pass.length>=8){

var count =0;
  for(var i in pass.split("")){

    if(i.contains(new RegExp(r'[0-9]'))){
      count++;
    }

  }

  if(count>=2){
    return "valid";
  }


}

}

return "invalid";
}




print(password(pass: "wZedlwkf22"));




isPrime({int? num}){

for(var i=2; i<=(num!~/2);i++){
if(num%i==0){
  return false;
}

}

return true;
}

print(isPrime(num: 3));
}



