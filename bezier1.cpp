#include<iostream>
#include<math.h>
#include<graphics.h>
using namespace std;
int main(){
	int x[4], y[4], i;
	double put_x, put_y, t;
	int gr = DETECT, gm;
	initgraph(&gr, &gm, " ");
	cout<<"Please enter x and y co-ordinates: ";
	for(int i=0; i<4; i++){
		cin>>x[i]>>y[i];
		putpixel(x[i], y[i], 3);
	}
	cout<<"Bezier curve: "<<endl;
	for(t=0.0; t<=1.0; t+=0.001){
		put_x = pow(1-t, 3)*x[0] + 3*t*pow(1-t, 2)*x[1] + 3*t*t*pow(1-t, 1)*x[2] + pow(t, 3)*x[3];
		put_y = pow(1-t, 3)*y[0] + 3*t*pow(1-t, 2)*y[1] + 3*t*t*pow(1-t, 1)*y[2] + pow(t, 3)*y[3];
		putpixel(put_x, put_y, WHITE);
	}
	getch();
	closegraph();
}
