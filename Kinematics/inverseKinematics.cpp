//Calculating angles with the help of coordinates- Invers Kinematics

#include <iostream>
#include <cmath>
using namespace std;

int main(){
    
    float l1 = 0.074948;
    float l2 = 0.097066;
    float l3 = 0.184358;
    
    float angle1, angle2p, angle2n,angle3p, angle3n;
    float x, y, z;
    cout << "x :";
    cin >> x;
    cout << "y :";
    cin >> y;
    cout << "z :";
    cin >> z;
    float fx, A, B, D, alpha;
    
    angle1 = atan(y/x);
    fx = (x*cos(angle1) + y*sin(angle1));
    A = (-z);
    B = l1-fx;
    D = (2*l1*fx + l3*l3 - l2*l2 - l1*l1 - z*z - fx*fx)/(2*l2);
    alpha = atan2(B,A);
    angle2p = atan2(D, sqrt(abs(A*A + B*B - D*D))) - alpha;
    angle2n = atan2(D, -sqrt(abs(A*A + B*B - D*D))) - alpha;
    //float a2 = atan2(D, -sqrt(abs(A*A + B*B - D*D))) - alpha;
    angle3p = atan2((z-l2*sin(angle2p)),(fx - l2*cos(angle2p) - l1)) - angle2p;
    angle3n = atan2((z-l2*sin(angle2n)),(fx - l2*cos(angle2n) - l1)) - angle2n;
    
    angle1 = angle1*180/3.14;
    angle2p = angle2p*180/3.14;
    angle2n = angle2n*180/3.14;
    angle3p = angle3p*180/3.14;
    angle3n = angle3n*180/3.14;

    cout << "A1 :" << angle1 << endl;
    cout << "A2 Positive :" << angle2p << endl;
    cout << "A2 Negative :" << angle2n << endl;
    cout << "A3 Positive :" << angle3p << endl;
    cout << "A3 Negative :" << angle3n << endl; 
    
    return 0;
}