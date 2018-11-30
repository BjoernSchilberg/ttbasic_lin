# TOYOSHIKI Tiny BASIC for Linux

The code tested in Raspberry Pi Debian Wheezy.<br>
Use UART terminal.

## Operation example

```basic
list
10 FOR I=2 TO -2 STEP -1; GOSUB 100; NEXT I
20 STOP
100 REM Subroutine
110 PRINT ABS(I); RETURN


OK
run
```

```basic
2
1
0
1
2

OK
```

## Difference to grammer from PALO ALTO TinyBASIC by Li-Chen Wang

The grammar is the same as
PALO ALTO TinyBASIC by Li-Chen Wang
Except 4 point to show below.

1. The contracted form of the description is invalid.

2. Force abort key
   - PALO ALTO TinyBASIC -> `Ctrl+C`
   - TOYOSHIKI TinyBASIC -> `ESC`

3. SYSTEM command
   - SYSTEM return to Linux.

4. Other some beyond my expectations.

## HOWTO BUILD

### Under GNU/Linux
```shell
gcc basic.c -o basic.o -c
gcc ttbasic.c -o ttbasic.o -c
gcc -o ttbasic ttbasic.o basic.o
```


## Copyright & License

```
(C)2015 Tetsuya Suzuki
GNU General Public License
```
