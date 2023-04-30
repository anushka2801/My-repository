#include<iostream>
#include<graphics.h>
#include<math.h>
using namespace std;
int main()
{
    int gd=DETECT,gm,s;
    initgraph(&gd,&gm,(char*)"");
    cout<<"1.Translation\n2.Rotation\n3.Scaling\n "<<endl;
    cout<<"Selection:";
    cin>>s;
    switch(s)
        {
        case 1:
            {
	            int x1,y1,x2,y2;
	            int x,y;
	            cout<<"Enter coordinates of polygon : \n";
	            cout<<"x1 : ";
	            cin>>x1;
	            cout<<"y1 : ";
	            cin>>y1;
	            cout<<"x2 : ";
	            cin>>x2;
	            cout<<"y2 : ";
	            cin>>y2;
	               
	            cout<<"Enter coordinates of polygon for translation : \n";
	            cout<<"x : ";
	            cin>>x;
	            cout<<"y : ";
	            cin>>y;
	   
	            cout<<"Rectangle before translation"<<endl;
	            setcolor(3);
	            rectangle(x1,y1,x2,y2);
	               
	            setcolor(4);
	            cout<<"Rectangle after translation"<<endl;
	            rectangle(x1+x,y1+y,x2+x,y2+y);
	            getch();
	            break;
            }
        case 2:
            {  
				long x1,y1,x2,y2;
            	int x,y;
    			cout<<"Enter coordinates of polygon : \n";
    			cout<<"x1 : ";
    			cin>>x1;
    			cout<<"y1 : ";
			    cin>>y1;
			    cout<<"x2 : ";
			    cin>>x2;
			    cout<<"y2 : ";
			    cin>>y2;
			               
                double a;
                cout<<"Rectangle with rotation"<<endl;
                setcolor(3);
                rectangle(x1,y1,x2,y2);
                cout<<"Angle of rotation:";
                cin>>a;
                a=(a*3.14)/180;
                long xr=x1+((x2-x1)*cos(a)-(y2-y1)*sin(a));
                long yr=y1+((x2-x1)*sin(a)+(y2-y1)*cos(a));
                setcolor(2);
                rectangle(x1,y1,xr,yr);
                getch();
                break;
}
        case 3:
            {
                int x1,y1,x2,y2;
            	int x,y;
   			 	cout<<"Enter coordinates of polygon : \n";
				cout<<"x1 : ";
			    cin>>x1;
			    cout<<"y1 : ";
			    cin>>y1;
			    cout<<"x2 : ";
			    cin>>x2;
			    cout<<"y2 : ";
			    cin>>y2;
			               
			    cout<<"Enter coordinates of polygon for scaling : \n";
			    cout<<"x : ";
			    cin>>x;
			    cout<<"y : ";
			    cin>>y;
			   
                cout<<"Before scaling"<<endl;
                setcolor(3);
                rectangle(x1,y1,x2,y2);
                cout<<"After scaling"<<endl;
                setcolor(10);
                rectangle(x1*x,y1*y,x2*x,y2*y);
                getch();
                break;
}
default:
          {
            cout<<"Invalid Selection"<<endl;
            break;
          }
        }
closegraph();

}

