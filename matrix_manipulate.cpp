#include "matrix_manipulate.h"

void add_row(MatrixXf* mat){
    mat -> conservativeResize(mat -> rows()+1, mat -> cols());
}

void add_col(MatrixXf* mat){
    mat -> conservativeResize(mat -> rows(), mat -> cols()+1);
}

//Sorting matrix rows low to high depending on column index (column index count starts from 1)
void sort_lh_rows(MatrixXf* mat, int col_index){
MatrixXf dummy_row1 = MatrixXf (1,2);
MatrixXf dummy_row2 = MatrixXf (1,2);
for (int i=0; i< mat -> rows()-1; i++)
    for (int j=i+1; j< mat -> rows();j++)
    {
        dummy_row1 = mat -> row(i);
        dummy_row2 = mat -> row(j);
        if ( dummy_row1(col_index-1) > dummy_row2(col_index-1))
        {
            mat -> row(i) = dummy_row2;
            mat -> row(j) = dummy_row1;
        }
    }
}


//Sorting matrix rows high to low depending on column index (column index count starts from 1)
void sort_hl_rows(MatrixXf* mat, int col_index){
MatrixXf dummy_row1 = MatrixXf (1,2);
MatrixXf dummy_row2 = MatrixXf (1,2);
for (int i=0; i< mat -> rows()-1; i++)
    for (int j=i+1; j< mat -> rows();j++)
    {
        dummy_row1 = mat -> row(i);
        dummy_row2 = mat -> row(j);
        if ( dummy_row1(col_index-1) < dummy_row2(col_index-1))
        {
            mat -> row(i) = dummy_row2;
            mat -> row(j) = dummy_row1;
        }
    }
}
