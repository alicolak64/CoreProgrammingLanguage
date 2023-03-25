core: core.l
	lex core.l
	gcc -o core lex.yy.c -ll
	./core < example.core
	

clean:
	rm core lex.yy.c