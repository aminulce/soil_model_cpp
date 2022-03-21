#ifndef MATRIX_MANIPULATE_H
#define MATRIX_MANIPULATE_H
#include <iostream>
#include <Eigen/Dense>

using namespace std;
using namespace Eigen;
void add_row(MatrixXf* mat);
void add_col(MatrixXf* mat);

void sort_lh_rows(MatrixXf* mat, int col_index);
void sort_hl_rows(MatrixXf* mat, int col_index);
#endif // MATRIX_MANIPULATE_h
