/** ============================================================================
 *  @file   NeonMatrixMul.c
 *
 *  @desc   does the matrix multiplications using the Neon
 *  ==========================================================================*/
/*  ----------------------------------- OS Specific Headers           	*/
#include <stdio.h>

/*  ----------------------------------- DSP/BIOS Link                   */
#include <dsplink.h>

/*  ----------------------------------- Application Header              */
#include <NeonMatrixMul.h>
#include <system_os.h>
#include "arm_neon.h"

#if defined (__cplusplus)
extern "C"
{
#endif /* defined (__cplusplus) */

	/** ============================================================================
     *  NeonMatrixMul_Execute(int mat1, int mat2, int prod)
     *  ===========================================================================*/
    NORMAL_API Void NeonMatrixMulInt_Execute(int size, int* mat1, int* mat2, int* prod) {
        // variables
		int i, j,k;
		int tempVector[size];
		int tempVector2[size];
		int32x4_t row, product;

		// multiply the matrices - original code
//		for (i = 0;i < SIZE; i++)
//		{
//			for (j = 0; j < SIZE; j++)
//			{
//				prod[i][j]=0;
//				for(k=0;k<SIZE;k++)
//					prod[i][j] = prod[i][j]+mat1[i][k] * mat2[k][j];
//			}
//		}
		
		// // multiply the matrices with the neon	
		// int32x4_t rows[15];
		
		// // iterate over every row of A
		// for(k=0;k<size;k++){
			// // iterate with 4 elements at a time through the rows of B
			// for(n=0;4*n<size;n++){
				// // calculate 15 vectors at once
				// result = vdupq_n_s32(0);
				// for(m=0;15*m<size;m++){
					// // load vectors
					// for(i=0;i<15;i++){
						// rows[i] = vld1q_s32((int32_t*) &mat2[15*m+i][4*n]);
					// }
					// // multiply vectors with scalar
					// for(i=0;i<15;i++){
						// rows[i] = vmulq_n_s32(rows[i],A[k*size][15*m+i]);
					// }
					// // add vectors
					// for(i=0;i<15;i++){
						// result = vaddq_s32(result, row[i]);
					// }
					// // extract values
					// vst1q_s32((int32_t*) &tempVector[j*4], product);
				// }
			// }
			// for(p=4*n; n<size;p++)
			// {
				
			// }
		// }

		for(k=0; k<size;k++){
			// get first row vector
			for(j=0; 4*j<size; j++){
				// load row vector
				row = vld1q_s32((int32_t*) &mat2[4*j]);
				// multiply with scalar
				product = vmulq_n_s32(row,mat1[k*size]);
				// extract values
				vst1q_s32((int32_t*) &tempVector[4*j], product);
			}
			for(j=4*j-3; j<size; j++){
				tempVector[j] = mat1[k*size] * mat2[j];
			}

			// get other row vectors
			for(i=1; i<size; i++){
				// multiply with neon
				for(j=0; 4*j<size; j++){
					// load row vector
					row = vld1q_s32((int32_t*) &mat2[i*size+j*4]);
					// multiply with scalar
					product = vmulq_n_s32(row,mat1[k*size+i]);
					// extract values
					vst1q_s32((int32_t*) &tempVector2[j*4], product);
				}
				for(j=4*j-3; j<size; j++){
					tempVector2[j] = mat1[k*size+i] * mat2[i*size+j];
				}
				for(j=0; 4*j<size; j++){
					// load both vectors
					row = vld1q_s32((int32_t*) &tempVector[j*4]);
					product = vld1q_s32((int32_t*) &tempVector2[j*4]);
					// add vectors
					row = vaddq_s32(row,product);
					// extract values
					vst1q_s32((int32_t*) &tempVector[j*4], row);
				}
				for(j=4*j-3; j<size; j++){
					tempVector[j] = tempVector[j] + tempVector2[j];
				}
			}
			
			// put final vector in result matrix
			for(i=0; i<size; i++){
				prod[k*size+i] = tempVector[i];
			}
		}

        return;
    }

#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */
