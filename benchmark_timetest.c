#include "benchmark_timetest.h"

#include <unistd.h>
#include <math.h>

float testres=0;
void timetest_setup() {
}


void timetest() {
    int i;
    for (i=0; i<100*1000; i++) testres+=sin(2*M_PI*i/1000.);
    usleep(100*1000);
}
