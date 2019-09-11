#include <octave/oct.h>
#include <suitesparse/cholmod.h>

DEFUN_DLD (linear_solver, args, nargout,
           "Hello World Help String")
{
  octave_stdout << "Linear Solver called\n";
  octave_stdout << args.length () << " input arguments and "
                << nargout << " output arguments.\n";

  Matrix H = args(0).array_value();
  octave_stdout << "Read H\n";
  Matrix b = args(1).array_value();
  octave_stdout << "Read b\n";
  // cholmod_sparse *H ;
  // cholmod_dense *x, *b;
  // cholmod_factor *L ;
  // cholmod_common c;
  //
  // cholmod_start (&c);
  //
  // // populate H
  //
  // // populate b
  //
  // // solve
  // L = cholmod_analyze (H, &c) ;		    /* analyze */
  // cholmod_factorize (H, L, &c) ;		    /* factorize */
  // x = cholmod_solve (CHOLMOD_A, L, b, &c) ;	    /* solve Ax=b */

  return octave_value (H.solve(-b));
}
