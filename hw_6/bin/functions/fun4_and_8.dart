
 
//Fun4 + 8
//--------
//  progressUpdate({double? goal}){
// if ( goal! < 10){ // if steps is less than 10% of goal
// print("You're off to a good start.");
// }else if(goal < 10 / 2 ){ //if steps is less than half of goal
// print("You're almost halfway there!");
// }else if(goal < 90 ){
//   print("You're over halfway there!"); //if steps is less than 90% of goal
// }else  if(goal < 90 / 2 ) {
//   print("You're almost there!"); // if steps is less than goal
// }else{
//   print("You beat your goal!"); // otherwise.
// }
// }

// Fun8
//-----
 progressUpdate({int? goal , int? steps}){
if ( steps! < goal!){ // if steps is less than 10% of goal
print("You're off to a good start.");
}else if(steps < goal / 2 ){ //if steps is less than half of goal
print("You're almost halfway there!");
}else if(steps < goal ){
  print("You're over halfway there!"); //if steps is less than 90% of goal
}else  if(steps < goal / 2 ) {
  print("You're almost there!"); // if steps is less than goal
}else{
  print("You beat your goal!"); // otherwise.
}
}