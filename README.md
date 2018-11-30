# TOYOSHIKI Tiny BASIC for Linux

The code tested in Raspberry Pi Debian Wheezy.
Use UART terminal.

## Operation example

```basic
>10 FOR I=2 TO -2 STEP -1; GOSUB 100; NEXT I
>20 STOP
>100 REM Subroutine
>110 PRINT ABS(I); RETURN
>

OK
```

```basic
>run
2
1
0
1
2

OK
```

## Difference to grammer from PALO ALTO TinyBASIC by Li-Chen Wang

The grammar is the same as [PALO ALTO TinyBASIC by Li-Chen Wang](https://en.wikipedia.org/wiki/Li-Chen_Wang#Palo_Alto_Tiny_BASIC). Except 4 point to show below.

1. The contracted form of the description is invalid.

2. Force abort key
   - PALO ALTO TinyBASIC -> `Ctrl+C`
   - TOYOSHIKI TinyBASIC -> `ESC`

3. SYSTEM command
   - `SYSTEM` return to Linux.

4. Other some beyond my expectations.

## HOWTO BUILD

### Under GNU/Linux

Manually 

```shell
gcc basic.c -o basic.o -c
gcc ttbasic.c -o ttbasic.o -c
gcc -o ttbasic ttbasic.o basic.o
```

or short
```shell
gcc ttbasic.c basic.c -o ttbasic
```

or with `make`. 

## Links
- https://en.wikipedia.org/wiki/Tiny_BASIC
- https://en.wikipedia.org/wiki/Li-Chen_Wang#Palo_Alto_Tiny_BASIC
- http://www.drdobbs.com/web-development/the-return-of-tiny-basic/184406381
- https://vintagechips.wordpress.com/2015/12/06/%E8%B1%8A%E5%9B%9B%E5%AD%A3%E3%82%BF%E3%82%A4%E3%83%8B%E3%83%BCbasic%E7%A2%BA%E5%AE%9A%E7%89%88/
- https://github.com/vintagechips/ttbasic_lin

## Copyright & License

```
(C)2015 Tetsuya Suzuki
GNU General Public License
```
