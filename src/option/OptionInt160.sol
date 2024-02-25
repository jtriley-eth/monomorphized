// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

type OptionInt160 is uint32;

using LibOptionInt160 for OptionInt160 global;

using {
    eq as ==,
    neq as !=,
    gt as >,
    gte as >=,
    lt as <,
    lte as <=
} for OptionInt160 global;

function eq(OptionInt160 lhs, OptionInt160 rhs) pure returns (bool res) {
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

function neq(OptionInt160 lhs, OptionInt160 rhs) pure returns (bool res) {
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

function gt(OptionInt160 lhs, OptionInt160 rhs) pure returns (bool res) {
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

function gte(OptionInt160 lhs, OptionInt160 rhs) pure returns (bool res) {
    assembly {
        let lhsIsSome := and(lhs, 0x01)
        let rhsIsSome := and(rhs, 0x01)

        res := 0x01
        if rhsIsSome {
            res := and(lhsIsSome, iszero(lt(mload(shr(0x01, lhs)), mload(shr(0x01, rhs)))))
        }
    }
}

function lt(OptionInt160 lhs, OptionInt160 rhs) pure returns (bool res) {
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

function lte(OptionInt160 lhs, OptionInt160 rhs) pure returns (bool res) {
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

library LibOptionInt160 {
    function Some(int160 value) internal pure returns (OptionInt160 res) {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            res := or(shl(0x01, fmp), 0x01)
            mstore(fmp, value)
            mstore(0x40, add(fmp, 0x20))
        }
    }

    function None() internal pure returns (OptionInt160 res) {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            res := shl(0x01, fmp)
            mstore(fmp, 0x00)
            mstore(0x40, add(fmp, 0x20))
        }
    }

    function clone(OptionInt160 self) internal pure returns (OptionInt160 res) {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            res := or(shl(0x01, fmp), and(self, 0x01))
            mstore(fmp, mload(shr(0x01, self)))
            mstore(0x40, add(fmp, 0x20))
        }
    }

    function isSome(OptionInt160 self) internal pure returns (bool res) {
        assembly {
            res := and(self, 0x01)
        }
    }

    function isNone(OptionInt160 self) internal pure returns (bool res) {
        assembly {
            res := iszero(and(self, 0x01))
        }
    }

    function expect(OptionInt160 self, string memory message) internal pure returns (int160 res) {
        assembly {
            if iszero(and(self, 0x01)) {
                revert(add(message, 0x20), mload(message))
            }
            res := mload(shr(0x01, self))
        }
    }

    function unwrap(OptionInt160 self) internal pure returns (int160 res) {
        assembly {
            if iszero(and(self, 0x01)) {
                revert(0x00, 0x00)
            }
            res := mload(shr(0x01, self))
        }
    }

    function unwrapOr(OptionInt160 self, int160 def) internal pure returns (int160 res) {
        assembly {
            res := def
            if and(self, 0x01) {
                res := mload(shr(0x01, self))
            }
        }
    }

    function unwrapOrElse(OptionInt160 self, function () pure returns (int160) f) internal pure returns (int160 res) {
        return self.isNone() ? f() : self.unwrap();
    }

    function map(OptionInt160 self, function (int160) pure returns (int160) f) internal pure returns (OptionInt160 res) {
        return self.isNone() ? self : Some(f(self.unwrap()));
    }
}
