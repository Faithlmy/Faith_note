#include<stdio.h>
#include<stdlib.h>
#include<pthread.h>
void fun()
{

}
int main(void)
{
	int i = 0;
	pthread_t thread;
	while(1)
	{
			if(pthread_create(&thread, NULL, fun, NULL) != 0)
			{
				return;
			}
			i++;
			print("i = %d\n", i);
	}
	return EXIT_SUCCESS;
}
