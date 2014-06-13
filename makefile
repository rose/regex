PROG=lextest

all: yacc lex
	gcc lex.yy.c y.tab.c -o$(PROG) -lfl

lextest: lex
	gcc lex.yy.c -o$(PROG) -lfl

yacc: $(PROG).y
	yacc -d $(PROG).y

lex: $(PROG).l
	lex $(PROG).l

clean:
	rm -f lex.yy.c y.tab.c $(PROG)
