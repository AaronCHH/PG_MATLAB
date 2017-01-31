#include "mex.h"
#include "diagdom.h"

void error (char *s)
{
    mexPrintf
    ("Usage: [B,i] = diagdom (A,tol)\n") ;
    mexErrMsgTxt (s) ;
}

void mexFunction
(
    int nargout, mxArray *pargout [ ],
    int nargin,  const mxArray *pargin [ ]
)
{
    double tol, *A, *B, *I ;
    INT n, k, *List, nList ;

    /* get inputs A and tol */
    if (nargout > 2 || nargin > 2 || nargin==0)
    {
        error ("Wrong number of arguments") ;
    }
    if (mxIsSparse (pargin [0]))
    {
        error ("A cannot be sparse") ;
    }
    n = mxGetN (pargin [0]) ;
    if (n != mxGetM (pargin [0]))
    {
        error ("A must be square") ;
    }
    A = mxGetPr (pargin [0]) ;
    tol = -1 ;
    if (nargin > 1)
    {
        if (!mxIsEmpty (pargin [1]) &&
           mxIsDouble (pargin [1]) &&
           !mxIsComplex (pargin [1]) &&
           mxIsScalar (pargin [1]))
        {
            tol = mxGetScalar (pargin [1]) ;
        }
        else
        {
            error ("tol must be scalar") ;
        }
    }

    /* create output B */
    pargout [0] =
        mxCreateDoubleMatrix (n, n, mxREAL) ;
    B = mxGetPr (pargout [0]) ;

    /* get temporary workspace */
    List = (INT *) mxMalloc (n * sizeof (INT)) ;

    /* do the computation */
    diagdom (A, n, B, tol, List, &nList) ;

    /* create output I */
    pargout [1] =
        mxCreateDoubleMatrix (nList, 1, mxREAL);
    I = mxGetPr (pargout [1]) ;
    for (k = 0 ; k < nList ; k++)
    {
        I [k] = (double) (List[k] + 1) ;
    }

    /* free the workspace */
    mxFree (List) ;
}
