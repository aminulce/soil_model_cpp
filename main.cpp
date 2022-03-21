// *** ADDED BY HEADER FIXUP ***
#include <istream>
// *** END ***
// HelloWorld.cpp : This file contains the 'main' function. Program execution begins and ends there.
//
#define _USE_MATH_DEFINES
#include <iostream>
#include <fstream>
#include <cmath>
#include "Sm_geometry.h"
#include "eg.h"


using namespace std;

int main()
{
    Line wall(0,0,0,25);


//    //Setting the coordinates of the soil_eg. Add additional points if there are breaks along the eg.
//    MatrixXf soil_eg = MatrixXf(2,2); //Initial definition of soil eg with just two coordinates therefore a 2x2 matrix
//    wall.get_second_coord(&soil_eg(0,0), &soil_eg(0,1));
//    soil_eg.row(1) << 50,20;

    float wall_angle_alpha = wall.angle(), //Batter angle. anticlockwise positive with horizontal
        wall_batter_omega = deg2rad(90) - wall_angle_alpha,
        wall_height = wall.length(),

        wedge_line_angle_rho = 0, //The angle created by the wedge line with the horizontal
        wedge_length = 0,

        phi = deg2rad(30), //Soil internal friction angle
        delta = deg2rad(0), //wall friction angle

        c = 0,
        cw = 0,
        cs = 0,
        gamma = 120,
        w_curr = 0,
        Pa_old = 0,
        Pa_new = 0,
        Pa_solution = 0;

    Vector2f wall_top, wall_bottom, wedge_soil_intersection_point;
    Vector2f solution_wedge_coord;
    float solution_wedge_angle;
    wall.get_first_coord(&wall_bottom(0), &wall_bottom(1)); //first coordinate is wall bottom and second coordinate is wall top
    wall.get_second_coord(&wall_top(0), &wall_top(1)); //first coordinate is wall bottom and second coordinate is wall top

    //Adding an instance of eg and additional coordinates to define the sruface
    eg surface(0,25,50,25); //Defining the surface by first and last coordinate
    surface.discretize(0.2); //Discretizing the eg

//    MatrixXf discretized_soil_eg = discretize_soil_eg(soil_eg, nx);
    MatrixXf discretized_soil_eg = surface.get_discretized_nodes();

    MatrixXf wedge = MatrixXf(3,3);
    ofstream myfile;
    myfile.open ("example.txt");
    float theta, chi, Pa_nominator, Pa_denominator;
    for (int i=1; i<discretized_soil_eg.rows(); i++){
        wedge_soil_intersection_point << discretized_soil_eg(i,0),discretized_soil_eg(i,1);
        wedge << wall_bottom(0),wall_bottom(1), 1,
            discretized_soil_eg(i,0),discretized_soil_eg(i,1),1,
            wall_top(0),wall_top(1),1;
        w_curr = 0.5*wedge.determinant() * gamma;

        cw = dist(wall_top, wall_bottom)*c;
        cs = dist(wedge_soil_intersection_point, wall_bottom)*c;

        wedge_line_angle_rho = _angle(wall_bottom, wedge_soil_intersection_point);

        theta = wedge_line_angle_rho - phi, chi = delta - wall_batter_omega;
        Pa_nominator = w_curr - cw * cos (wall_angle_alpha) - cs * sin (wedge_line_angle_rho)
                    - cw * sin (wall_angle_alpha) * cos (theta)
                    - cs * cos(wedge_line_angle_rho) * cos (theta);
        Pa_denominator = (sin(chi) + cos (chi) * cos(theta) / sin(theta));
        Pa_old = Pa_new;
        Pa_new = Pa_nominator / Pa_denominator;
        if(Pa_old > Pa_new && Pa_solution == 0)
        {
            solution_wedge_coord << discretized_soil_eg(i-1,0),discretized_soil_eg(i-1,1);
            solution_wedge_angle = _angle(wall_bottom, solution_wedge_coord);
            Pa_solution = Pa_old;
        }
        myfile<<rad2deg(wedge_line_angle_rho)<<" "<<Pa_new<<endl;

    }
        cout << "Solution Coordinate" << endl<<solution_wedge_coord<<endl;
        cout << "Solution wedge angle: " << rad2deg(solution_wedge_angle)<<endl;
        cout << "Solution Pa: " << Pa_solution<<endl;
    myfile.close();
}

