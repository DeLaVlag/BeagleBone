#if !defined (NEONMATRIXMUL_H)
#define NEONMATRIXMUL_H

#if defined (__cplusplus)
extern "C"
{
#endif /* defined (__cplusplus) */
	
    /** ============================================================================
     *  @func   NeonMatrixMul_Main
     *
     *  @desc   executes the matrix program with ints using the neon
     *  ============================================================================
     */
    NORMAL_API Void NeonMatrixMulInt_Execute(int size, int* mat1, int* mat2, int* prod);

#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */

#endif /* !defined (NEONMATRIXMUL_H) */
