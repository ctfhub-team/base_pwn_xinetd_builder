// gcc -static -o catflag catflag.c
// chmod u+s catflag

#include <stdlib.h>

int main()
{
    system("cat /flag");
    return 0;
}