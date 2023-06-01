# Kona version 0 Abstract Grammar

## The alphabet of Kona version 0
```
Sigma = {
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

## Grammar

```
instructions -> instruction
instructions -> instruction instruction-separator instructions

instruction -> operation
instruction -> name name-separator operation

operation -> forward
operation -> backward
operation -> jump name
operation -> jump name if bit
operation -> bit
operation -> halt

bit -> high
bit -> low
```
