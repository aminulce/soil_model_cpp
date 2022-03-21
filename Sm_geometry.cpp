// *** ADDED BY HEADER FIXUP ***
#include <istream>
// *** END ***
#include "Sm_geometry.h"

#include <iostream>
#include <cmath>


using namespace std;
float deg2rad(float deg)
{
    return deg * M_PI / 180;
}

float rad2deg(double rad)
{
    return rad * 180 / M_PI;
}

//Calculates distance between two points
float dist(Vector2f p1, Vector2f p2){
    return sqrt(pow((p1(0)-p2(0)),2)+pow((p1(1)-p2(1)),2));
}

float _angle(Vector2f p1, Vector2f p2){
    return atan((p2(1)-p1(1))/(p2(0)-p1(0)));
}

void coord::set_coord(float _x, float _y)
{
    x = _x; y = _y;
}
string coord::printc()
{
    string ret = "(" + to_string(x) + "," + to_string(y) + ")";
    return ret;
}

//Calculating the weight of the wedge
float calc_wedge_mass(MatrixXf wedge_triangle, float gamma)
{
    float weight;
    weight = 0.5*wedge_triangle.determinant() * gamma;
    return weight;
}

//Codes for line class
//-------xxxxxx-------

//line class initializer
Line::Line(float x1, float y1, float x2, float y2) {
    Line::set_x1y1_x2y2(x1,y1,x2,y2); // setting line end coordinates
    Line::set_abc(); //Initiating a, b, c for line equation
    Line::set_p1p2(); //p1 and p2 vectors containing coordinates
};

void Line::set_x1y1_x2y2(float x1, float y1, float x2, float y2) {
    line_x1 = x1;   line_y1 = y1;
    line_x2 = x2;   line_y2 = y2;
}
void Line::set_abc()
{
    /*This function calculates the a, b, c coefficients of a line
    from 2D coordinates of end points of a line*/
    line_a = line_y1 - line_y2;
    line_b = line_x2 - line_x1;
    line_c = line_y1 * (line_x1 - line_x2) - line_x1 * (line_y1 - line_y2);
}
void Line::set_p1p2(){
    p1 << line_x1, line_y1;
    p2 << line_x2, line_y2;
}

void Line::print_a_b_c() {
    cout<< "a = " << line_a<<endl << "b = " << line_b <<endl <<"c = " << line_c <<endl;
}

void Line::print_line_eq() {
    Line::set_abc();
    string _a, _b, _c;
    if(line_a==0 && line_b==0)
    {
        cout<<"Line is not defined"<<endl;
    }
    else {
        //setting x text for printing
        if (line_a>0)
            {
                _a = to_string(line_a) + "x";
            }
        else if (line_a<0)
        {
            _a = "-" + to_string(abs(line_a)) + "x";
        }
        else if (line_a=0)
        {
            _a = "";
        }


        //setting y text for printing
        if (line_b>0)
            if (line_a !=0) // will omit the "+" sign if x is not printed
                {
                    _b = " + " + to_string(abs(line_b)) + "y";
                }
            else
                {
                    _b = to_string(abs(line_b)) + "y";
                }
        else if (line_b<0)
            {
                _b = " - " + to_string(abs(line_b)) + "y";
            }
        else if (line_b=0)
            {
                _b = "";
            }

        //setting c text for printing
        if (line_c>0)
            {
                _c = " + " + to_string(abs(line_c));
            }
        else if (line_c<0)
            {
                _c = " - " + to_string(abs(line_c));
            }
        else if (line_c=0)
            {
                _c = "";
            }
    }
    cout <<"The line equation is :" << _a + _b + _c + " = 0" << endl;
}

//Calculates the intersection between this line and a given line
void Line::intersect(float*x, float* y, Line l2){
    Matrix2f A;
    Vector2f B;
    Vector2f sol;
    A << line_a, line_b, l2.get_a(), l2.get_b();
    B << -1 * line_c, l2.get_c()*-1;
    sol = A.inverse() * B;
    *x = sol(0);
    *y = sol(1);
}
float Line::length(){
//    cout<<p1<<endl;
//    cout<<p2<<endl;

    return dist(p1,p2);
}

float Line::angle(){

    return _angle(p1,p2);
}

