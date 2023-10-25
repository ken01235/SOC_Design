#include "libspir_types.h"
#include "hls_stream.h"
#include "xcl_top_defines.h"
#include "ap_axi_sdata.h"
#include "xcl_top_datamovers.h"
#define EXPORT_PIPE_SYMBOLS 1
#include "cpu_pipes.h"
#undef EXPORT_PIPE_SYMBOLS
#include "xcl_half.h"
#include <cstddef>
#include <vector>
#include <complex>
#include <pthread.h>
using namespace std;

extern "C" {

void KVConstAdd(unsigned int Arg, size_t V);

static pthread_mutex_t __xlnx_cl_KVConstAdd_mutex = PTHREAD_MUTEX_INITIALIZER;
void __stub____xlnx_cl_KVConstAdd(char **argv) {
  void **args = (void **)argv;
  unsigned int Arg = *((unsigned int*)args[0+1]);
  size_t V = *((size_t*)args[1+1]);
 pthread_mutex_lock(&__xlnx_cl_KVConstAdd_mutex);
  KVConstAdd(Arg, V);
  pthread_mutex_unlock(&__xlnx_cl_KVConstAdd_mutex);
}
void KA(size_t A, size_t R);

static pthread_mutex_t __xlnx_cl_KA_mutex = PTHREAD_MUTEX_INITIALIZER;
void __stub____xlnx_cl_KA(char **argv) {
  void **args = (void **)argv;
  size_t A = *((size_t*)args[0+1]);
  size_t R = *((size_t*)args[1+1]);
 pthread_mutex_lock(&__xlnx_cl_KA_mutex);
  KA(A, R);
  pthread_mutex_unlock(&__xlnx_cl_KA_mutex);
}
void KpB(size_t A, size_t B, size_t R);

static pthread_mutex_t __xlnx_cl_KpB_mutex = PTHREAD_MUTEX_INITIALIZER;
void __stub____xlnx_cl_KpB(char **argv) {
  void **args = (void **)argv;
  size_t A = *((size_t*)args[0+1]);
  size_t B = *((size_t*)args[1+1]);
  size_t R = *((size_t*)args[2+1]);
 pthread_mutex_lock(&__xlnx_cl_KpB_mutex);
  KpB(A, B, R);
  pthread_mutex_unlock(&__xlnx_cl_KpB_mutex);
}
void KB(size_t A, size_t R);

static pthread_mutex_t __xlnx_cl_KB_mutex = PTHREAD_MUTEX_INITIALIZER;
void __stub____xlnx_cl_KB(char **argv) {
  void **args = (void **)argv;
  size_t A = *((size_t*)args[0+1]);
  size_t R = *((size_t*)args[1+1]);
 pthread_mutex_lock(&__xlnx_cl_KB_mutex);
  KB(A, R);
  pthread_mutex_unlock(&__xlnx_cl_KB_mutex);
}
void KCalc(size_t A, size_t B, size_t R);

static pthread_mutex_t __xlnx_cl_KCalc_mutex = PTHREAD_MUTEX_INITIALIZER;
void __stub____xlnx_cl_KCalc(char **argv) {
  void **args = (void **)argv;
  size_t A = *((size_t*)args[0+1]);
  size_t B = *((size_t*)args[1+1]);
  size_t R = *((size_t*)args[2+1]);
 pthread_mutex_lock(&__xlnx_cl_KCalc_mutex);
  KCalc(A, B, R);
  pthread_mutex_unlock(&__xlnx_cl_KCalc_mutex);
}
}
