#ifndef CANNYEDGE_H
#define CANNYEDGE_H
/*******************************************************************************
* --------------------------------------------
*			Canny edge header file
* --------------------------------------------
*******************************************************************************/

int canny_edge_main(int arg1, char *arg2, unsigned char *image, int rowsPool, int colsPool, short int *smoothedim);
void canny(unsigned char *image, int rows, int cols, float sigma,
           float tlow, float thigh, unsigned char **edge, char *fname,short int *smoothedim);
void radian_direction(short int *delta_x, short int *delta_y, int rows,
                      int cols, float **dir_radians, int xdirtag, int ydirtag);
double angle_radians(double x, double y);
void magnitude_x_y(short int *delta_x, short int *delta_y, int rows, int cols,
                   short int *magnitude);
void derrivative_x_y(short int *smoothedim, int rows, int cols,
        short int **delta_x, short int **delta_y);
void gaussian_smooth(unsigned char *image, short int *smoothedim, int rows, int cols, float *kernel, int start, int w);
void make_gaussian_kernel(float sigma, float **kernel, int *windowsize);

#endif // CANNYEDGE_H