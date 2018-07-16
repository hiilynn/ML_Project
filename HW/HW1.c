#include <stdio.h>
#include <math.h>
#include <stdlib.h>

#define G 9.82

int main() {
  double t= 0;
  double theta;
  double v0;
  double xt, yt, vx, vy;

  printf("Launching angle in radian: "); //insert launching angle
  scanf("%lf", &theta);
  printf("Initial velocity in m/s: ");
  scanf("%lf", &v0);
  printf("Time: ");
  scanf("%lf", &t);

  xt = v0*cos(theta)*t ;
  yt = -0.5*G*pow(t, 2.0) + v0*sin(theta) ; 
  printf("At time t, the coordinate is = (%f, %f)\n",xt, yt);

  vx = v0*cos(theta) ;
  vy = - G*t + v0*sin(theta);
  printf("At time t, the velocity is = (%f, %f)\n", vx, vy);

  exit(0);
}
