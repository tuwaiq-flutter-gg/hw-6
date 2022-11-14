import 'dart:math';

//[3] solution
int steps = 0;

//[4] solution
int goal = 20;

main() {
  //[1] solution
  introduceMyself();

  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[2] solution
  magicEightBall();
  magicEightBall();
  magicEightBall();
  magicEightBall();

  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[3] solution
  incrementSteps();
  incrementSteps();
  incrementSteps();
  incrementSteps();

  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[4] solution
  progressUpdate();

  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[5] solution
  introduction("Ahmed", "Riyadh", 32);

  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[6] solution
  almostAddition(x: 2, y: 3);

  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[7] solution
  multiply(x: 2.5, y: 6.5);

  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[8] solution
  progressUpdate_V2(steps, goal);

  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[9] solution
  progressUpdate_V2(5, 100);
  progressUpdate_V2(45, 100);
  progressUpdate_V2(68, 100);
  progressUpdate_V2(94, 100);
  progressUpdate_V2(100, 100);
  progressUpdate_V2(128, 100);

  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[10] solution
  pacing(2, 2, 10, 10);
  pacing(1, 2, 10, 10);

  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[11] solution
  greeting("Sharif");

  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[12] solution
  var Multiplied_Number = almostMultiplication(2, 3);
  print(Multiplied_Number);

  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[13] solution
  print(MaxInteger(3, 2));
  print(MaxInteger(3, 5));

  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[15] solution
  BMI(100, 2);

  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[17] solution
  print(sort_descending([1, 10, 14, -4]));

  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[18] solution
  display_integer(5);

  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[18] solution
  letters_count("AbFxZ..//]][");

  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[20] solution
  check_password("password");
  check_password("password123");

  print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[21] solution
  print("Is 1 a prime number : ${IsPrime(1)}");
  print("Is 2 a prime number : ${IsPrime(2)}");
  print("Is 3 a prime number : ${IsPrime(3)}");
  print("Is 4 a prime number : ${IsPrime(4)}");
  print("Is 5 a prime number : ${IsPrime(5)}");
  print("Is 6 a prime number : ${IsPrime(6)}");
  print("Is 7 a prime number : ${IsPrime(7)}");
}

//[1] solution
introduceMyself() {
  print("My Name is Sharif");
}

//[2] solution
magicEightBall() {
  Random random = new Random();
  var randomNumber = random.nextInt(5);
  if (randomNumber == 0) {
    print(
        'The Random Number is $randomNumber and is the minimum possible number');
  } else if (randomNumber == 4) {
    print(
        'The Random Number is $randomNumber and is the maximum possible number');
  } else {
    print('The Random Number is $randomNumber');
  }
}

//[3] solution
incrementSteps() {
  steps++;
  print(steps);
}

//[4] solution
progressUpdate() {
  if (steps < goal * 0.1) {
    print("You're off to a good start.");
  } else if (steps < goal * 0.5) {
    print("You're almost halfway there!");
  } else if (steps < goal * 0.9) {
    print("You're over halfway there!");
  } else if (steps < goal) {
    print("You're almost there!");
  } else {
    print("You beat your goal!");
  }
}

//[5] solution
introduction(String name, String home, int age) {
  print("$name, $age, is from $home");
}

//[6] solution
almostAddition({required int x, required int y}) {
  print((x + y) - 2);
}

//[7] solution
//---Dart does not have Swift and Objective-C's notion of having separate external and internal parameter names.
//---You sometimes can just use the external names you want and create internal aliases
multiply({required double x, required double y}) {
  double y_alias = y;
  print(x * y_alias);
}

//[8] solution
progressUpdate_V2(int steps, int goal) {
  if (steps < goal * 0.1) {
    print("You're off to a good start.");
  } else if (steps < goal * 0.5) {
    print("You're almost halfway there!");
  } else if (steps < goal * 0.9) {
    print("You're over halfway there!");
  } else if (steps < goal) {
    print("You're almost there!");
  } else {
    print("You beat your goal!");
  }
}

//[10] solution
pacing(double currentDistance, double totalDistance, double currentTime,
    double goalTime) {
  var RequiredPacing = totalDistance / goalTime;
  var CurrentPacing = currentDistance / currentTime;
  if (CurrentPacing >= RequiredPacing) {
    print("Keep it up!");
  } else {
    print("You've got to push it just a bit harder!");
  }
}

//[11] solution
greeting(String name) {
  print("Hi, $name! How are you?");
}

//[12] solution
int almostMultiplication(int x, int y) {
  return (x * y) + 2;
}

//[13] solution
int MaxInteger(int x, int y) {
  if (x > y) {
    return x;
  }
  return y;
}

//[14] solution
void addition(double x, double y) {
  print(x + y);
  //---Dart return null in functions with void return type so the return below will give an error.
  //return x + y;
  //---but it also allow using return; without specifying any value.
  return;
}

//[15] solution
BMI(double weight, double height) {
  print("Your Body mass index (BMI) is : ${weight / (height * height)}");
}

//[16] solution
// double commission(){}
// String calendar(){}
// double square_root(){}
// bool even(){}

//[17] solution
List<int> sort_descending(List<int> list) {
  for (var i = 0; i < list.length - 1; i++) {
    for (var j = 0; j < (list.length - 1) - i; j++) {
      if (list[j] < list[j + 1]) {
        var temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
  return list;
}

//[18] solution
display_integer(int number) {
  String Integers;
  for (var i = 1; i <= number; i++) {
    Integers = "";
    for (var j = i; j > 0; j--) {
      Integers += "$j ";
    }
    print(Integers);
  }
}

//[19] solution
letters_count(String string) {
  int count = 0;
  String Alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
  for (var element in string.split("")) {
    if (Alphabet.contains(element)) {
      count++;
    }
  }
  print("$string letters count is : $count");
}

//[20] solution
check_password(String password) {
  List<String> password_Char = password.split("");
  int DigitsCount = 0;
  for (var element in password_Char) {
    if (element.contains(new RegExp(r'[\d]'))) {
      DigitsCount++;
    }
  }
  if (password.length > 8 &&
      RegExp(r'^[A-Za-z0-9]+$').hasMatch(password) &&
      DigitsCount >= 2) {
    print("Great! You Are secure");
  } else {
    print("Password does not meet password rules");
  }
}

//[21] solution
bool IsPrime(int Number) {
  for (var i = 2; i <= Number / i; ++i) {
    if (Number % i == 0) {
      return false;
    }
  }
  return true;
}
