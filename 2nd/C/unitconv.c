#include <stdio.h>

int main() {
    double tc, tf, offset, conv;
    offset = 32;
    conv = 5. / 9.;

    printf("Value in degrees Fahrenheit = ");
    scanf("%lf", &tf);
    tc = (tf - offset) * conv;
    printf("Value in degrees Celsius = %f", tc);
}