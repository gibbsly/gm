# minecraft floating point arithmetic
a basic utiltiy pack to do math with floats and/or doubles

##functions
all functions\* require the arguments `{x:(number),y:(number)}` and ouput the result to the storage `gm:io out` as well as returning the result as an int

### `gm:add`
> does `x + y`

### `gm:subtract`
> does `x - y`

### `gm:multiply`
> does `x * y`

### `gm:divide`\*
> this has 2 different sets of fuctionality
when specifying `x` as a number
> does `x / y`
when specifying `x` as an array of numbers (will only divide up to the first 6 numbers in the array)
> does `[0] / y, [1] / y, [2] / y, [3] / y, [4] / y, [5] / y`
outputs the resulting numbers in an array in the default output location

### `gm:negate`\*
> this only requires `x` as an argument
> does `1 / x`