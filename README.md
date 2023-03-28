# "Core" Programming Language

*Group Members*:
- [Ali Çolak](https://github.com/alicolak64)
- [İsmail Şengül](https://github.com/ismailsengul)
- [Emre Eldemir](https://github.com/emreeldemir)

---

### Description:

In the world of computer programming, we are a group of brilliant young developers who are frustrated with the limitations of existing programming languages. We long for a language that is simple, elegant, and powerful, one that will allow us to express our ideas in a way that is both efficient and intuitive.

So, we set out to create our own programming language, spending countless hours brainstorming, coding, testing, and refining our creation. We call it **"Core"** with the **".core"** extension.

The name "Core" was not chosen lightly. It is a nod to the heart of computing, the central processing unit (CPU), which is often referred to as the "core" of a computer. The CPU is responsible for executing instructions and performing calculations at the heart of every computer system.

We see our language, Core, as a kind of "core" for programming. It is designed to be the foundation upon which all other software can be built. It is meant to be simple enough for beginners to learn.

As stated in the instruction, we have defined terminal values ​​such as characters, integers, floating point numbers, text, true/false (boolean) operators,  functions and conditional expressions as well as constants and variables, included basic input/output (IO) expressions.

While designing our language, we got help and inspiration from many languages such as C/C++. In Core Language, all programs start with the keyword *"RUN"* and end with the keyword *"FINISH"*. Our language is a procedural language and programs consist of if, while, for etc. similar structures and for this reason, things work in our language by calling the procedures.


We have defined a data type that we will use for numeric data with INT_TYPE and named it **"intel"**. We have carefully and in detail prepared the language syntax definition and the expressions that will appear on the printouts. We created our comment line style inspired by **"SML/NJ"**. (* comment block/line *)

---

First, we test a function that adds the values of two variables of the "float" and "intel" data types. The function returns "float" as its return value.

Our second program checks the numbers from 0 to 10 in a loop and prints the result according to their odd and even condition.

In another program, we check whether the 3 numbers are equal to each other.

In general, we have a ready-made sample program file that contains programs similar to the ones we have written, where you can check many syntax cases.

<br>


### Running Instructions:

> make core

> ./core < example.core

...( some output )...

> make clean

### Syntax:

```

\<prog\> : \<stmt\> | \<stmts\>

\<stmts\> : \<stmt\> | \<stmt\> ; \<stmts\>

\<stmt\> : \<expr\> | <if_stmt> | <while_loop> | <for_loop> | <print> | <func> | <IO_stmt> | <assignment>

\<if_stmt\> :  IF_STMT OPEN_PARANTHESIS <expr> CLOSE_PARANTHESIS OPEN_CURLY <stmts> CLOSE_CURLY 
               {ELSE_IF_STMT OPEN_PARANTHESIS <expr> CLOSE_PARANTHESIS OPEN_CURLY <stmts> CLOSE_CURLY} 
               {ELSE_STMT OPEN_PARANTHESIS <expr> CLOSE_PARANTHESIS OPEN_CURLY <stmts> CLOSE_CURLY }
  
\<while_loop\> :  WHILE_LOOP OPEN_PARANTHESIS <logic_expr> CLOSE_PARANTHESIS OPEN_CURLY <stmts> CLOSE_CURLY
  
\<for_loop\> : FOR_LOOP OPEN_PARANTHESIS <type> VARIABLE : VARIABLE CLOSE_PARANTHESIS OPEN_CURLY <stmts> CLOSE_CURLY
  
\<type\> : INT_TYPE | FLOAT_TYPE | STRING_TYPE | BOOLEAN_TYPE | CHAR_TYPE | CONSTANT | VOID_TYPE

\<exp\> : <expr> - <term> | <expr> + <term> | <term>
  
\<logic_exp\> : <term> EQUALITY_CHECK <term> | <term> NOT_EQUAL_CHECK <term> | <term> 'AND_OP' <term> | <term> 'OR_OP' <term>
                | <term> 'SMALLER_OP' <term> | <term> GREATER_OR_EQUAL_OP <term> | <term> SMALLER_OR_EQUAL_OP <term> | NOT_OP <term>
  
\<term\> : <term> / CONSTANT | <term> * CONSTANT | CONSTANT
  
\<print\> : PRINT OPEN_PARENTHESIS <expr> CLOSE_PARENTHESIS

\<func\> : FUNCTION <type> <variable> OPEN_PARENTHESIS {<type> <variable> | <type> <variable> , [<type> <variable>]+ } CLOSE_PARENTHESIS

\<IO_stmt\> : IO_OP OPEN_PARENTHESIS VARIABLE VARIABLE CLOSE_PARENTHESIS

\<assignment\> : <type> <variable> EQUAL_SIGN <variable>  

\<var\> : CONST | VARIABLE

```
