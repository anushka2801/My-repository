#include<iostream>
#include<graphics.h>
#include<stdio.h>
using namespace std;
void drawCircle(int x0, int y0, int radius){
	int x = radius;
	int y = 0;
	int err = 0;
	
	while(x >= y){
		putpixel(x0 + x, y0 + y, WHITE);
		putpixel(x0 + y, y0 + x, WHITE);
		putpixel(x0 - y, y0 + x, WHITE);
		putpixel(x0 - x, y0 + y, WHITE);
		putpixel(x0 - y, y0 - x, WHITE);
		putpixel(x0 - x, y0 - y, WHITE);
		putpixel(x0 + y, y0 - x, WHITE);
		putpixel(x0 + x, y0 - y, WHITE);
	
	
	if(err <= 0){
		y = y + 1;
		err = err + 2*y + 1;
	}
	else if(err > 0){
		x = x - 1;
		err = err - 2*x + 1;
	}
}
}

int main(){
	int gd = DETECT, gm;
	initgraph(&gd, &gm, "");
	int x0, y0, radius;
	cout<<"Enter x0 and y0: "<<endl;
	cin>>x0>>y0;
	cout<<"Enter radius: "<<endl;
	cin>>radius;
	
	drawCircle(x0, y0, radius);
	getch();
	closegraph();
	return 0;
}
