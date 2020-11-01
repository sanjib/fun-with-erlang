# Fun with Erlang

## erl

On Windows, use werl instead of erl.

```
> c(module).
> module:function().
> halt().
```

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
