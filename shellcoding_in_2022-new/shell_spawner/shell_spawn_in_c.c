#include<stdio.h>


int main(){

	char *a[2];
	a[0]="/bin/sh";
	a[1]=NULL;
	execve(a[0],a,NULL);
		





}
