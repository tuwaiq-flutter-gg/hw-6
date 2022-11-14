void main() {
  introduceMyself();
  magicEightBall();
  incrementSteps();
  introduction(name: "Zahra", age: 30, home: "Dhahran");
  almostAddition(23, 37);
  multiply(30, 50);
  progressUpdate(889, 5000);
  progressUpdate(654, 10000);
  progressUpdate(6000, 8000);
  pacing(200, 20, 50, 8800);
  greeting("Lama");
  sumfun(50, 30);
}
introduceMyself() {
  print("My name is Zahra ALNasfan , I'm 30 years old ");
}

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
  } else if (randomNumber == 5) {
    print("the number is five");
  }
}

incrementSteps() {
  var steps = 0;
  steps += 1;
  print(steps);
}
progressUpdate(int steps, int goal) {
  if (steps < goal * 10 / 100) {
    print("You're off to a good start");
  } else if (steps == goal / 2) {
    print("You're almost halfway there!");
  } else if (steps < goal * 90 / 100) {
    print("You're over halfway there!");
  } else if (steps < goal) {
    print("You're almost there!");
  } else {
    print("you beat your goal!");
  }
}

introduction({String? name, String? home, int? age}) {
  print("$name,$age , is from $home");
}


almostAddition(int number1, int number2) {
  var result;
  result = (number1 + number2) - 2;
  return result;
}

multiply(double first, double second) {
  print(first * second);
}

//Write a function called pacing that takes four Double parameters called currentDistance, totalDistance, currentTime, and goalTime.
pacing(double currentDistance, double totalDistance, double currentTime,
    double goalTime) {
  var pace = currentTime / (currentDistance / totalDistance);
  if (pace < goalTime) {
    print("KEEP IT UP!!");
  } else {
    print("You've got to push it just a bit harder!");
  }
}
greeting(String? name) {
  print("Hi, $name! How are you");
}
sumfun(int fnum, int snum) {
  var sum = fnum + snum + 2;
  return sum;
}

void addition(double x, double );

  print(
      "it will cause an syntax error , we use void only to print not to return");
}

bmi(int weight, int height) {
  var mass = (weight / height * height);
}

Sales(double Sales, commisionRate) {}

calender(int month, year) {}

squareRoot(double? n1) {}

evenum(int n1) {}

list descending without using sort(). I.e. if you pass in "[1,10,14,-4]" the return value might be "[14,10,1,-4]" Use the function and print the result.

descending(List list) {
  List dis = [];

  for (; list!.length != 0;) {
    dis.add(list.reduce((value, element) => value > element ? value : element));

    list.remove(
        list.reduce((value, element) => value > element ? value : element));
  }

  return dis;
}
count() {
  var numm = 3;
  for (var i = 1; i <= numm!; i++) {
    for (var x = 1; x <= i; x++) {
      print("$x ");
    }
    print("");
  }
}

letter() {
  int count = 0;
  String Alphabet = "Hellworld";
  for (var element in String.split("")) {
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
bool IsPrime(int Number) {
  for (var i = 2; i <= Number / i; ++i) {
    if (Number % i == 0) {
      return false;
    }
  }
  return true;
}
