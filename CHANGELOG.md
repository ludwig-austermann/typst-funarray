# v0.3.0
- removed `intersperse` as it is now included by typst itself (see [here](https://typst.app/docs/reference/foundations/array/#definitions-intersperse))
- changed `unzip` to match changed [`zip` method](https://typst.app/docs/reference/foundations/array/#definitions-zip) behaviour. The new signature is `Vec<[T; N]> -> [Vec<T>; N]`
- fixed type checks respecting [typst v0.8.0](https://typst.app/docs/changelog/#v0.8.0)