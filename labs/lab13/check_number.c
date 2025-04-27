#include <stdio.h>
#include <stdlib.h>


int main() {
  int a;
  printf("Введите число: ");
  scanf("%d", &a);

  if (a == 0) {
    exit(0);
  }
  if (a > 0) {
    exit(1);
  }
  if (a < 0) {
    exit(2);
  }
}
  
  
