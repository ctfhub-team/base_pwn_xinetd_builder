// gcc -static -o catflag catflag.c
// chmod u+s catflag

#include <stdio.h>

int main()
{
    FILE *fp = NULL;
    char buff[255];
    fp = fopen("/flag", "r");
    fgets(buff, 255, (FILE*)fp);
    printf("%s\n", buff);
    fclose(fp); 
    return 0;
}