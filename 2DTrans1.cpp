#include<iostream>
#include<stdio.h>
#include<math.h>
#include<graphics.h>
using namespace std;
int main(){
	int gd = DETECT, gm;
	int ch;
	initgraph(&gd, &gm, (char*)"");
	
	cout<<"Choose the transformation you wish to perform: "<<endl;
	cout<<"1. Translation "<<endl;
	cout<<"2. Rotation "<<endl;
	cout<<"3. Scaling "<<endl;
	cout<<"Enter choice: ";
	cin>>ch;
				
	switch(ch){
		case 1: 
			{	
				cout<<"Enter polygon co-ordinates: "<<endl;
				int x1, y1, x2, y2;
				cout<<"Enter x1 and y1: ";
				cin>>x1>>y1;
				cout<<"Enter x2 and y2: ";
				cin>>x2>>y2;
				cout<<"Enter the co-ordinates for Polygon Translation: "<<endl;
				int x, y;
				cout<<"Enter x and y: ";
				cin>>x>>y;
				
				cout<<"Rectangle before Translation: "<<endl;
				setcolor(3);
				rectangle(x1, y1, x2, y2);
				
				cout<<"Rectangle after Translation: "<<endl;
				setcolor(4);
				rectangle(x1+x, y1+y, x2+x, y2+y);
				getch();
				break;
				}
		case 2:
			{
				cout<<"Enter polygon co-ordinates: "<<endl;
				long x1, y1, x2, y2;
				cout<<"Enter x1 and y1: ";
				cin>>x1>>y1;
				cout<<"Enter x2 and y2: ";
				cin>>x2>>y2;
				cout<<"Enter the angle for Polygon Rotation: "<<endl;
				double a;
				cout<<"Enter angle: ";
				cin>>a;
				
				cout<<"Rectangle before Rotation: "<<endl;
				setcolor(3);
				rectangle(x1, y1, x2, y2); 
				
				cout<<"Rectangle after Rotation: "<<endl;
				a = (3.14*a)/180;
				long xr = x1 + ((x2-x1)*cos(a) - (y2-y1)*sin(a));
				long yr = y1 + ((x2-x1)*sin(a) - (y2-y1)*cos(a));
				setcolor(4);
				rectangle(x1, y1, xr, yr);
				getch();
				break;
				}
		case 3:
			{
				cout<<"Enter polygon co-ordinates: "<<endl;
				int x1, y1, x2, y2;
				cout<<"Enter x1 and y1: ";
				cin>>x1>>y1;
				cout<<"Enter x2 and y2: ";
				cin>>x2>>y2;
				cout<<"Enter the co-ordinates for Polygon Scaling: "<<endl;
				int x, y;
				cout<<"Enter x and y: ";
				cin>>x>>y;
				
				cout<<"Rectangle before Scaling: "<<endl;
				setcolor(3);
				rectangle(x1, y1, x2, y2); 
				
				cout<<"Rectangle after Scaling: "<<endl;
				setcolor(10);
				rectangle(x1*x, y1*y, x2*x, y2*y);
				getch();
				break;
				}
		default: cout<<"Invalid Entry. "<<endl;
				 break;
				
	}

	closegraph();
	return 0;
}
