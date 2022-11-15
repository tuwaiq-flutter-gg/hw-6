import 'dart:math';
import 'dart:io';

void main() {
  magicEightBall();
  List<int> l = [10, 2, 5];
//#9
  progressUpdate(10000, 11000);
  progressUpdate(10000, 1000);
  progressUpdate(10000, 5000);
  progressUpdate(10000, 9000);

  pattern(3);
  print(sortList(l));
}

//#1
introduceMyself() {
  print("Hi, my name is Mansour and i am a programer");
}

//#2
magicEightBall() {
  Random random = new Random();
  var randomNumber = random.nextInt(5);
  if (randomNumber == 0) {
    print("the number is zero");
  } else if (randomNumber == 1) {
    print("the number is one");
  } else if (randomNumber == 2) {
    print("the number is two");
  } else if (randomNumber == 3) {
    print("the number is three");
  } else if (randomNumber == 4) {
    print("the number is four");
  }
}

//#3
incrementSteps(var steps) {
  steps++;
  return steps;
}

//#4
progressUpdate1() {
  // var reslt = (steps / gole) * 100;
  var gole = 1000;
  if (gole < 10) {
    print("You're off to a good start.");
  } else if (gole < 50) {
    print("You're almost halfway there!");
  } else if (gole < 90) {
    print("You're over halfway there!");
  } else if (gole > 90 && gole < 100) {
    print("You're almost there!");
  } else {
    print("You beat your goal!");
  }
}

//#5
introduction(String name, String home, int age) {
  print("Hi, $name,$age and he is from $home");
}

//#6
almostAddition(int num1, num2) {
  var result = (num1 + num2) - 2;
  //return result;
  print(result);
}

//#7
multiply(double num1, num2) {
  print(num1 * num2);
}

//#8
progressUpdate(var gole, var steps) {
  var reslt = (steps / gole) * 100;
  if (reslt < 10) {
    print("You're off to a good start.");
  } else if (reslt < 50) {
    print("You're almost halfway there!");
  } else if (reslt < 90) {
    print("You're over halfway there!");
  } else if (reslt > 90 && reslt < 100) {
    print("You're almost there!");
  } else if (steps > gole) {
    print("You beat your goal!");
  }
}

//#10
pacing(double currentDistance, totalDistance, currentTime, goalTime) {
  if (currentDistance >= totalDistance && currentTime >= goalTime) {
    print("Keep it up!");
  } else {
    print("You've got to push it just a bit harder!");
  }
}

//#11
greeting(String name) {
  print("Hi, $name! How are you?");
}

//#12
multbli(var num1, num2) {
  int result = num1 * num2;
  return result;
}

//#13
maxOftwo(int num1, num2) {
  if (num1 > num2) {
    return num1;
  } else if (num1 < num2) {
    return num2;
  } else
    print("they are equle");
}
//#14
/* void addition(double x, double y) {   
  print(x + y);
  return x + y;
}*/
// the void function should not return any value, the code will not run.

//#15
BMI(double weight, height) {
  double result = weight / (height * height);
  return result;
}

//#16

void salesCommission(double sales, commission) {}
void calendar(int month, year) {}
void squareRoot(var num) {}
void isEven(int num) {}

//#17

sortList(List<int> list) {
  List sortedList = [];

  for (; list.length != 0;) {
    sortedList.add(
        list.reduce((value, element) => value > element ? value : element));
    list.remove(
        list.reduce((value, element) => value > element ? value : element));
  }

  return sortedList;
}

//#18
pattern(var num) {
  for (var i = 1; i <= num; i++) {
    for (var j = 1; j <= i; j++) {
      stdout.write("$j ");
    }
    print("");
  }
}

//#19
letters({var word}) {
  var count = 0;

  for (var i in word.split("")) {
    if (i.contains(new RegExp('^[a-zA-Z]+'))) {
      count++;
    }
  }

  print(count);
}

//#20
passWord(var pass) {
  var count = 0;
  if ((pass.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]')))) {
    if (pass.length >= 8) {
      for (var i in pass.split("")) {
        if (i.contains(new RegExp('0-9'))) {
          count++;
        }
        if (count >= 2) {
          return "Great! You Are secure";
        } else {
          return "Password does not meet password rules";
        }
      }
    }
  }
}

//#21
isPrime(int num) {
  for (var i = 2; i <= (num ~/ 2); i++) {
    if (num % i == 0) {
      return true;
    } else
      return false;
  }
}
