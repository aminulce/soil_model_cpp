#ifndef EG_H
#define EG_H
#include "Sm_geometry.h"
#include "matrix_manipulate.h"
#include <Eigen/Dense>
using namespace Eigen;
using namespace std;
MatrixXf discretize_soil_eg(MatrixXf soil_eg, int nx);

struct eg
{
    float eg_x1, eg_y1, eg_x2, eg_y2;
    MatrixXf nodes = MatrixXf(2,2);
    MatrixXf discretizied_nodes = MatrixXf(1,2);

    eg(float x1, float y1, float x2, float y2);

    void add_node(float x, float y);
    void print_nodes();
    void set_initial_nodes(float x1, float y1, float x2, float y2);
    MatrixXf get_nodes();
    MatrixXf get_discretized_nodes();
    void discretize(float dx);
};

#endif
