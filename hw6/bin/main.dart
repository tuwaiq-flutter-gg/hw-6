import 'dart:math';

var steps = 1418;
var goal = 10000;
void main() {
  // introduceMyself();
  // magicEightBall();
  // magicEightBall();
  // magicEightBall();
  // incrementSteps();
  // incrementSteps();
  // incrementSteps();
  // progressUpdate();
  // introduction("Ahmed", "Riyadh", 32);
  // almostAddition(x: 5, y: 10);
  // progressUpdate1(500, 10000);
  // progressUpdate1(1500, 10000);
  // progressUpdate1(5500, 10000);
  // progressUpdate1(9500, 10000);
  // progressUpdate1(11000, 10000);
  // pacing(9, 20, 10, 20);
  // greeting("Amal");
  // print(AddandMultiply(5, 5));
  // print(maxint(5, 10));
  // addition(10, 10);
  // BMI(70, 1.70);
  // print(sortlist([5, 10, -3, 18]));
  // decreaseInt(5);
  // prime(11);
  // NumofLetters("1he@@llo11");
  // pass("DYUGDUQWD62525");
}

//Q1
introduceMyself() {
  print("My Name is Faisal and I'm 25 years old");
}

//Q2
magicEightBall() {
  Random random = Random();
  var randomNumber = random.nextInt(5);
  if (randomNumber == 0) {
    print("Random Number Generated is 0");
  } else if (randomNumber == 1) {
    print("Random Number Generated is 1");
  } else if (randomNumber == 2) {
    print("Random Number Generated is 2");
  } else if (randomNumber == 3) {
    print("Random Number Generated is 3");
  } else {
    print("Random Number Generated is 4");
  }
}

//Q3
incrementSteps() {
  steps++;
  print(steps);
}

//Q4
progressUpdate() {
  if (steps < (goal / 10)) {
    print("You're off to a good start.");
  } else if (steps < (goal / 2)) {
    print("You're almost halfway there!");
  } else if (steps < (goal * 0.9)) {
    print("You're over halfway there!");
  } else if (steps < goal) {
    print("You're almost there!");
  } else {
    print("You beat your goal!");
  }
}

//Q5
introduction(String name, String home, int age) {
  print("$name, $age, is from $home.");
}

//Q6
almostAddition({required x, required y}) {
  print((x + y) - 2);
}

//Q7
multiply(double x, double y) {
  print(x * y);
}

//Q8,9
progressUpdate1(int steps, int goal) {
  if (steps < (goal / 10)) {
    print("You're off to a good start.");
  } else if (steps < (goal / 2)) {
    print("You're almost halfway there!");
  } else if (steps < (goal * 0.9)) {
    print("You're over halfway there!");
  } else if (steps < goal) {
    print("You're almost there!");
  } else {
    print("You beat your goal!");
  }
}

//Q10
pacing(double currentDistance, totalDistance, currentTime, goalTime) {
  var pace = currentDistance / currentTime;
  var pacegoal = totalDistance / goalTime;
  if (pace >= pacegoal) {
    print("Keep it up!");
  } else {
    print("You've got to push it just a bit harder!");
  }
}

//Q11
greeting(String name) {
  print("Hi, $name! How are you?");
}

//Q12
int AddandMultiply(int x, int y) {
  return (x * y) + 2;
}

//Q13
int maxint(int x, int y) {
  if (x > y) {
    return x;
  } else if (y > x) {
    return y;
  } else {
    return 0; //in case they are the same
  }
}

//Q14
void addition(double x, double y) {
  print(x + y);
  //return x + y;
  print(
      "No I cant use the return statment because the return will have a value of type other than void ");
}

//Q15
BMI(double weight, height) {
  print(weight / (height * height));
}

//Q16
double? sales(double sales, rate) {}
calender(int month, year) {}
double? square(double num) {}
bool? even(int x) {}

//Q17
List<int> sortlist(List<int> li) {
  for (int i = 0; i < li.length; i++) {
    for (int j = 0; j < (li.length - 1) - i; j++) {
      if (li[j] < li[j + 1]) {
        int temp = li[j];
        li[j] = li[j + 1];
        li[j + 1] = temp;
      }
    }
  }
  return li;
}

//Q18
decreaseInt(int x) {
  String p;
  for (int i = 1; i <= x; i++) {
    p = "";
    for (int j = i; j > 0; j--) {
      p += "$j\t";
    }
    print(p);
  }
}

//Q19
NumofLetters(String str) {
  int x = 0;
  for (int i = 0; i < str.length; i++) {
    if (str[i].contains(RegExp(r'[a-z]'))) x++;
  }
  print(x);
}

//Q20
pass(String pass) {
  bool valid = true;
  var c = 0;
  if (pass.length < 8) {
    valid = false;
  }
  for (int i = 0; i < pass.length; i++) {
    if (!pass[i].contains(RegExp(r"^[\p{L}\p{N}]+$", unicode: true))) {
      valid = false;
    }
    if (pass[i].contains(RegExp(r'[\d]'))) {
      c++;
    }
  }
  if (c < 2) {
    valid = false;
  }
  print(c);
  print(valid);
}

//Q21
prime(int x) {
  bool pr = false;
  for (int i = 2; i < x / 2; i++) {
    if (x % i == 0) {
      pr = true;
      break;
    }
  }
  pr ? print("The number $x is not prime") : print("The number $x is prime");
}
