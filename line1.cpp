#include<iostream>
#include<stdio.h>
#include<graphics.h>
using namespace std;
void drawline(int x1, int x2, int y1, int y2){
	int dx = abs(x2-x1);
	int dy = abs(y2-y1);
	int sx, sy;
	if(x1 < x2)
		sx = 1;
	else
		sx = -1;
	if(y1 < y2)
		sy = 1;
	else
		sy = -1;

	int err = dx-dy;
	int x = x1;
	int y = y1;
	while(x != x2 || y != y2){
		putpixel(x, y, WHITE);
		int e2 = 2*err;
		if(e2 > -dy){
			err = err - dy;
			x = x + sx;
		}
		if(e2 < dx){
			err = err + dx;
			y = y + sy;
		}
	}
}

int main(){
	int gd = DETECT, gm;
	initgraph(&gd, &gm, "");
	int x1=100, y1=100, x2=300, y2=300;
	cout<<"Enter values for x1 and y1: "<<endl;
	cin>>x1>>y1;
	cout<<"Enter values for x2 and y2: "<<endl;
	cin>>x2>>y2;
	drawline(x1, x2, y1, y2);
	getch();
	closegraph();
	return 0;
}

