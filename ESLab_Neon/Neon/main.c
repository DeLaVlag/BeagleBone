/** ============================================================================
 *  @file   main.c
 *
 *  @desc   handles input arguments from the application, then directs execution 
 *      	flow to the right function.
 *  ==========================================================================*/
/*  ----------------------------------- OS Specific Headers           */
#include <stdio.h>
#include <stdlib.h>

/*  ----------------------------------- DSP/BIOS Link                 */
#include <dsplink.h>

/*  ----------------------------------- Application Header            */
#include <NeonMatrixMul.h>
#include <system_os.h>

#if defined (__cplusplus)
extern "C"
{
#endif /* defined (__cplusplus) */

	// main program loop
    int main (int argc, char** argv)
    {
		// variables
		Char8* s = NULL;
		int i,j;
		int size = 0;
		int* mat1;
		int* mat2;
		int* prod;

		// check input
        if (argc > 2)
        {
            SYSTEM_1Print("sorry %s does not take more then one parameters\n", (int) argv[0]);
        }
		else if (argc < 2)
        {
            SYSTEM_1Print("sorry %s you forgot the matrix size parameter\n", (int) argv[0]);
        }
        else
        {	
			s = argv[1];
			if (s != NULL) {size = SYSTEM_Atoi(s);}
			mat1 = (int*) malloc (size*size*sizeof(int));
			mat2 = (int*) malloc (size*size*sizeof(int));
			prod = (int*) malloc (size*size*sizeof(int));
			SYSTEM_0Print("\n");

			// create matrices
			SYSTEM_0Print("creating matrices\n");
			for (i = 0;i < size; i++){
				for (j = 0; j < size; j++)
					mat1[j+i*size] = i+j*2;
			}
			for(i = 0; i < size; i++){
				for (j = 0; j < size; j++)
					mat2[j+i*size] = i+j*3;
			}

			// print matrix 1
			SYSTEM_0Print("mat1 is: \n");
			for (i = 0;i < size; i++){
				for (j = 0; j < size; j++)
					SYSTEM_1Print("\t%d ", mat1[i*size+j]);
				SYSTEM_0Print("\n");
			}

			// print matrix 2
			SYSTEM_0Print("mat2 is: \n");
			for (i = 0;i < size; i++){
				for (j = 0; j < size; j++)
					SYSTEM_1Print("\t%d ", mat2[i*size+j]);
				SYSTEM_0Print("\n");
			}

			// execute the matrix multiplication program
			SYSTEM_GetStartTime();
			NeonMatrixMulInt_Execute(size, mat1, mat2, prod);
			SYSTEM_GetEndTime();

			// print result
			SYSTEM_0Print("product is: \n");
			for (i = 0;i < size; i++){
				for (j = 0; j < size; j++)
					SYSTEM_1Print("\t%d ", prod[i*size+j]);
				SYSTEM_0Print("\n");
			}

			// done
			SYSTEM_GetProfileInfo();
			SYSTEM_0Print("Done!\n");

			free(mat1);
			free(mat2);
			free(prod);
        }

        return 0;
    }


#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */
