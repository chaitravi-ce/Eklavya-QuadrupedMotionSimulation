//Calculating co-ordinates with the help of angles-Forward Kinematics

#include <iostream>
#include <cmath>
using namespace std;

int main(){
    float l1 = 0.074948;
    float l2 = 0.097066;
    float l3 = 0.184358;
    float angle1, angle2, angle3;

    cout << "Angle 1 :";
    cin >> angle1;
    cout << "Angle 2 :";
    cin >> angle2;
    cout << "Angle 3 :";
    cin >> angle3;
    
    angle1 = angle1*3.14/180;
    angle2 = angle2*3.14/180;
    angle3 = angle3*3.14/180;

    float x = 0, y = 0, z = 0;

    x = cos(angle1)*(l3*(cos(angle3+angle2)) + l2*cos(angle2) + l1);
    y = sin(angle1)*(l3*(cos(angle3+angle2)) + l2*cos(angle2) + l1);
    z = l3*(sin(angle2+angle3)) + l2*sin(angle2);
    
    cout << "x :" << x << endl << "y :" << y << endl << "z :" << z;

    return 0;
}