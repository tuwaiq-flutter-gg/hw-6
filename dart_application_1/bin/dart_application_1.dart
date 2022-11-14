import "dart:math";

void main(List<String> arguments) {
//calls

  print(introduceMyself());
  print(magicEightBall(i: 1));
  print(magicEightBall(i: 2));
  print(magicEightBall(i: 3));
  print(magicEightBall(i: 4));
  print(incrementSteps(90));
  print(introduction("Ahmed", "Rriyadh", 32));
  print(almostAddition(10, 10));
  print(progressUpdate(1000, 1000));
  print(progressUpdate(4000, 10000));
  print(progressUpdate(80, 100));
  print("for progressUpdate fun it's working as i was expcting  ");
  print("your BMI =${BMI(172, 69)}");
  double MUX = multiply();
  print(MUX * (8));
  int kl = 10;
  int kw = 11;
  print(max(kl, kw));
  print(o_0());

  greeting("Amal");
  print(reflis(listrev: [1, 10, 14, -4]));

  print(letter());
  print(password("popo"));
  print(PR(3));
}

//task1
introduceMyself() {
  print("im khaled im 24 ");
}

//task2
magicEightBall({int? i}) {
  Random? random = new Random(i);
  var randomNumber = random.nextInt(5);

  if (randomNumber == 3) {
    print("you are in luck $randomNumber ");
  } else {
    print("try agane $randomNumber");
  }
}

//task 3
incrementSteps(int i) {
  print("your current steps $i");
  for (int steps = i; steps <= 900; steps++) {
    if (steps == 900) {
      print(" yor are fit");
    }
  }
}

//task4 you didnot detrmine the goal lets say 1000 ?
/*progressUpdate(int steps) {
  double ratio = (steps) / (1000) * (100);
  print(ratio);
  if (ratio < 10) {
    print("You're off to a good start");
  } else if (ratio < 50) {
    print("You're almost halfway there!");
  } else if (ratio < 90) {
    print("You're almost there!");
  } else if (ratio >= 100) {
    print("You beat your goal!");
  }
}*/
//task5

introduction(String name, String home, int age) {
  print("$name    $home   $age  ");
  print(" $name    $age  is from $home  ");
}

// task6
almostAddition(int num1, int num2) {
  int result = num1 + num2;

  return result - 2;
}

//task 7
multiply({double? WW}) {
  WW = 7;

  return WW;
}

//8
progressUpdate(int steps, int goal) {
  double ratio = (steps) / (goal) * (100);
  print(ratio);
  if (ratio < 10) {
    print("You're off to a good start");
  } else if (ratio < 50) {
    print("You're almost halfway there!");
  } else if (ratio < 90) {
    print("You're almost there!");
  } else if (ratio >= 100) {
    print("You beat your goal!");
  }
}

//9
pacing(double currentDistance, double totalDistance, double currentTime,
    double goalTime) {
  double speed = (totalDistance - currentDistance) / (goalTime - currentTime);

  if (speed > 10) {
    print("Keep it up");
  } else if (speed < 10) {
    print("You've got to push it just a bit harder! ");
  }
}

//10
greeting(String name) {
  print("hi $name ! How are you?");
}

//11
almostmult(int num1, int num2) {
  int result = num1 * num2;

  return result + 2;
}

//12
max(int nm1, int nm2) {
  if (nm1 > nm2) {
    print("$nm1 is max");
  } else if (nm1 < nm2) {
    print("$nm2 is max");
  } else if (nm1 == nm2) {
    print("are equal ");
  }
}
//14
/*void addition(double x, double y) {   
  print(x + y);
  return x + y;
}*/

// can't return a value from it  just  receiving .

//15
BMI(double height, double weight) {
  double BM = height / weight;

  return BM;
}

sales(int month, int year) {
  return;
}

//16
salesC({double? Sales, double? commission}) {}
calender({int? month, int? year}) {}
sqrR({double? num}) {}
even({int? num}) {}
//17
reflis({List? listrev}) {
  List rev = [];
  for (; listrev!.length != 0;) {
    rev.add(
        listrev.reduce((value, element) => value > element ? value : element));
    listrev.remove(
        listrev.reduce((value, element) => value > element ? value : element));
  }
  return rev;
}

//18
o_0() {
  var numm = 3;
  for (var i = 1; i <= numm!; i++) {
    for (var x = 1; x <= i; x++) {
      print("$x ");
    }
    print("");
  }
}

//19 //20
letter() {
  int count = 0;
  String Alphabet = "POP32132@";
  for (var element in Alphabet.split("")) {
    if (Alphabet.contains(element)) {
      count++;
    }
  }
  print("$String letters count is : $count");
}

password(String password) {
  List<String> passwordChar = password.split("");
  int DigitsCount = 0;
  for (var element in passwordChar) {
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

//21
bool PR(int Num3) {
  for (var i = 2; i <= Num3 / i; ++i) {
    if (Num3 % i == 0) {
      return false;
    }
  }
  return true;
}
