import 'dart:io';
import 'dart:math';

void main() {
  introduceMyself();
  magicEightBall();
  incrementSteps();
  progressUpdate(goal: 49);
  introduction(name: "Rashed", age: 22, home: "Najran");
  almostAddition(sub: 10, sub2: 3);
  multiply(5, 10);
  progressUpdate1(steps: 5000, goal: 10000);
  pacing(
      currentDistance: 10.0,
      totalDistance: 11.0,
      currentTime: 5.0,
      goalTime: 100.0);

  greeting(name: "Amjad");
  sum(sum1: 2, sum2: 2);
  comparison(com1: 5, com2: 2.0);
  calculateBMI(weight: 64, height: 158);
  matrix_arrangement([-4, -2, 5, 9]);
  dsInt(3);
  print(couLet(letters: "Rashed"));
  print(checkPass(""));
  print(checkPass("rrrrrr12"));
  print(checkPass("Rr"));
  print(checkNum(11));
  print(checkNum(50));
}

//1
introduceMyself() {
  print(
      "This is Rashed, a student from Tuwaiq Academy, specifically in the flutter camp");
}

//2

magicEightBall() {
  Random random = new Random();
  var randomNumber = random.nextInt(5);

  if (randomNumber == 0) {
    print("This is number 0");
  }
  if (randomNumber == 1) {
    print("This is number 1");
  } else if (randomNumber == 2) {
    print("This is number 2");
  }
  if (randomNumber == 3) {
    print("This is number 3");
  } else if (randomNumber == 4) {
    print("This is number 4");
  }
}

//3

incrementSteps() {
  var steps = 2000;
  print("Currently steps $steps");
  if (steps < 10000) {
    steps++;
    print("Currently steps $steps");
  }
}

//4

progressUpdate({var goal}) {
  print("You're off to a good start");

  if (goal < 10) {
    print("You're almost halfway there!");
  } else if (goal > 11 && goal <= 50) {
    print("You're over halfway there!");
  }
  if (goal > 51 && goal <= 90) {
    print("You're almost there!");
  } else {
    print("yoy beat your goal");
  }
}

//5

introduction({String? name, String? home, int? age}) {
  print("$name, $age, is from $home");
}

//6

almostAddition({int? sub, sub2}) {
  print("${sub! + sub2 - 2}");
}

//7

multiply(double? sum1, sum2) {
  print("${sum1! * sum2}");
}

//8

progressUpdate1({int? steps, goal}) {
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

//10

pacing({double? currentDistance, totalDistance, currentTime, goalTime}) {
  double currentPace = currentDistance! / currentTime;
  double goalPace = totalDistance / goalTime;

  if (currentPace < goalPace) {
    print("You've got to push it just a bit harder!");
  } else {
    print("Keep it up!");
  }
}

//11

greeting({String? name}) {
  print("Hi, $name! How are you?");
}

//12

sum({int? sum1, sum2}) {
  var sum3 = (sum1! * sum2) + 2;
  print(sum3);
  return sum3;
}

//13

comparison({double? com1, com2}) {
  if (com1! > com2) {
    print(com1);
    return com1;
  } else {
    print(com2);
    return com2;
  }
}

//14

/*void addition(double x, double y) {   
  print(x + y);
  return x + y;
}*/

/*It cannot return a value because of Void. If we write Void in before the function,
 the function cannot return any value, but it can only print and yes,
  it caused errors in the construction of the code because we assign a value to the function and it does not receive values*/

//15

calculateBMI({double? weight, int? height}) {
  var body = weight! / pow(height! / 100, 2);
  print("body mass is $body");
  return body;
}

//16

// double commission(){}
// String calendar(){}
// double square_root(){}
// bool even(){}

//17

List<int> matrix_arrangement(List<int> list) {
  for (var i = 0; i < list.length - 1; i++) {
    for (var j = 0; j < (list.length - 1) - i; j++) {
      if (list[j] < list[j + 1]) {
        var temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
        print(list);
      }
    }
  }

  return list;
}

//18

dsInt(int? num) {
  for (var i = 1; i <= num!; i++) {
    for (var r = 1; r <= i; r++) {
      stdout.write("$r ");
    }
    print("");
  }
}

//19

couLet({String? letters}) {
  int letter = 0;
  for (var x in letters!.split("")) {
    if (x.contains(new RegExp("^[a-zA-Z]+"))) {
      letter++;
    }
  }
  return letter;
}

//20

checkPass(String password) {
  RegExp pass = RegExp("(?=(.*?\\d){2})[a-zA-Z0-9]{8,}");
  if (password.isEmpty) {
    return " Please enter password";
  } else if (!pass.hasMatch(password)) {
    return "Password does not meet password rules";
  } else {
    return "Great! You Are secure";
  }
}

//21

checkNum(int r) {
  for (var i = 2; i <= (r ~/ 2); i++) {
    if (r % i == 0) {
      return "$r is not a prime number.";
    }
  }
  return "$r is a prime number.";
}
