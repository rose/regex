%{
#include <stdio.h>
%}

%%
keyword[0-9]+ printf("Keyword ");
0[0-9]+ printf("Oct Number");
[0-9]+ printf("Number ");
0x[0-9]+ printf("Hex Number ");
[a-zA-Z][a-zA-Z0-9]* printf("Word ");
\n printf("\n");
%%
