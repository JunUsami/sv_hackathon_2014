#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "svdpi.h"
#include "dpiheader.h"

int read_burst()
{
  char ID=0;
  int ADDR=0x00000000;
  int LEN=0x03;
  int SIZE=0x2;
  int BURST=0x1;
  int LOCK=0x0;
  int CACHE=0x3;
  int PROT=0x0;
  int POS=0x0;
  int USER=0x0;
  int VALID=0x1;

  read(ID, ADDR, LEN, SIZE, BURST, LOCK, CACHE, PROT, POS, USER, VALID);

  return 0;
}
