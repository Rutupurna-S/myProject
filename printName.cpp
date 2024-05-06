#include<stdio.h>
void printName(bool printFlag){
if(printFlag)
{
	printf("Hello Izali \n");
}
else
{
	printf("Hello Chameli \n");
}
}
int main(){
	bool printMyName = true;
	printName(printMyName);
	return 0;
}