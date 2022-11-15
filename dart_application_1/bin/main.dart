import 'dart:ffi';
import 'dart:math';

import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

void main() {
  //1
  introduceMyself();

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

  //4
  progressUpdate(700, 1000);

  //5
  introduction("Asma", "Ryadh", 44);

  //6
  almostAddition(10, 6);

  //7
  multiply(5, 10);
  multiply(30, 60);

  //8
  progressUpdate2(880, 1000);

  //10
  pacing(
      currentDistance: 100, totalDistance: 100, currentTime: 50, goalTime: 100);

  //11
  //greeting(name: "Asma");

//12
  multiply2(num1: 6, num2: 8);

  //13
  print(max(n1: 55, n2: 50));

  //15
  BMI(weight: 55, height: 160);

  //18
  display(num: 3);

  //10
  print(count( "dftyguhiuiytugjh"));
}

///////////////////////////////////////////////////////////////////
//1
introduceMyself() {
  print("I'm Asmaa Muhammad, I'm 23 years old, from Riyadh");
}

//2
magicEightBall() {
  Random random = new Random();
  int randomNumber = random.nextInt(4);
  print(randomNumber);
  if (randomNumber == 0) {
    print("Good luck today! ...");
  } else if (randomNumber == 1) {
    print("Hope you're doing awesome!”");
  } else if (randomNumber == 2) {
    print("Be happy for this moment. This moment is your life.");
  } else if (randomNumber == 3) {
    print(
        "Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.");
  }
}

//3
int steps = 0;
incrementSteps() {
  steps++;
  print(" Your steps $steps");
}

//4
progressUpdate(int step, int goal) {
  if (step <= 100 && goal != step) {
    print("You're off to a good start.");
  } else if (step < 500 && goal != step) {
    print("You're almost halfway there!");
  } else if (step < 900 && goal != step) {
    print("You're almost there!");
  } else if (step >= 1000 && goal != step) {
    print("You beat your goal!");
  }
}

//5
introduction(String name, String home, int num) {
  print("$name, $num, is from $home");
}

//6
almostAddition(int num1, num2) {
  print((num1 + num2) - 2);
}

//7
multiply(double num1, num2) {
  num1 * 2;
  num2 * 2;
  print("$num1* , $num2");
}

//8
progressUpdate2(int step, int goal) {
  if (step <= 100 && goal != step) {
    print("You're off to a good start.");
  } else if (step < 500 && goal != step) {
    print("You're almost halfway there!");
  } else if (step < 900 && goal != step) {
    print("You're almost there!");
  } else if (step >= 1000 && goal != step) {
    print("You beat your goal!");
  }
}

//9

//10
pacing({double? currentDistance, totalDistance, currentTime, goalTime}) {
  var current = currentDistance! / currentTime;
  var goal = totalDistance / goalTime;
  current < goal
      ? print("You've got to push it just a bit harder!")
      : print("Keep it up!");

  //11
  greeting({String? name}) {
    print!("Hi, $name! How are you?");
  }
}

//12
multiply2({int? num1, num2}) {
  return (num1! * num2) - 2;
}

//13

max({int? n1, n2}) {
  if (n1! > n2) {
    return n1;
  } else {
    return n2;
  }
}

//14
// void addition(double x, double y) {
//   print(x + y);
//   return n;
// }

// void does not return a value, so an error occurred when we returned a value

// 15
BMI({double? weight, height}) {
  var bmi = weight! / (height * height);
  return bmi;
}



//17
List ss = [1, 10, 14, -4];
sortList(List<int> arr) {
  return arr.sort();
}




//18
display({int? num}) {
  String s;
  for (int a = 1; a <= num!; a++) {
    s = ' ';
    for (int b = a; b > 0; b--) {
      s = s + " $b ";
    }
    print(s);
  }
  return;
}

count(String s) {
  int count = 0;
  String alph = "asma mohammed";
  for (int j = 0; j < s.length; j++) {
    for (int i = 0; i < alph.length; i++) {
      if (alph[i] == s[j]) {
        count++;
        break;
      }
    }
  }
  return count;
}
