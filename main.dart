import 'dart:io';
import 'dart:math';

main() {
  introduceMyself();
  magicEightBall();
  incrementSteps();
  progressUpdate();
  introduction("Salem", "Riyadh", 26);
  almostAddition(4, 5);
  multiply(3, 9);
  intProgressUpdate(9990, 10000);
  intProgressUpdate(50, 10000);
  intProgressUpdate(4999, 10000);
  intProgressUpdate(6000, 10000);
  pacing(10, 20, 5, 11);
  greeting("Salem");
  print(intFunction(3, 3));
  print(maxInt(9, 17));
  print("Void function doesnt return or take values, only run the code.");
  bFCalc(180, 80);
  print(listOfElements(listInt: [1, 10, 14, -4]));
  increasing(num: 3);
  print(counter(letters: "Salem"));
  print(checkPass(""));
  print(checkPass("ssssss77"));
  print(checkPass("Ss"));
  print(primeNum(11));
  print(primeNum(4));
}

// 1
introduceMyself() {
  print("Hello, This is Salem.");
}

//2 Different outputs cuz we used Random()
magicEightBall() {
  Random random = new Random();
  int eightBall = random.nextInt(5);
  if (eightBall == 0) {
    print("You got 0");
  } else if (eightBall == 1) {
    print("You got 1");
  } else if (eightBall == 2) {
    print("You got 2");
  } else if (eightBall == 3) {
    print("You got 3");
  } else if (eightBall == 4) {
    print("You got 4");
  }
}

//3 Add one to the variable and prints it.
var steps = 3000;
incrementSteps() {
  steps++;
  print(steps);
}

//4
progressUpdate() {
  var goal = 10000;
  if (steps < (goal * 10 / 100)) {
    print("You're off to a good start.");
  } else if (steps < (goal / 2)) {
    print("You're almost halfway there!");
  } else if (steps < (goal * 90 / 100)) {
    print("You're over halfway there!");
  } else if (steps < goal) {
    print("You're almost there!");
  } else {
    print("You beat your goal!");
  }
}

//5
introduction(String name, String home, int age) {
  print("${name}, ${age}, is from ${home}");
}

//6
almostAddition(int s1, int s2) {
  var result = s1 + s2 - 2;
  print(result);
}

//7
multiply(double s11, double s22) {
  print(s11 * s22);
}

//8-9
intProgressUpdate(int steps, int goal) {
  if (steps < (goal * 10 / 100)) {
    print("You're off to a good start.");
  } else if (steps < (goal / 2)) {
    print("You're almost halfway there!");
  } else if (steps < (goal * 90 / 100)) {
    print("You're over halfway there!");
  } else if (steps < goal) {
    print("You're almost there!");
  } else {
    print("You beat your goal!");
  }
}

//10
pacing(double currentDistance, double totalDistance, double currentTime,
    double goalTime) {
  var gSpeed = totalDistance / goalTime;
  var cSpeed = currentDistance / currentTime;

  if (cSpeed < gSpeed) {
    print("You've got to push it just a bit harder!");
  } else {
    print("Keep it up!");
  }
}

//11
greeting(String name) {
  return print("Hi, ${name}! How are?");
}

//12
intFunction(int s111, int s222) {
  return (s111 * s222) + 2;
}

//13
maxInt(int max1, int max2) {
  if (max1 > max2) {
    return max1;
  } else
    return max2;
}

//14

/*
void addition(double x, double y) {   
  print(x + y);
  return x + y;
}*/

//15
bFCalc(int height, int wight) {
  var heightInMeter = height / 100;
  var bmi = wight / (heightInMeter * heightInMeter);
  print("Your BMI is ${bmi}");
}

//16
SalesCommision({double? Sales, double? commission}) {}
calender({int? month, int? year}) {}
squareRoot({double? num}) {}
isEven({int? num}) {}

//17
listOfElements({List? listInt}) {
  List sorted = [];
  for (; listInt!.length != 0;) {
    sorted.add(
        listInt.reduce((value, element) => value > element ? value : element));
    listInt.remove(
        listInt.reduce((value, element) => value > element ? value : element));
  }
  return sorted;
}

//18
increasing({int? num}) {
  for (var x = 1; x <= num!; x++) {
    for (var s = 1; s <= x; s++) {
      stdout.write("$s ");
    }
    print("");
  }
}

//19
counter({String? letters}) {
  int letter = 0;
  for (var x in letters!.split("")) {
    if (x.contains(new RegExp('^[a-zA-Z]+'))) {
      letter++;
    }
  }
  return letter;
}

//20
checkPass(String password) {
  RegExp regex = RegExp("(?=(.*?\\d){2})[a-zA-Z0-9]{8,}");
  if (password.isEmpty) {
    return 'Please enter password';
  } else if (!regex.hasMatch(password)) {
    return 'Password does not meet password rules';
  } else {
    return 'Great! You Are secure';
  }
}

//21
primeNum(int num) {
  for (var i = 2; i <= (num ~/ 2); i++) {
    if (num % i == 0) {
      return "$num is not a prime number.";
    }
  }
  return "$num is a prime number.";
}
