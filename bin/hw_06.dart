import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {
// Functions
  // task:1
  introduceMyself();

  // tsak:2
  magicEightBall();

  // task:3
  int step = 0;
  incrementSteps(step);
  incrementSteps(step);
  incrementSteps(step);

  // task:4
  int goal = 10000;
  progressUpdate(3023, goal);

  // task:5
  introduction("`Rakan", "Riyadh", 22);

  // task:6
  almostAddition(i: 1, j: 4);

  // task:7
  multiply(i: 2, j: 4);

  // task:9
  progressUpdate1(3032, goal);
  progressUpdate1(9876, goal);

  // task:10
  pacing(
      currentDistance: 100, totalDistance: 200, currentTime: 10, goalTime: 19);

  // task:11
  print(greeting("Rakan"));

  // task:12
  print(fun1(2, 5));

  // task:13
  print(max(2, 5));

  // task:17
  print(descending([1, 10, 14, -4]));

  print("-=-=-=-=-=-=-");
  // task:18
  pattern(5);

  print(countStr("keep it up! tes't "));
  print(isPrime(12));
}

// task:1
void introduceMyself() => print("Hi, my name is rakan, and i'm student in KSU");

// tsak:2
void magicEightBall() {
  Random random = Random();
  var randomNumber = random.nextInt(8);
  if (randomNumber == 1)
    print("You get the first number yay.");
  else if (randomNumber == 2)
    print("You get the second number yay.");
  else if (randomNumber == 3)
    print("You get the therid number yay.");
  else
    print("Try again ):");
}

// task:3
void incrementSteps(int step) => print(++step);

// task:4
void progressUpdate(int steps, int goal) {
  if (steps < goal * 0.10)
    print("You're off to a good start");
  else if (steps < goal / 2)
    print("You're almost halfway there!");
  else if (steps < goal * 0.9)
    print("You're over halfway there!");
  else if (steps < goal)
    print("You're almost there");
  else
    print("You beat your goal!");
}

// task:5
void introduction(String name, String home, int age) =>
    print("$name, $age, is from $home.");

// task:6
void almostAddition({int? i, int? j}) => print(i! + j! - 2);

// task:7
void multiply({double? i, j}) => print(i! * j!);

// task:8
progressUpdate1(int steps, goals) => progressUpdate(steps, goals);

// Your fitness tracking app is going to help runners stay on pace to reach their goals.

// task:10
void pacing(
    {double? goalTime,
    double? currentTime,
    double? totalDistance,
    double? currentDistance}) {
  double currentPace = currentDistance! / currentTime!;
  double goalPace = totalDistance! / goalTime!;

  if (currentPace < goalPace)
    print("You've got to push it just a bit harder!");
  else
    print("Keep it up!");
}

// task:11
String greeting(String name) => "Hi, $name! How are you?";

// task:12
int fun1(int i, int j) => i * j + 2;

// task:13
int max(int i, int j) => i > j ? i : j;

// task:14
// you can not retuen anything other then void in a void function.
// you can use retuen statement to return void, used just to exit the function.

// task:15
bmi({double? weight, double? height}) => print(weight! / (height! * height));

// task:16
void SalesCommision(double Amount, double Rate) {}

void calender(int month, int year) {}

void squareRoot(double num) {}

void isEven(int num) {}

// task:17
List<num> descending(List<num> list) {
  // bubbleSort
  int lengthOfArray = list.length;
  for (int i = 0; i < lengthOfArray - 1; i++) {
    for (int j = 0; j < lengthOfArray - i - 1; j++) {
      if (list[j] < list[j + 1]) {
        // Swapping using temporary variable
        num temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
  return list;
}

// task:18
void pattern(int x) {
  for (int i = 0; i < x; i++) {
    for (int j = 1 + i; j > 0; j--) {
      stdout.write("$j ");
    }
    print("");
  }
}

// task:19
countStr(String str) {
  var count = 0;
  var chars = new RegExp('[a-zA-Z]');
  print(str.split(""));
  for (var i in str.split("")) if (i.contains(chars)) count++;
  return count;
}

// task:20
isPassword(String pass) {
  if ((pass.length >= 8)) {
    if (pass.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      var count = 0;
      for (var i in pass.split("")) {
        if (i.contains(new RegExp(r'[0-9]'))) {
          count++;
        }
      }

      if (count > 1) {
        return "valid";
      }
    }
  }

  return "invalid";
}

// task:21
isPrime(int num) {
  for (var i = 2; i <= (num ~/ 2); i++) if (num % i == 0) return false;
  return true;
}
