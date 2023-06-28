#import "../itertools.typ": *;

= Itertools Package
This package provides some convinient functional functions for typst to use on arrays. Let us define

#let a = (1, "not prime", 2, "prime", 3, "prime", 4, "not prime", 5, "prime")
`a = `#a

== chunks
The chunks function translates the array to an array of array. It groups the elements to chunks of a given size and collects them in an bigger array.

#let b = chunks(a, 2)
`chunks(a, 2) = `#b

== unzip
The unzip function is the inverse of the zip method, it transforms an array of pairs to a pair of vectors.

`unzip(b) = `#unzip(b)

== cycle
The cycle function concatenates the array to itself until it has a given size.

#let c = cycle(range(5), 8)
`let c = cycle(range(5), 8)
c = `#c

Note that there is also the functionality to concatenate with `+` and `*` in typst.

== windows and circular_windows
This function provides a running window

#let d = windows(c, 5)
`windows(c, 5) = `#d

whereas the circular version wraps over.

#let e = circular_windows(c, 5)
`circular_windows(c, 5) = `#e

== partition and partition_map
The partition function seperates the array in two according to a predicate function. The result is an array with all elements, where the predicate returned true followed by an array with all elements, where the predicate returned false.

#let (primesp, nonprimesp) = partition(b, x => x.at(1) == "prime")
`let (primesp, nonprimesp) = partition(b, x => x.at(1) == "prime")
primesp = `#primesp

`nonprimesp = `#nonprimesp

There is also a partition_map function, which after partition also applies a second function on both collections.

#let (primes, nonprimes) = partition_map(b, x => x.at(1) == "prime", x => x.at(0))
`let (primes, nonprimes) = partition_map(b, x => x.at(1) == "prime", x => x.at(0))
primes = `#primes

`nonprimes = `#nonprimes

== group_by
This functions groups according to a predicate into maximally sized chunks, where all elements have the same predicate value.

#let f = (0,0,1,1,1,0,0,1)
#let g = group_by(f, x => x == 0)
`let f = (0,0,1,1,1,0,0,1)
let g = group_by(f, x => x == 0)
g = `#g

== intersperse
This function inserts item inbetween all elements of the array.

`intersperse(f, 2) = `#intersperse(f, 2)

Combined with flatten we can do this:

#let h = intersperse(g, (0.25, 0.5, 0.75)).flatten()
`let h = intersperse(g, (0.25, 0.5, 0.75)).flatten()
h = `#h

== take_while and skip_while
These functions do exactly as they say.

`take_while(h, x => x < 1) = `#take_while(h, x => x < 1)

`skip_while(h, x => x < 1) = `#skip_while(h, x => x < 1)