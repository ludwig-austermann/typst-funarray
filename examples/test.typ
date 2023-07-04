#import "../funarray.typ": *

#let arrs = range(7).map(i => range(i))

#range(1, 4).map(i => arrs.map(a => chunks(a, i)))

#unzip(())

#cycle(("A",), 4)

#range(1, 4).map(i => arrs.map(a => windows(a, i)))

#funarray_unsafe.windows(arrs.at(6), 2)

#range(1, 4).map(i => arrs.map(a => partition(a, n => calc.rem(n, i) == 0)))

#range(1, 4).map(i => arrs.map(a => group_by(a, n => calc.rem(n, i) == 0)))

#arrs.map(a => intersperse(a, -1))

#intersperse(arrs, range(5))

#arrs.map(a => take_while(a, x => x < 3))

#arrs.map(a => skip_while(a, x => x < 3))