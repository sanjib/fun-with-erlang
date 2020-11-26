# Fun with Erlang

## Highlights

- pattern matching
- single-assignment variables
- basic types to represent data
- if, switch, for, while replaced with:
	- pattern-matching
	- higher-order functions

Pattern matching uses cases
- binding variables
- extracting values from data structures (term)
	- from tuples
	- from lists
- flow control in functions
- selecting messages for processing in parallel programs

Term is just an Erlang data structure

## Idioms

- {point, 10, 5} is preferred to {10, 5} as the atom "point" also describes the tuple
- always use Key => Val the first time a key is defined and use Key := Val each time the value is updated

## erl / Eshell

On Windows, use werl instead of erl.

- c(module_name)	- compile module_name
- cd(path)			- change directory to path
- f().				- forget all variables
- f(A).				- forget variable A
- halt().			- immediate exit
- init:stop().		- controlled shutdown
- ls().				- list files
- pwd().			- print working directory
- q().				- alias for init:stop().


### JCM (Job Control Mode) / JCL (Job Control Language)

- Ctrl+G: abort eshell & enter JCM
- ? | h 	- help
- j 		- list all jobs
- c [nn]	- connect to job nn
- q 		- quit Erlang

Ref: 
- http://erlang.org/pipermail/erlang-questions/2011-October/061447.html
- http://erlang.org/documentation/doc-5.3/doc/getting_started/getting_started.html

## erlc

Running erlc is the preferred method of compiling Erlang code.

```
$ erlc module.erl
$ erl -noshell -s module function -s init stop
```

## Modules & Functions

- file,list_dir
- file,read_file
- file,write_file
- filename,join
- io,format

## Examples

"~4..0B~n"
output of the integer 4 is "0004"
~F.P.PadModC.
```
 ~F. = ~4.  (Field width of 4)
  P. =   .  (no Precision specified)
Pad  =  0   (Pad with zeroes)
Mod  =      (no control sequence Modifier specified)
  C  =  B   (Control sequence B = integer in default base 10)
```