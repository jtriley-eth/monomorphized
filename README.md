# Monomorphized

If solidity will not give monomoprhized compile time polymorphism, the markets
create monomorphization for it.

## `Dyn<Type>`

The `Dyn<Type>` library suite contains functions to convert statically sized
arrays of each primitive type to dynamically sized primitive types of the same
type. This works for up to 20 elements and takes up `O(n * 2 + 1)` memory slots
total.

Usage:

```solidity
import { DynAddress } from "monomorphized/dyn/DynAddress.sol";
import { DynUint8 } from "monomorphized/dyn/DynUint8.sol";

contract Example {
    using DynAddress for *;
    using DynUint8 for *;

    function arrays() public pure returns (address[] memory, uint8[] memory) {
        return (
            [address(0x01)].dyn(),
            [1, 2, 3, 4, 5].dyn()
        );
    }
}
```

## `Option<Type>`

The `Option<Type>` library suite contains a sum type to handle optional values.
This allocates a single slot of memory per instantiation or cloning.

Usage:

```solidity
import { OptionUint256, LibOptionUint256 } from "monomorphized/option/OptionUint256.sol";

function double(uint256 a) pure returns (uint256) {
    return a * 2;
}

function plusOne(uint256 a) pure returns (uint256) {
    return a + 1;
}

contract Example {
    function showcase() public pure returns (uint256) {
        return LibOptionUint256.Some(1)
            .map(double)
            .map(plusOne)
            .unwrwap();
    }
}
```
