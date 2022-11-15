import 'dart:math';

main() {
  //1
  introduceMyself();

  //2
  magicEightBall();

  //3
  incrementSteps();
  incrementSteps();
  incrementSteps();
  incrementSteps();

  //4
  //progressUpdate(steps: 2000);Please read the comment below
  progressUpdate();

  //5
  introduction(name: "amjad", home: "riyadh", age: 22);

  //6
  almostAddition(a: 5, b: 5);

  //7
  multiply(a: 5, b: 5);

  //8
  progressUpdate1(steps: 1999, goal: 2000);

  //9
  progressUpdate1(steps: 150, goal: 2000);
  progressUpdate1(steps: 500, goal: 2000);
  progressUpdate1(steps: 1700, goal: 2000);
  progressUpdate1(steps: 1999, goal: 2000);
  progressUpdate1(steps: 2000, goal: 2000);

  //10
  pacing(
      currentDistance: 300,
      totalDistance: 3000,
      currentTime: 40.5,
      goalTime: 60);

  //11
  greeting(name: "Amjad");

  //12
  print(multiply1(a: 5, b: 5));

  //13
  max(a: 50, b: 5);

  //14
  print(
      "Yes it causes errors. The void function has two syntax, one with an argument and the other without, and both of them agree that they do not have a return clause");

  //15
  BMI(weight: 55, height: 160);

  //16
  //below

  //17
  sorteDES(sorDES: [1, 10, 14, -4]);

  //18
  displayINC(inc: 3);

  //19
  counts_letters(let: "Amjad @sS 12");

  //20
  Check_Password(a: "Amjad123456@");

  //21
  Prime_Number(a: 2);
} //-------------------------End main--------------------------

//1
introduceMyself() {
  print(
      "My name is amjad .During the past four years, I studied at Princess Nourah University, and I graduated from it last summer in August and obtained a Bachelor’s degree in Computer Science");
}

//2
magicEightBall() {
  Random random = new Random();
  var randomNumber = random.nextInt(5); //<5

  if (randomNumber == 0) {
    print("You got the number zero!");
  } else if (randomNumber == 1) {
    print("You got the number one!");
  } else if (randomNumber == 2) {
    print("You got the number two!");
  } else if (randomNumber == 3) {
    print("You got the number three!");
  } else {
    print("You got the number four!");
  }
}

//3
var steps = 0;
incrementSteps() {
  steps += 1; //steps = 1+steps -> 1 ->2 ->3......
  print(steps);
}

//4

/* I don't know if it is ok to solve it as a function that takes arguments. In the next questions, you wrote explicitly that a function takes arguments 
so I resolve this question.
int goal = 2000;
progressUpdate({int? steps}) {
  if (steps! < goal * 0.1) {
    print("You're off to a good start.");
  } else if (steps < goal / 2) {
    print("You're almost halfway there!");
  } else if (steps < goal * 0.9) {
    print("You're over halfway there!");
  } else if (steps < goal) {
    print("You're almost there!");
  } else {
    print("You beat your goal!");
  }
}
*/
//here the number of steps I take it from the question before
int goal = 2000;
progressUpdate() {
  if (steps < goal * 0.1) {
    print("You're off to a good start.");
  } else if (steps < goal / 2) {
    print("You're almost halfway there!");
  } else if (steps < goal * 0.9) {
    print("You're over halfway there!");
  } else if (steps < goal) {
    print("You're almost there!");
  } else {
    print("You beat your goal!");
  }
}

//5
introduction({String? name, String? home, int? age}) {
  print("My name is ${name}. I'am ${age} .From $home");
}

//6
//I didn't understand the question "the first argument should require an argument label"I searched and found that labels can be used with continue and break statements. If I use it here, it has no meaning .
almostAddition({int? a, int? b}) {
  print((a! + b!) - 2);
}

//7
//Even here "The first argument should require a label, and the second argument should have an external label, by, that differs from the internal label."All I'm searching for, I can't find labels with argument
multiply({double? a, double? b}) {
  print(a! * b!);
}

//8
progressUpdate1({int? steps, int? goal}) {
  if (steps! < goal! * 0.1) {
    print("You're off to a good start.");
  } else if (steps < goal / 2) {
    print("You're almost halfway there!");
  } else if (steps < goal * 0.9) {
    print("You're over halfway there!");
  } else if (steps < goal) {
    print("You're almost there!");
  } else {
    print("You beat your goal!");
  }
}

//10
pacing(
    {double? currentDistance,
    double? totalDistance,
    double? currentTime,
    double? goalTime}) {
  if ((currentDistance! / currentTime!) >= (totalDistance! / goalTime!)) {
    print('Keep it up!');
  } else {
    print("You've got to push it just a bit harder!");
  }
}

//11
greeting({String? name}) {
  return print("Hi, $name! How are you? ");
}

//12
multiply1({int? a, int? b}) {
  int c = (a! * b!) + 2;
  return c;
}

//13
max({int? a, int? b}) {
  if (a! > b!) {
    return print("$a is the max");
  } else {
    return print("$b is the max");
  }
}

//14
/*
void addition(double x, double y) {   
  print(x + y);
  return x + y;
}
*/

//15
BMI({double? weight, double? height}) {
  double body_fat = weight! / (pow(height!, 2));
  return print("Your body mass index (BMI) = $body_fat");
}

//16
// a:
sales_commission({double? sales_amount, double? commission_rate}) {}
// b:
calendar({int? month, int? year}) {}
// c:
square_root({double? num}) {}
// d:
is_even({int? num}) {}

//17
sorteDES({List<int>? sorDES}) {
  int c;
  for (int a = 0; a < sorDES!.length - 1; a++) {
    for (int b = 0; b < (sorDES.length - 1) - a; b++) {
      if (sorDES[b] < sorDES[b + 1]) {
        c = sorDES[b];
        sorDES[b] = sorDES[b + 1];
        sorDES[b + 1] = c;
      }
    }
  }
  return print(sorDES);
}

//18
displayINC({int? inc}) {
  String c;
  for (int a = 1; a <= inc!; a++) {
    c = ' ';
    for (int b = a; b > 0; b--) {
      c = c + " $b ";
    }
    print(c);
  }
  return;
}

//19
counts_letters({String? let}) {
  let = let!.toUpperCase();
  var c = 0;
  for (var a in let.split("")) {
    if (a.contains(new RegExp(r'^[A-Z]+$'))) {
      c += 1;
    }
  }
  return print("The number of letters $c");
}

//20
Check_Password({String? a}) {
  var c = 0;
  if (a!.contains(RegExp(r'^[A-Za-z0-9]+$'))) {
    if (a.length >= 8) {
      for (var b in a.split("")) {
        if (b.contains(RegExp(r'^[A-Za-z0-9]+$'))) {
          c += 1;
        }
      }
      if (c >= 2) return print("Great! You Are secure");
    }
  }
  return print('Password does not meet password rules');
}

//21
Prime_Number({int? a}) {
  for (var b = 2; b <= a! / b; b++) {
    if (a % b == 0) {
      return print("it's not a prime Numbrt");
    }
  }
  return print("it's a prime Numbrt");
}
