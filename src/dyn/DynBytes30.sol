// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

library DynBytes30 {
    function dyn(bytes30[1] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x01)
            mstore(add(dst, 0x20), mload(src))
            mstore(0x40, add(dst, 0x40))
        }
    }

    function dyn(bytes30[2] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x02)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(0x40, add(dst, 0x60))
        }
    }

    function dyn(bytes30[3] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x03)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x03))
            mstore(0x40, add(dst, 0x80))
        }
    }

    function dyn(bytes30[4] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x04)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x04))
            mstore(0x40, add(dst, 0xa0))
        }
    }

    function dyn(bytes30[5] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x05)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x05))
            mstore(0x40, add(dst, 0xc0))
        }
    }

    function dyn(bytes30[6] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x06)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x06))
            mstore(0x40, add(dst, 0xe0))
        }
    }

    function dyn(bytes30[7] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x07)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x07))
            mstore(0x40, add(dst, 0x100))
        }
    }

    function dyn(bytes30[8] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x08)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x08))
            mstore(0x40, add(dst, 0x120))
        }
    }

    function dyn(bytes30[9] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x09)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x09))
            mstore(0x40, add(dst, 0x140))
        }
    }

    function dyn(bytes30[10] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x0a)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x0a))
            mstore(0x40, add(dst, 0x160))
        }
    }

    function dyn(bytes30[11] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x0b)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x0b))
            mstore(0x40, add(dst, 0x180))
        }
    }

    function dyn(bytes30[12] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x0c)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x0c))
            mstore(0x40, add(dst, 0x1a0))
        }
    }

    function dyn(bytes30[13] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x0d)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x0d))
            mstore(0x40, add(dst, 0x1c0))
        }
    }

    function dyn(bytes30[14] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x0e)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x0e))
            mstore(0x40, add(dst, 0x1e0))
        }
    }

    function dyn(bytes30[15] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x0f)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x0f))
            mstore(0x40, add(dst, 0x200))
        }
    }

    function dyn(bytes30[16] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x10)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x10))
            mstore(0x40, add(dst, 0x220))
        }
    }

    function dyn(bytes30[17] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x11)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x11))
            mstore(0x40, add(dst, 0x240))
        }
    }

    function dyn(bytes30[18] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x12)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x12))
            mstore(0x40, add(dst, 0x260))
        }
    }

    function dyn(bytes30[19] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x13)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x13))
            mstore(0x40, add(dst, 0x280))
        }
    }

    function dyn(bytes30[20] memory src) internal pure returns (bytes30[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x14)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x14))
            mstore(0x40, add(dst, 0x2a0))
        }
    }
}
