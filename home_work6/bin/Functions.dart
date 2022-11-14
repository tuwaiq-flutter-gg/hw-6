import 'dart:math';

introduceMyself() {
  print("my name is khaled and my age is 22 ,I like what i do now -_-");
}

//
magicEightBall() {
  int min = 0;
  int max = 4;

  int randomnum = min + Random().nextInt((max + 1) - min);

  print("Generated Random number between $min and $max is: $randomnum");
}

//
var steps;
incrementSteps() {
  steps = 1;
  // Random random = new Random();
  // steps = random.nextInt(10000);
  // print("your steps is ${steps}");
  for (var i = 0; i <= 6;) {
    steps++;
    print("steps $steps");
    i++;
  }
}

//
var goal;
// progressUpdate() {
//   goal = 10;
//   if (steps < goal * 0.1) {
//     print("You're almost halfway there!");
//   } else if (steps < goal * 0.5) {
//     print("You're over halfway there!");
//   } else if (steps < goal * 0.9) {
//     print("You're almost there!");
//   }
// }

//
introduction({String? name, String? home, String? age}) {
  print([name, home, age]);
}

//
almostAddition({int? num1, int? num2}) {
  print(num1! + num2! - 2);
}

var numm = 2;
multiply({int? num1}) {
  print(num1! * numm);
}

progressUpdate({int? steps, goal}) {
  if (steps! < (goal * .1)) {
    print("You're off to a good start.");
  } else if (steps < goal * .5) {
    print("You're almost halfway there!");
  } else if (steps < goal * .9) {
    print("You're over halfway there!");
  } else if (steps >= goal * .9 && steps < goal) {
    print("You're almost there!");
  } else {
    print("yoy beat your goal");
  }
}

pacing(
    {double? currentDistance,
    double? totalDistance,
    double? currentTime,
    double? goalTime}) {
  double currentPace = currentDistance! / currentTime!;
  double goalPace = totalDistance! / goalTime!;

  if (currentPace < goalPace) {
    print("You've got to push it just a bit harder!");
  } else {
    print("Keep it up!");
  }
}

//
greeting({String? name}) {
  print("hi ${name}");
}

//
two({int? i1, int? i2}) {
  var r = i1! * i2! + 2;
  return r;
}

//
maxx({int? i1, int? i2}) {
  var mm = max(i1!, i2!);
  return mm;
}

//
BMI({int? height, int? weight}) {
  var bmi = weight! / (height!/100* 2);
  print(bmi);
}
//
descending({List? list}){

List resultedList=[];

for( ;list!.length!=0;){

resultedList.add(list.reduce((value, element) => value > element ? value : element));
list.remove(list.reduce((value, element) => value > element ? value : element));
}

return resultedList;
}
