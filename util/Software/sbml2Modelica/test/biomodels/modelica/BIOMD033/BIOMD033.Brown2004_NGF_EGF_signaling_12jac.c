/* Jacobians 5 */
#include "BIOMD033.Brown2004_NGF_EGF_signaling_model.h"
#include "BIOMD033.Brown2004_NGF_EGF_signaling_12jac.h"
int BIOMD033_Brown2004_NGF_EGF_signaling_functionJacF_column(void* data, threadData_t *threadData, ANALYTIC_JACOBIAN *jacobian, ANALYTIC_JACOBIAN *parentJacobian)
{
  TRACE_PUSH
  TRACE_POP
  return 0;
}
int BIOMD033_Brown2004_NGF_EGF_signaling_functionJacD_column(void* data, threadData_t *threadData, ANALYTIC_JACOBIAN *jacobian, ANALYTIC_JACOBIAN *parentJacobian)
{
  TRACE_PUSH
  TRACE_POP
  return 0;
}
int BIOMD033_Brown2004_NGF_EGF_signaling_functionJacC_column(void* data, threadData_t *threadData, ANALYTIC_JACOBIAN *jacobian, ANALYTIC_JACOBIAN *parentJacobian)
{
  TRACE_PUSH
  TRACE_POP
  return 0;
}
int BIOMD033_Brown2004_NGF_EGF_signaling_functionJacB_column(void* data, threadData_t *threadData, ANALYTIC_JACOBIAN *jacobian, ANALYTIC_JACOBIAN *parentJacobian)
{
  TRACE_PUSH
  TRACE_POP
  return 0;
}
/* constant equations */
/* dynamic equations */

OMC_DISABLE_OPT
int BIOMD033_Brown2004_NGF_EGF_signaling_functionJacA_constantEqns(void* inData, threadData_t *threadData, ANALYTIC_JACOBIAN *jacobian, ANALYTIC_JACOBIAN *parentJacobian)
{
  TRACE_PUSH

  DATA* data = ((DATA*)inData);
  int index = BIOMD033_Brown2004_NGF_EGF_signaling_INDEX_JAC_A;
  
  
  TRACE_POP
  return 0;
}

int BIOMD033_Brown2004_NGF_EGF_signaling_functionJacA_column(void* inData, threadData_t *threadData, ANALYTIC_JACOBIAN *jacobian, ANALYTIC_JACOBIAN *parentJacobian)
{
  TRACE_PUSH

  DATA* data = ((DATA*)inData);
  int index = BIOMD033_Brown2004_NGF_EGF_signaling_INDEX_JAC_A;
  TRACE_POP
  return 0;
}

