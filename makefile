core: core.l
	lex core.l
	gcc -o core lex.yy.c -ll
	
run: 
	./core
clean:
	rm core lex.yy.c