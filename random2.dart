import 'dart:math';

void main(List<String> arguments) {
  magicEightBall();
}

magicEightBall() {
  Random random = new Random();
  var rn = random.nextInt(5);
  print(rn);
  switch (rn) {
      case 0: print('Zero');
      break;
      case 1: print('one');
      break;
      case 2: print('Tow');
      break;   
       case 3: print('Three');
      break;
      case 4: print('Four');
      break;     
  }

 /* if (rn < 2 && rn >0) {
    print('one');
  } else {}
  */
}
