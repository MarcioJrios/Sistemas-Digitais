#include<stdio.h>
#define MAX 20

typedef struct{
	float x, y;
}ponto;

int main(){
	ponto p1;
	ponto p2;
	ponto p3;
	ponto p;
	float alpha;
	float beta;
	float gamma;
	int i;
	int j;
	p1.x = 12;
	p1.y = 5;
	p2.x = 5;
	p2.y = 16;
	p3.x = 2;
	p3.y = 2;
	for(i = 0; i < 20; i++){
		for(j = 0; j < 20; j++){
		p.x = i;
		p.y = j;
		if((p.x == p1.x && p.y == p1.y) || (p.x == p2.x && p.y == p2.y) || (p.x == p3.x && p.y == p3.y))
			printf("*");
		else{
			alpha = ((p2.y - p3.y)*(p.x - p3.x) + (p3.x - p2.x)*(p.y - p3.y)) /
        		((p2.y - p3.y)*(p1.x - p3.x) + (p3.x - p2.x)*(p1.y - p3.y));
			beta = ((p3.y - p1.y)*(p.x - p3.x) + (p1.x - p3.x)*(p.y - p3.y)) /
       			((p2.y - p3.y)*(p1.x - p3.x) + (p3.x - p2.x)*(p1.y - p3.y));
			gamma = 1.0f - alpha - beta;
			if(alpha > 0 && beta > 0 && gamma > 0)
				printf("* ");
			else
				printf("  ");
			}
		}
		printf("\n");
	}
}
