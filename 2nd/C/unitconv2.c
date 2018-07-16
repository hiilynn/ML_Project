#include <stdio.h>

// #define TF2TC

int main() {
  double tc, tf, offset, conv;
  offset = 32.;

#ifdef TF2TC
  conv = 5. / 9.;
  printf("Value in degrees Fahrenheit = ");
  scanf("%lf", &tf);
  tc = (tf - offset) * conv;
  printf("Value in degrees Celsius = %f\n", tc);
#endif
#ifndef TF2TC
  conv = 9. / 5.;
  printf("Value in degrees Celsius = ");
  scanf("%lf", &tc);
  tf = tc * conv + offset;
  printf("Value in degrees Fahrenheit = %f\n", tf);
#endif
}