// *** ADDED BY HEADER FIXUP ***
#include <istream>
// *** END ***
#include <iostream>
// *** ADDED BY HEADER FIXUP ***
#include <string>
// *** END ***
#ifndef SM_GEOMETRY_H
#define SM_GEOMETRY_H
#define _USE_MATH_DEFINES

#include <Eigen/Dense>
#define LOG(x) cout<<x<<endl
using namespace Eigen;

// Declarations
float deg2rad(float deg); //Converts degree to radian
float rad2deg(double rad); //Converts radian to degree

float dist(Vector2f p1, Vector2f p2);
float _angle(Vector2f p1, Vector2f p2);

int line_intersection(float* x, float* y,
	float m1, float c1,
	float m2,  float c2);

float calc_wedge_mass(MatrixXf wedge_triangle, float gamma);

class Line
{
private:
    //Using line equation a * x + b * y + c = 0
    //Therefore we basically need to calculate the coefficients line_a, line_b, line_c
    float line_x1, line_y1, line_x2, line_y2;
    float line_a, line_b, line_c;
    Vector2f p1, p2;
public:
    Line(float line_x1, float line_y1, float line_x2, float line_y2);
    void set_x1y1_x2y2(float x1, float y1, float x2, float y2);
    void print_a_b_c();
    float get_a(){return line_a;}
    float get_b(){return line_b;}
    float get_c(){return line_c;}
    float get_x1(){return line_x1;}
    float get_x2(){return line_x2;}
    float get_y1(){return line_y1;}
    float get_y2(){return line_y2;}
    void print_line_eq();
    void set_abc();
    void set_p1p2();
    float length();
    float angle();
    void intersect(float* x, float* y, Line l2);
    void get_first_coord(float* x, float* y){*x = line_x1; *y = line_y1;};
    void get_second_coord(float* x, float* y){*x = line_x2; *y = line_y2;};
};

struct coord
{
    float x, y;
//    coord(float _x, float _y);
    void set_coord(float _x, float _y);
    std::string printc();
};
#endif
