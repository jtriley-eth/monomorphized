// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

library DynInt80 {
    function dyn(int80[1] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x01)
            mstore(add(dst, 0x20), mload(src))
            mstore(0x40, add(dst, 0x40))
        }
    }

    function dyn(int80[2] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x02)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(0x40, add(dst, 0x60))
        }
    }

    function dyn(int80[3] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x03)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x03))
            mstore(0x40, add(dst, 0x80))
        }
    }

    function dyn(int80[4] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x04)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x04))
            mstore(0x40, add(dst, 0xa0))
        }
    }

    function dyn(int80[5] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x05)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x05))
            mstore(0x40, add(dst, 0xc0))
        }
    }

    function dyn(int80[6] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x06)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x06))
            mstore(0x40, add(dst, 0xe0))
        }
    }

    function dyn(int80[7] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x07)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x07))
            mstore(0x40, add(dst, 0x100))
        }
    }

    function dyn(int80[8] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x08)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x08))
            mstore(0x40, add(dst, 0x120))
        }
    }

    function dyn(int80[9] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x09)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x09))
            mstore(0x40, add(dst, 0x140))
        }
    }

    function dyn(int80[10] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x0a)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x0a))
            mstore(0x40, add(dst, 0x160))
        }
    }

    function dyn(int80[11] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x0b)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x0b))
            mstore(0x40, add(dst, 0x180))
        }
    }

    function dyn(int80[12] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x0c)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x0c))
            mstore(0x40, add(dst, 0x1a0))
        }
    }

    function dyn(int80[13] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x0d)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x0d))
            mstore(0x40, add(dst, 0x1c0))
        }
    }

    function dyn(int80[14] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x0e)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x0e))
            mstore(0x40, add(dst, 0x1e0))
        }
    }

    function dyn(int80[15] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x0f)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x0f))
            mstore(0x40, add(dst, 0x200))
        }
    }

    function dyn(int80[16] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x10)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x10))
            mstore(0x40, add(dst, 0x220))
        }
    }

    function dyn(int80[17] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x11)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x11))
            mstore(0x40, add(dst, 0x240))
        }
    }

    function dyn(int80[18] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x12)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x12))
            mstore(0x40, add(dst, 0x260))
        }
    }

    function dyn(int80[19] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x13)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x13))
            mstore(0x40, add(dst, 0x280))
        }
    }

    function dyn(int80[20] memory src) internal pure returns (int80[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x14)
            mcopy(add(dst, 0x20), src, mul(0x20, 0x14))
            mstore(0x40, add(dst, 0x2a0))
        }
    }
}
