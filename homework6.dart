import 'dart:math';

void main() {
  introduceMyself(); //1

//2
  magicEightBall();
  magicEightBall();
  magicEightBall();
  magicEightBall();

  //3
  incrementSteps();
  incrementSteps();
  incrementSteps();
  incrementSteps();

  progressUpdate(); //4

  introduction("Ahmed", "Riyadh", 32); //5

  almostAddition(5, 7); //6

  multiply(6.0, 7.0); //7

  progressUpdate2(10000, 10000); //8

  //9
  progressUpdate2(6334, 10000);
  progressUpdate2(2643, 10000);
  progressUpdate2(9003, 10000);

  pacing(6.5, 9, 9, 9); //10

  print(greeting("Amal")); // 11

  print(multiplyNum(2, 2)); //12

  print(MaxNum(9, 2)); //13

  addition(5, 4); //14

  calculateBMI(50, 165); //15

//17
  List<int> arr = [1, 10, 14, -4];
  print(sortArray(arr));

  printNumbers(3); //18

  print(countLength("hello99")); //19

  isStrongPass("hsgjsjjssyeg0"); //20

  print(isPrime(6)); //21
}

//1
void introduceMyself() {
  print("My name is Hadeel.");
}

//2
magicEightBall() {
  Random random = new Random();
  var randomNumber = random.nextInt(5);
  if (randomNumber == 0)
    print("The generated number is 0 ");
  else if (randomNumber == 1)
    print("The generated number is 1 ");
  else if (randomNumber == 2)
    print("The generated number is 2 ");
  else if (randomNumber == 3)
    print("The generated number is 3 ");
  else if (randomNumber == 4)
    print("The generated number is 4 ");
  else if (randomNumber == 5) print("The generated number is 5 ");
}

//3
int steps = 3524;
incrementSteps() {
  steps++;
  print("Your steps is $steps");
}

//4
int goal = 10000;
progressUpdate() {
  int target = steps ~/ goal * 100;

  if (target < 10) {
    print("You're off to a good start.");
  } else if (target < 50) {
    print("You're almost halfway there!");
  } else if (target < 90) {
    print("You're over halfway there!");
  } else if (steps < goal) {
    print("You're almost there!");
  } else {
    print("You beat your goal!");
  }
}

//5
introduction(String name, String home, int age) {
  print("$name, $age, is from $home.");
}

//6
almostAddition(int numOne, int numTwo) {
  int temp = numOne + numTwo - 2;
  print(temp);
}

//7
multiply(double numOne, double numTwo) {
  print(numOne * numTwo);
}

//8
progressUpdate2(int steps, int goal) {
  int target = steps ~/ goal * 100;

  if (target < 10) {
    print("You're off to a good start.");
  } else if (target < 50) {
    print("You're almost halfway there!");
  } else if (target < 90) {
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
  if (currentDistance >= totalDistance || currentTime >= goalTime)
    print("Keep it up!");
  else
    print("You've got to push it just a bit harder!");
}

//11
String greeting(String name) {
  String str = "Hi, $name ! How are you?";
  return str;
}

//12
int multiplyNum(int numOne, int numTwo) {
  int num = numOne * numTwo + 2;
  return num;
}

//13

int MaxNum(int numOne, int numTwo) {
  int Max;
  if (numOne > numTwo)
    Max = numOne;
  else
    Max = numTwo;
  return Max;
}

//14
void addition(double x, double y) {
  print(x + y);
  //return x + y;
  // return;
  print(
      "The void function can contain a return statement without a vaule to exit the function.\n");
}

//15
calculateBMI(double weight, double height) {
  double BMI = weight / sqrt(height);
  print("The Body mass index is $BMI");
}

//16
//a
double calculateCommission(int salesAmount, double commisionRate) {
  // TODO: implement calculateCommission
  throw UnimplementedError();
}

//b
void displayMonth(int month, int year) {}

//c
double sqrtRoot(int num) {
  // TODO: implement sqrtRoot
  throw UnimplementedError();
}

//d
bool isEven(int num) {
  // TODO: implement isEven
  throw UnimplementedError();
}

//17

sortArray(List<int> arr) {
  return arr.sort();
}

//18
printNumbers(int num) {
  String str = "";
  for (int i = 1; i <= num; i++) {
    str = i.toString() + " " + str;
    print(str);
  }
}

//19

int countLength(String str) {
  int count = 0;
  String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
  for (int j = 0; j < str.length; j++) {
    for (int i = 0; i < alphabet.length; i++) {
      if (alphabet[i] == str[j]) {
        count++;
        break;
      }
    }
  }
  return count;
}

//20

// b. A password consists of only letters and digits.
// c. A password must contain at least two digits.

void isStrongPass(String Password) {
  final specialCharacters = RegExp(r'[a-zA-Z0-9]');

  if (Password.length >= 8) {
    if (specialCharacters.hasMatch(Password)) {
      print("Great! You Are secure");
    }
  }

  print("Password does not meet password rules");
}

//21
bool isPrime(int num) {
  bool isPrime = false;
  for (int i = 2; i <= num / 2; i++) if (num % i == 0) return false;

  return true;
}
