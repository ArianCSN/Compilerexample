# Compiler Example
In this compiler project, we’ll build a simple compiler using Lex and Yacc (also known as Bison). Our goal is to create a basic scanner/parser for a specific language. Let’s break down the steps:

## 1. DFA
We start by designing a DFA for our language. The DFA defines the valid transitions between states based on the input characters. Here’s the DFA for our project:

![DFA](https://github.com/ArianCSN/compilerexample/assets/146763196/3b707c55-8990-4193-aa8e-57e893ffbbcf)

## 2. Transition Table
Next, we create a transition table based on the DFA. This table specifies the state transitions for each input character. Here’s the transition table corresponding to our DFA:

![Transition table](https://github.com/ArianCSN/compilerexample/assets/146763196/f3e0c0b0-8f0b-48b7-b4a6-d4ba78390dbb)

## 3. Lex and Parser Code
Now let’s write the Lex and Yacc (Bison) code for our compiler. These tools help us create a lexical analyzer (scanner) and a parser. Here’s a brief overview:

### Lex (Lexer) :
Lex is used to create a lexical analyzer (tokenizer). It converts a stream of characters into a sequence of tokens and Lex files contain regular expressions and associated actions and generates a table-driven scanner (usually saved in lex.yy.c).

### Yacc (Yet Another Compiler Compiler) :
Yacc creates a parser. It translates a given Context-Free Grammar (CFG) into a C implementation (y.tab.c).
Yacc files contain grammar rules in CFG format.
Yacc generates a parser that performs semantic analysis.
Project Structure

## 4. Run the Compiler

Compile the Lex file :
lex lexer.l

Compile the generated C file :
gcc -c lexer.c

Compile the Yacc file :
yacc -d parser.y

This generates y.tab.c and y.tab.h , 
Compile the generated C file :
gcc -c y.tab.c

Link the Lex and Yacc output files :
gcc lexer.o y.tab.o -o output.exe

Execute your compiler :
./output.exe
