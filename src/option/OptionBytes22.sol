// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

type OptionBytes22 is uint32;

using LibOptionBytes22 for OptionBytes22 global;

using {
    eq as ==,
    neq as !=,
    gt as >,
    gte as >=,
    lt as <,
    lte as <=
} for OptionBytes22 global;

function eq(OptionBytes22 lhs, OptionBytes22 rhs) pure returns (bool res) {
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

function neq(OptionBytes22 lhs, OptionBytes22 rhs) pure returns (bool res) {
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

function gt(OptionBytes22 lhs, OptionBytes22 rhs) pure returns (bool res) {
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

function gte(OptionBytes22 lhs, OptionBytes22 rhs) pure returns (bool res) {
    assembly {
        let lhsIsSome := and(lhs, 0x01)
        let rhsIsSome := and(rhs, 0x01)

        res := 0x01
        if rhsIsSome {
            res := and(lhsIsSome, iszero(lt(mload(shr(0x01, lhs)), mload(shr(0x01, rhs)))))
        }
    }
}

function lt(OptionBytes22 lhs, OptionBytes22 rhs) pure returns (bool res) {
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

function lte(OptionBytes22 lhs, OptionBytes22 rhs) pure returns (bool res) {
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

library LibOptionBytes22 {
    function Some(bytes22 value) internal pure returns (OptionBytes22 res) {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            res := or(shl(0x01, fmp), 0x01)
            mstore(fmp, value)
            mstore(0x40, add(fmp, 0x20))
        }
    }

    function None() internal pure returns (OptionBytes22 res) {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            res := shl(0x01, fmp)
            mstore(fmp, 0x00)
            mstore(0x40, add(fmp, 0x20))
        }
    }

    function clone(OptionBytes22 self) internal pure returns (OptionBytes22 res) {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            res := or(shl(0x01, fmp), and(self, 0x01))
            mstore(fmp, mload(shr(0x01, self)))
            mstore(0x40, add(fmp, 0x20))
        }
    }

    function isSome(OptionBytes22 self) internal pure returns (bool res) {
        assembly {
            res := and(self, 0x01)
        }
    }

    function isNone(OptionBytes22 self) internal pure returns (bool res) {
        assembly {
            res := iszero(and(self, 0x01))
        }
    }

    function expect(OptionBytes22 self, string memory message) internal pure returns (bytes22 res) {
        assembly {
            if iszero(and(self, 0x01)) {
                revert(add(message, 0x20), mload(message))
            }
            res := mload(shr(0x01, self))
        }
    }

    function unwrap(OptionBytes22 self) internal pure returns (bytes22 res) {
        assembly {
            if iszero(and(self, 0x01)) {
                revert(0x00, 0x00)
            }
            res := mload(shr(0x01, self))
        }
    }

    function unwrapOr(OptionBytes22 self, bytes22 def) internal pure returns (bytes22 res) {
        assembly {
            res := def
            if and(self, 0x01) {
                res := mload(shr(0x01, self))
            }
        }
    }

    function unwrapOrElse(OptionBytes22 self, function () pure returns (bytes22) f) internal pure returns (bytes22 res) {
        return self.isNone() ? f() : self.unwrap();
    }

    function map(OptionBytes22 self, function (bytes22) pure returns (bytes22) f) internal pure returns (OptionBytes22 res) {
        return self.isNone() ? self : Some(f(self.unwrap()));
    }
}
