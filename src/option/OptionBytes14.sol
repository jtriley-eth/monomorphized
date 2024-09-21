// SPDX-License-Identifier: AGPL-3.0-only OR MIT
pragma solidity 0.8.24;

type OptionBytes14 is uint32;

using LibOptionBytes14 for OptionBytes14 global;

using {
    eq as ==,
    neq as !=,
    gt as >,
    gte as >=,
    lt as <,
    lte as <=
} for OptionBytes14 global;

function eq(OptionBytes14 lhs, OptionBytes14 rhs) pure returns (bool res) {
    assembly {
        let lhsIsSome := and(lhs, 0x01)
        let rhsIsSome := and(rhs, 0x01)

        switch and(lhsIsSome, rhsIsSome)
        case 0x01 {
            res := eq(mload(shr(0x01, lhs)), mload(shr(0x01, rhs)))
        }
        default {
            res := eq(lhsIsSome, rhsIsSome)
        }
    }
}

function neq(OptionBytes14 lhs, OptionBytes14 rhs) pure returns (bool res) {
    assembly {
        let lhsIsSome := and(lhs, 0x01)
        let rhsIsSome := and(rhs, 0x01)

        switch and(lhsIsSome, rhsIsSome)
        case 0x01 {
            res := eq(mload(shr(0x01, lhs)), mload(shr(0x01, rhs)))
        }
        default {
            res := eq(lhsIsSome, rhsIsSome)
        }
        res := iszero(res)
    }
}

function gt(OptionBytes14 lhs, OptionBytes14 rhs) pure returns (bool res) {
    assembly {
        let lhsIsSome := and(lhs, 0x01)
        let rhsIsSome := and(rhs, 0x01)

        if lhsIsSome {
            res := 0x01
            if rhsIsSome {
                res := gt(mload(shr(0x01, lhs)), mload(shr(0x01, rhs)))
            }
        }
    }
}

function gte(OptionBytes14 lhs, OptionBytes14 rhs) pure returns (bool res) {
    assembly {
        let lhsIsSome := and(lhs, 0x01)
        let rhsIsSome := and(rhs, 0x01)

        res := 0x01
        if rhsIsSome {
            res := and(lhsIsSome, iszero(lt(mload(shr(0x01, lhs)), mload(shr(0x01, rhs)))))
        }
    }
}

function lt(OptionBytes14 lhs, OptionBytes14 rhs) pure returns (bool res) {
    assembly {
        let lhsIsSome := and(lhs, 0x01)
        let rhsIsSome := and(rhs, 0x01)

        if rhsIsSome {
            res := 0x01
            if lhsIsSome {
                res := lt(mload(shr(0x01, lhs)), mload(shr(0x01, rhs)))
            }
        }
    }
}

function lte(OptionBytes14 lhs, OptionBytes14 rhs) pure returns (bool res) {
    assembly {
        let lhsIsSome := and(lhs, 0x01)
        let rhsIsSome := and(rhs, 0x01)

        res := 0x01
        if lhsIsSome {
            res := 0x00
            if rhsIsSome {
                res := iszero(gt(mload(shr(0x01, lhs)), mload(shr(0x01, rhs))))
            }
        }
    }
}

library LibOptionBytes14 {
    function Some(bytes14 value) internal pure returns (OptionBytes14 res) {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            res := or(shl(0x01, fmp), 0x01)
            mstore(fmp, value)
            mstore(0x40, add(fmp, 0x20))
        }
    }

    function None() internal pure returns (OptionBytes14 res) {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            res := shl(0x01, fmp)
            mstore(fmp, 0x00)
            mstore(0x40, add(fmp, 0x20))
        }
    }

    function clone(OptionBytes14 self) internal pure returns (OptionBytes14 res) {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            res := or(shl(0x01, fmp), and(self, 0x01))
            mstore(fmp, mload(shr(0x01, self)))
            mstore(0x40, add(fmp, 0x20))
        }
    }

    function isSome(OptionBytes14 self) internal pure returns (bool res) {
        assembly {
            res := and(self, 0x01)
        }
    }

    function isNone(OptionBytes14 self) internal pure returns (bool res) {
        assembly {
            res := iszero(and(self, 0x01))
        }
    }

    function expect(OptionBytes14 self, string memory message) internal pure returns (bytes14 res) {
        assembly {
            if iszero(and(self, 0x01)) {
                revert(add(message, 0x20), mload(message))
            }
            res := mload(shr(0x01, self))
        }
    }

    function unwrap(OptionBytes14 self) internal pure returns (bytes14 res) {
        assembly {
            if iszero(and(self, 0x01)) {
                revert(0x00, 0x00)
            }
            res := mload(shr(0x01, self))
        }
    }

    function unwrapOr(OptionBytes14 self, bytes14 def) internal pure returns (bytes14 res) {
        assembly {
            res := def
            if and(self, 0x01) {
                res := mload(shr(0x01, self))
            }
        }
    }

    function unwrapOrElse(OptionBytes14 self, function () pure returns (bytes14) f) internal pure returns (bytes14 res) {
        return self.isNone() ? f() : self.unwrap();
    }

    function map(OptionBytes14 self, function (bytes14) pure returns (bytes14) f) internal pure returns (OptionBytes14 res) {
        return self.isNone() ? self : Some(f(self.unwrap()));
    }
}
