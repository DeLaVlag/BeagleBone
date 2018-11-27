#ifndef HYSTERESIS_H
#define HYSTERESIS_H
/*******************************************************************************
* --------------------------------------------
*			Hysteresis header file
* --------------------------------------------
*******************************************************************************/

void apply_hysteresis(short int *mag, unsigned char *nms, int rows, int cols,
                      float tlow, float thigh, unsigned char *edge);
void non_max_supp(short *mag, short *gradx, short *grady, int nrows,
                  int ncols, unsigned char *result);

#endif // HYSTERESIS_H