int BIOMD033_Brown2004_NGF_EGF_signaling_initialAnalyticJacobianF(void* inData, threadData_t *threadData, ANALYTIC_JACOBIAN *jacobian)
{
  TRACE_PUSH
  TRACE_POP
  return 1;
}
int BIOMD033_Brown2004_NGF_EGF_signaling_initialAnalyticJacobianD(void* inData, threadData_t *threadData, ANALYTIC_JACOBIAN *jacobian)
{
  TRACE_PUSH
  TRACE_POP
  return 1;
}
int BIOMD033_Brown2004_NGF_EGF_signaling_initialAnalyticJacobianC(void* inData, threadData_t *threadData, ANALYTIC_JACOBIAN *jacobian)
{
  TRACE_PUSH
  TRACE_POP
  return 1;
}
int BIOMD033_Brown2004_NGF_EGF_signaling_initialAnalyticJacobianB(void* inData, threadData_t *threadData, ANALYTIC_JACOBIAN *jacobian)
{
  TRACE_PUSH
  TRACE_POP
  return 1;
}
OMC_DISABLE_OPT
int BIOMD033_Brown2004_NGF_EGF_signaling_initialAnalyticJacobianA(void* inData, threadData_t *threadData, ANALYTIC_JACOBIAN *jacobian)
{
  TRACE_PUSH
  DATA* data = ((DATA*)inData);
  const int colPtrIndex[1+137] = {0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28};
  const int rowIndex[1080] = {104,105,124,125,108,109,130,131,130,131,118,119,118,119,121,122,106,107,124,125,127,129,121,122,127,129,106,107,111,112,113,114,121,122,130,131,113,114,111,112,116,117,113,114,104,105,124,125,108,109,130,131,130,131,118,119,118,119,106,107,124,125,127,129,121,122,127,129,106,107,111,112,113,114,121,122,121,122,130,131,113,114,111,112,116,117,113,114,110,132,135,115,133,136,110,132,135,115,133,136,115,136,130,130,131,127,132,129,121,113,113,111,114,112,122,116,118,110,118,104,122,108,124,135,125,106,107,133,110,135,131,131,130,129,127,122,114,114,112,132,113,111,121,117,119,119,105,121,109,125,124,107,106,115,136,133,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,121,122,124,125,127,129,130,131,132,133,135,136};
  int i = 0;
  
  jacobian->sizeCols = 137;
  jacobian->sizeRows = 137;
  jacobian->sizeTmpVars = 0;
  jacobian->seedVars = (modelica_real*) calloc(137,sizeof(modelica_real));
  jacobian->resultVars = (modelica_real*) calloc(137,sizeof(modelica_real));
  jacobian->tmpVars = (modelica_real*) calloc(0,sizeof(modelica_real));
  jacobian->sparsePattern = (SPARSE_PATTERN*) malloc(sizeof(SPARSE_PATTERN));
  jacobian->sparsePattern->leadindex = (unsigned int*) malloc((137+1)*sizeof(int));
  jacobian->sparsePattern->index = (unsigned int*) malloc(1080*sizeof(int));
  jacobian->sparsePattern->numberOfNoneZeros = 1080;
  jacobian->sparsePattern->colorCols = (unsigned int*) malloc(137*sizeof(int));
  jacobian->sparsePattern->maxColors = 42;
  jacobian->constantEqns = NULL;
  
  /* write lead index of compressed sparse column */
  memcpy(jacobian->sparsePattern->leadindex, colPtrIndex, (137+1)*sizeof(int));
  
  for(i=2;i<137+1;++i)
    jacobian->sparsePattern->leadindex[i] += jacobian->sparsePattern->leadindex[i-1];
  
  /* call sparse index */
  memcpy(jacobian->sparsePattern->index, rowIndex, 1080*sizeof(int));
  
  /* write color array */
  jacobian->sparsePattern->colorCols[136] = 1;
  jacobian->sparsePattern->colorCols[115] = 2;
  jacobian->sparsePattern->colorCols[131] = 3;
  jacobian->sparsePattern->colorCols[116] = 4;
  jacobian->sparsePattern->colorCols[110] = 5;
  jacobian->sparsePattern->colorCols[105] = 6;
  jacobian->sparsePattern->colorCols[127] = 7;
  jacobian->sparsePattern->colorCols[109] = 8;
  jacobian->sparsePattern->colorCols[113] = 9;
  jacobian->sparsePattern->colorCols[135] = 10;
  jacobian->sparsePattern->colorCols[104] = 11;
  jacobian->sparsePattern->colorCols[108] = 12;
  jacobian->sparsePattern->colorCols[117] = 13;
  jacobian->sparsePattern->colorCols[132] = 14;
  jacobian->sparsePattern->colorCols[106] = 15;
  jacobian->sparsePattern->colorCols[128] = 16;
  jacobian->sparsePattern->colorCols[126] = 17;
  jacobian->sparsePattern->colorCols[120] = 18;
  jacobian->sparsePattern->colorCols[129] = 19;
  jacobian->sparsePattern->colorCols[124] = 20;
  jacobian->sparsePattern->colorCols[111] = 21;
  jacobian->sparsePattern->colorCols[122] = 22;
  jacobian->sparsePattern->colorCols[133] = 23;
  jacobian->sparsePattern->colorCols[125] = 24;
  jacobian->sparsePattern->colorCols[119] = 25;
  jacobian->sparsePattern->colorCols[123] = 26;
  jacobian->sparsePattern->colorCols[130] = 27;
  jacobian->sparsePattern->colorCols[118] = 28;
  jacobian->sparsePattern->colorCols[121] = 29;
  jacobian->sparsePattern->colorCols[112] = 30;
  jacobian->sparsePattern->colorCols[114] = 31;
  jacobian->sparsePattern->colorCols[107] = 32;
  jacobian->sparsePattern->colorCols[134] = 33;
  jacobian->sparsePattern->colorCols[79] = 34;
  jacobian->sparsePattern->colorCols[51] = 34;
  jacobian->sparsePattern->colorCols[58] = 34;
  jacobian->sparsePattern->colorCols[85] = 34;
  jacobian->sparsePattern->colorCols[62] = 34;
  jacobian->sparsePattern->colorCols[90] = 34;
  jacobian->sparsePattern->colorCols[50] = 35;
  jacobian->sparsePattern->colorCols[78] = 35;
  jacobian->sparsePattern->colorCols[88] = 35;
  jacobian->sparsePattern->colorCols[60] = 35;
  jacobian->sparsePattern->colorCols[68] = 35;
  jacobian->sparsePattern->colorCols[95] = 35;
  jacobian->sparsePattern->colorCols[80] = 36;
  jacobian->sparsePattern->colorCols[52] = 36;
  jacobian->sparsePattern->colorCols[56] = 36;
  jacobian->sparsePattern->colorCols[83] = 36;
  jacobian->sparsePattern->colorCols[57] = 36;
  jacobian->sparsePattern->colorCols[84] = 36;
  jacobian->sparsePattern->colorCols[25] = 37;
  jacobian->sparsePattern->colorCols[37] = 37;
  jacobian->sparsePattern->colorCols[36] = 37;
  jacobian->sparsePattern->colorCols[92] = 37;
  jacobian->sparsePattern->colorCols[64] = 37;
  jacobian->sparsePattern->colorCols[61] = 37;
  jacobian->sparsePattern->colorCols[89] = 37;
  jacobian->sparsePattern->colorCols[98] = 37;
  jacobian->sparsePattern->colorCols[72] = 37;
  jacobian->sparsePattern->colorCols[74] = 37;
  jacobian->sparsePattern->colorCols[100] = 37;
  jacobian->sparsePattern->colorCols[81] = 37;
  jacobian->sparsePattern->colorCols[53] = 37;
  jacobian->sparsePattern->colorCols[3] = 38;
  jacobian->sparsePattern->colorCols[7] = 38;
  jacobian->sparsePattern->colorCols[43] = 38;
  jacobian->sparsePattern->colorCols[86] = 38;
  jacobian->sparsePattern->colorCols[59] = 38;
  jacobian->sparsePattern->colorCols[66] = 38;
  jacobian->sparsePattern->colorCols[93] = 38;
  jacobian->sparsePattern->colorCols[99] = 38;
  jacobian->sparsePattern->colorCols[73] = 38;
  jacobian->sparsePattern->colorCols[70] = 38;
  jacobian->sparsePattern->colorCols[97] = 38;
  jacobian->sparsePattern->colorCols[82] = 38;
  jacobian->sparsePattern->colorCols[55] = 38;
  jacobian->sparsePattern->colorCols[39] = 39;
  jacobian->sparsePattern->colorCols[38] = 39;
  jacobian->sparsePattern->colorCols[8] = 39;
  jacobian->sparsePattern->colorCols[15] = 39;
  jacobian->sparsePattern->colorCols[23] = 39;
  jacobian->sparsePattern->colorCols[10] = 39;
  jacobian->sparsePattern->colorCols[5] = 39;
  jacobian->sparsePattern->colorCols[41] = 39;
  jacobian->sparsePattern->colorCols[49] = 39;
  jacobian->sparsePattern->colorCols[48] = 39;
  jacobian->sparsePattern->colorCols[103] = 39;
  jacobian->sparsePattern->colorCols[87] = 39;
  jacobian->sparsePattern->colorCols[71] = 39;
  jacobian->sparsePattern->colorCols[65] = 39;
  jacobian->sparsePattern->colorCols[17] = 40;
  jacobian->sparsePattern->colorCols[28] = 40;
  jacobian->sparsePattern->colorCols[1] = 40;
  jacobian->sparsePattern->colorCols[32] = 40;
  jacobian->sparsePattern->colorCols[29] = 40;
  jacobian->sparsePattern->colorCols[18] = 40;
  jacobian->sparsePattern->colorCols[33] = 40;
  jacobian->sparsePattern->colorCols[35] = 40;
  jacobian->sparsePattern->colorCols[69] = 40;
  jacobian->sparsePattern->colorCols[96] = 40;
  jacobian->sparsePattern->colorCols[94] = 40;
  jacobian->sparsePattern->colorCols[67] = 40;
  jacobian->sparsePattern->colorCols[75] = 40;
  jacobian->sparsePattern->colorCols[101] = 40;
  jacobian->sparsePattern->colorCols[102] = 40;
  jacobian->sparsePattern->colorCols[77] = 40;
  jacobian->sparsePattern->colorCols[76] = 40;
  jacobian->sparsePattern->colorCols[54] = 40;
  jacobian->sparsePattern->colorCols[91] = 40;
  jacobian->sparsePattern->colorCols[63] = 40;
  jacobian->sparsePattern->colorCols[30] = 41;
  jacobian->sparsePattern->colorCols[26] = 41;
  jacobian->sparsePattern->colorCols[13] = 41;
  jacobian->sparsePattern->colorCols[11] = 41;
  jacobian->sparsePattern->colorCols[6] = 41;
  jacobian->sparsePattern->colorCols[47] = 41;
  jacobian->sparsePattern->colorCols[24] = 41;
  jacobian->sparsePattern->colorCols[21] = 41;
  jacobian->sparsePattern->colorCols[12] = 41;
  jacobian->sparsePattern->colorCols[22] = 41;
  jacobian->sparsePattern->colorCols[14] = 41;
  jacobian->sparsePattern->colorCols[42] = 41;
  jacobian->sparsePattern->colorCols[46] = 41;
  jacobian->sparsePattern->colorCols[4] = 42;
  jacobian->sparsePattern->colorCols[19] = 42;
  jacobian->sparsePattern->colorCols[9] = 42;
  jacobian->sparsePattern->colorCols[16] = 42;
  jacobian->sparsePattern->colorCols[20] = 42;
  jacobian->sparsePattern->colorCols[34] = 42;
  jacobian->sparsePattern->colorCols[40] = 42;
  jacobian->sparsePattern->colorCols[27] = 42;
  jacobian->sparsePattern->colorCols[2] = 42;
  jacobian->sparsePattern->colorCols[45] = 42;
  jacobian->sparsePattern->colorCols[44] = 42;
  jacobian->sparsePattern->colorCols[31] = 42;
  jacobian->sparsePattern->colorCols[0] = 42;
  TRACE_POP
  return 0;
}


