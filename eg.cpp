#include "eg.h"

//Discretizes existing ground surface to be fed into the the soil_wedge model
//TODO::get the function to take segments in soil surface

eg::eg(float x1, float y1, float x2, float y2){
    eg::set_initial_nodes(x1,y1,x2,y2);
};

void eg::set_initial_nodes(float x1, float y1, float x2, float y2){
    nodes << x1,y1,x2,y2;
}
void eg::add_node(float x, float y)
{
    add_row(&nodes); //Add a row to populate the additional coordinates
    nodes.row(nodes.rows()-1) << x, y; //add the coordinates of the node
    sort_lh_rows(&nodes,1); //sort
}

void eg::print_nodes()
{
    cout<<nodes<<endl;
}

void eg::discretize(float dx)
{
    Vector2f p1, p2;
    float sub_dx, total_segments;
    int num_segments;
    for (int i=0; i<nodes.rows()-1; i++)
    {
        p1 = nodes.row(i);
        p2 = nodes.row(i+1);
        if (i==0)
        {
            discretizied_nodes << p1(0),p1(1);
        };
        num_segments = ceil(dist(p1,p2)/dx);
        sub_dx = dist(p1,p2) / num_segments;
        for (int j=0; j<num_segments; j++)
        {
            add_row(&discretizied_nodes);
            discretizied_nodes.row(discretizied_nodes.rows()-1) <<  p1(0)+sub_dx*(j+1)*cos(_angle(p1,p2)),p1(1)+sub_dx*(j+1)*sin(_angle(p1,p2)); //add the coordinates of the node
        }
    }
    cout<<discretizied_nodes<<endl;
    cout<<"---"<<endl;
}
MatrixXf eg::get_nodes()
{
    return nodes;
}
MatrixXf eg::get_discretized_nodes()
{
    return discretizied_nodes;
}
