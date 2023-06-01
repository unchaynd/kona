# Kona version 0 Grammar

## The alphabet of Kona version 0
```
SigmaA = {
	forward,
	backward,
	jump,
	if,
	halt,
	high,
	low,
	instruction-separator,
	name-separator,
	name
}
```

## Abstract Grammar

```
instructions -> instruction
instructions -> instruction instruction-separator instructions
instruction -> operation
instruction -> name name-separator operation
operation -> forward name
operation -> backward name
operation -> jump name
operation -> jump name if bit
operation -> bit
operation -> halt
bit -> high
bit -> low
```

## English Kona Input Alphabet
> These values are unicode characters represented by 'u' followed by the hexadecimal value of the character.
```
SigmaI = {
	uA, u20, u2D, u30, u31, u32, u33, u34, u35, u36, u37, u38, u39, u3A, u61, u62, u63, u64, u65, u66, u67, u68, u69, u6A, u6B, u6C, u6D, u6E, u6F, u70, u71, u72, u73, u74, u75, u76, u77, u78, u79, u7A, u7C
}
```

## English Kona Input Grammar
```
forward -> u66 u6F u72 u77 u61 u72 u64 u20 u7C u20
backward -> u62 u61 u63 u72 u77 u61 u72 u64 u20 u7C u20
jump -> u6A u75 u6D u70 u20 u74 u6F u20
if -> u20 u69 u66 u20
halt -> u68 u61 u6C u74
high -> u68 u69 u67 u68
low -> u6C u6F u77
instruction-separator -> uA
name-separator -> u3A u20

name -> alphanumeric-string
name -> alphanumeric-string dash name
alphanumeric-string -> alphanumeric
alphanumeric-string -> alphanumeric alphanumeric-string

dash -> u2D
alphanumeric -> u30
alphanumeric -> u31
alphanumeric -> u32
alphanumeric -> u33
alphanumeric -> u34
alphanumeric -> u35
alphanumeric -> u36
alphanumeric -> u37
alphanumeric -> u38
alphanumeric -> u39
alphanumeric -> u61
alphanumeric -> u62
alphanumeric -> u63
alphanumeric -> u64
alphanumeric -> u65
alphanumeric -> u66
alphanumeric -> u67
alphanumeric -> u68
alphanumeric -> u69
alphanumeric -> u6A
alphanumeric -> u6B
alphanumeric -> u6C
alphanumeric -> u6D
alphanumeric -> u6E
alphanumeric -> u6F
alphanumeric -> u70
alphanumeric -> u71
alphanumeric -> u72
alphanumeric -> u73
alphanumeric -> u74
alphanumeric -> u75
alphanumeric -> u76
alphanumeric -> u77
alphanumeric -> u78
alphanumeric -> u79
alphanumeric -> u7A
```
