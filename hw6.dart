import 'dart:math';

main (){
introduceMyself();
magicEightBall();
incrementSteps();
almostAddition(10, 20);
introduction();
multiply(6, 6);
progressUpdate(5000,10000 );
pacing(590, 600, 3, 6);
greeting("Rahaf");
twoInt(3, 7);
 compareTwo(100, 300);
print("it can't be void because it will exceute inside the function whithout return anything ");
clacuBMI(45, 158);


}






introduceMyself(){
  print("Hi my name is Rahaf, I'm 23 and I'm studing in Tuwaiq Flutter ");
}

magicEightBall(){

Random random = new Random();
var randomNumber = random.nextInt(5);
if (randomNumber==4){
  print("You are lucky!! you git 4");

} else if (randomNumber==3){
  print("Good! you git 3");

}else if (randomNumber==2){
  print("you git 2");
} else {
  print("Try again");
}
}

incrementSteps(){
 var steps = 0;
 steps++;
 print(steps);
}


// progressUpdate(){
//   const goal = 10000;
//   var step = 5000;
 
//   if (step<goal/10){
//     print("You're off to a good start");
//   } else if (step<goal/2){
//     print("You're almost halfway there!");

//   }else if (step==goal/2){

// print("You're over halfway there!");
//   } else{
//     print("You're almost there!");
//   }
  
// }


introduction({String? name, String? home, int? age}){


  name = "Rahaf";
  home = "Abha";
  age = 23;



  print("${name}, from ${home},${age} ");

}



almostAddition(int? x,y){

print("${x!+y-2}");

}

multiply(double? a,b){
  a= 5;
  print ("${a*b}");

}

progressUpdate(int step ,goal){

 
  if (step<goal/10){
    print("You're off to a good start");
  } else if (step<goal/2){
    print("You're almost halfway there!");

  }else if (step==goal/2){

print("You're over halfway there!");
  } else{
    print("You're almost there!");
  }
  
}


pacing(double currentDistance, totalDistance, currentTime,goalTime){

  double current = currentDistance / currentTime;
  double total = totalDistance / goalTime;
  if (current==total){
    print("Keep it up!");

  } else{
    print("You've got to push it just a bit harder!");
  }

}


greeting(String name){
  print("Hi ${name} How are you ? ");
}


twoInt (int i , j){
var result =i*j+2;
print(result);

return result;
}


 compareTwo(int first, second){
if(first>second){
  print(first);

}else {
  print(second);
}

}

// void addition(double r, double f) {   
//   print(r + f);
//   return r + f;
// }


clacuBMI (double weight , height){
  //const double BMI = weight/height;
print(weight/(height^2));

}

sort(List? sortList){
   sortList = [1,10,14,-4];
   sortList.sort();
   print(sortList);


}
