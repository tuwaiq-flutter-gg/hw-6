import 'dart:math';
//Fun2
 magicEightBall({int? num}){
Random random = Random();
var randomNumber = random.nextInt(5);
if(num! > randomNumber){ 
  return print("Allowed");
}else if (num < randomNumber){ 
  return "Not Allowed" ;
}else{
 return "Try Agin";
}
}