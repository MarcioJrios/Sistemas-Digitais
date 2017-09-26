#include<stdio.h>

typedef struct{
	int x, y;
}ponto;

	//|p1.x  p1.y 1|p1.x  p1.y
	//|p2.x  p2.y 1|p2.x  p2.y 
	//|p3.x  p3.y 1|p3.x  p3.y
int calculaArea(ponto a, ponto b, ponto c){
	int A;
	A = ((a.x * b.y) + (a.y * b.x) + (a.x * b.y)) - ((a.y * b.x) + (a.x * c.y) + (b.y * c.x));
	return A;
}

int main(){
	ponto a;
	ponto b;
	ponto c;
	ponto p;
	int i;
	int j;
	int area = calculaArea(a, b, c);
	a.x = 12;
	a.y = 5;
	b.x = 5;
	b.y = 16;
	c.x = 2;
	c.y = 2;
	int AB, AC, BC;
	for(i = 0; i < 20; i++){
		for(j = 0; j < 20; j++){
		p.x = i;
		p.y = j;
		AB = calculaArea(a, b, p);
		AC = calculaArea(a, c, p);
		BC = calculaArea(b, c, p);
		if(AB + AC + BC == area)
			printf("* ");
		else
			printf("  ");
		}
		printf("\n");
	}
}
			
	
	
