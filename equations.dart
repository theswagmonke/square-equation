import 'package:equations/equations.dart' as equations;
import 'dart:math';

void main() {
  int a = 5, b = 0, c = 30;
  double x1, x2, disc = 0;

  disc = discriminant(a, b, c);
  solution(a, b, disc);
}

double discriminant(int a, int b, int c) {
  return sqrt(b * b - 4 * a * c);
}

void solution(int a, int b, double disc) {
  if (disc > 0) {
    double x1 = (-b + disc) / (2 * a);
    double x2 = (-b - disc) / (2 * a);
    print('x1: $x1, x2: $x2, square root of disc: $disc');
  } else if (disc == 0) {
    double x = -b / 2 * a;
    print('x: $x, square root of disc: $disc');
  } else {
    print('the equation has no solutions, $disc');
  }
}
