// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

library DynInt136 {
    function dyn(int136[1] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x01)
            mstore(add(dst, 0x20), mload(src))
            mstore(0x40, add(dst, 0x40))
        }
    }

    function dyn(int136[2] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x02)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(0x40, add(dst, 0x60))
        }
    }

    function dyn(int136[3] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x03)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(add(dst, 0x60), mload(add(src, 0x40)))
            mstore(0x40, add(dst, 0x80))
        }
    }

    function dyn(int136[4] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x04)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(add(dst, 0x60), mload(add(src, 0x40)))
            mstore(add(dst, 0x80), mload(add(src, 0x60)))
            mstore(0x40, add(dst, 0xa0))
        }
    }

    function dyn(int136[5] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x05)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(add(dst, 0x60), mload(add(src, 0x40)))
            mstore(add(dst, 0x80), mload(add(src, 0x60)))
            mstore(add(dst, 0xa0), mload(add(src, 0x80)))
            mstore(0x40, add(dst, 0xc0))
        }
    }

    function dyn(int136[6] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x06)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(add(dst, 0x60), mload(add(src, 0x40)))
            mstore(add(dst, 0x80), mload(add(src, 0x60)))
            mstore(add(dst, 0xa0), mload(add(src, 0x80)))
            mstore(add(dst, 0xc0), mload(add(src, 0xa0)))
            mstore(0x40, add(dst, 0xe0))
        }
    }

    function dyn(int136[7] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x07)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(add(dst, 0x60), mload(add(src, 0x40)))
            mstore(add(dst, 0x80), mload(add(src, 0x60)))
            mstore(add(dst, 0xa0), mload(add(src, 0x80)))
            mstore(add(dst, 0xc0), mload(add(src, 0xa0)))
            mstore(add(dst, 0xe0), mload(add(src, 0xc0)))
            mstore(0x40, add(dst, 0x100))
        }
    }

    function dyn(int136[8] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x08)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(add(dst, 0x60), mload(add(src, 0x40)))
            mstore(add(dst, 0x80), mload(add(src, 0x60)))
            mstore(add(dst, 0xa0), mload(add(src, 0x80)))
            mstore(add(dst, 0xc0), mload(add(src, 0xa0)))
            mstore(add(dst, 0xe0), mload(add(src, 0xc0)))
            mstore(add(dst, 0x100), mload(add(src, 0xe0)))
            mstore(0x40, add(dst, 0x120))
        }
    }

    function dyn(int136[9] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x09)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(add(dst, 0x60), mload(add(src, 0x40)))
            mstore(add(dst, 0x80), mload(add(src, 0x60)))
            mstore(add(dst, 0xa0), mload(add(src, 0x80)))
            mstore(add(dst, 0xc0), mload(add(src, 0xa0)))
            mstore(add(dst, 0xe0), mload(add(src, 0xc0)))
            mstore(add(dst, 0x100), mload(add(src, 0xe0)))
            mstore(add(dst, 0x120), mload(add(src, 0x100)))
            mstore(0x40, add(dst, 0x140))
        }
    }

    function dyn(int136[10] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x0a)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(add(dst, 0x60), mload(add(src, 0x40)))
            mstore(add(dst, 0x80), mload(add(src, 0x60)))
            mstore(add(dst, 0xa0), mload(add(src, 0x80)))
            mstore(add(dst, 0xc0), mload(add(src, 0xa0)))
            mstore(add(dst, 0xe0), mload(add(src, 0xc0)))
            mstore(add(dst, 0x100), mload(add(src, 0xe0)))
            mstore(add(dst, 0x120), mload(add(src, 0x100)))
            mstore(add(dst, 0x140), mload(add(src, 0x120)))
            mstore(0x40, add(dst, 0x160))
        }
    }

    function dyn(int136[11] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x0b)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(add(dst, 0x60), mload(add(src, 0x40)))
            mstore(add(dst, 0x80), mload(add(src, 0x60)))
            mstore(add(dst, 0xa0), mload(add(src, 0x80)))
            mstore(add(dst, 0xc0), mload(add(src, 0xa0)))
            mstore(add(dst, 0xe0), mload(add(src, 0xc0)))
            mstore(add(dst, 0x100), mload(add(src, 0xe0)))
            mstore(add(dst, 0x120), mload(add(src, 0x100)))
            mstore(add(dst, 0x140), mload(add(src, 0x120)))
            mstore(add(dst, 0x160), mload(add(src, 0x140)))
            mstore(0x40, add(dst, 0x180))
        }
    }

    function dyn(int136[12] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x0c)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(add(dst, 0x60), mload(add(src, 0x40)))
            mstore(add(dst, 0x80), mload(add(src, 0x60)))
            mstore(add(dst, 0xa0), mload(add(src, 0x80)))
            mstore(add(dst, 0xc0), mload(add(src, 0xa0)))
            mstore(add(dst, 0xe0), mload(add(src, 0xc0)))
            mstore(add(dst, 0x100), mload(add(src, 0xe0)))
            mstore(add(dst, 0x120), mload(add(src, 0x100)))
            mstore(add(dst, 0x140), mload(add(src, 0x120)))
            mstore(add(dst, 0x160), mload(add(src, 0x140)))
            mstore(add(dst, 0x180), mload(add(src, 0x160)))
            mstore(0x40, add(dst, 0x1a0))
        }
    }

    function dyn(int136[13] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x0d)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(add(dst, 0x60), mload(add(src, 0x40)))
            mstore(add(dst, 0x80), mload(add(src, 0x60)))
            mstore(add(dst, 0xa0), mload(add(src, 0x80)))
            mstore(add(dst, 0xc0), mload(add(src, 0xa0)))
            mstore(add(dst, 0xe0), mload(add(src, 0xc0)))
            mstore(add(dst, 0x100), mload(add(src, 0xe0)))
            mstore(add(dst, 0x120), mload(add(src, 0x100)))
            mstore(add(dst, 0x140), mload(add(src, 0x120)))
            mstore(add(dst, 0x160), mload(add(src, 0x140)))
            mstore(add(dst, 0x180), mload(add(src, 0x160)))
            mstore(add(dst, 0x1a0), mload(add(src, 0x180)))
            mstore(0x40, add(dst, 0x1c0))
        }
    }

    function dyn(int136[14] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x0e)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(add(dst, 0x60), mload(add(src, 0x40)))
            mstore(add(dst, 0x80), mload(add(src, 0x60)))
            mstore(add(dst, 0xa0), mload(add(src, 0x80)))
            mstore(add(dst, 0xc0), mload(add(src, 0xa0)))
            mstore(add(dst, 0xe0), mload(add(src, 0xc0)))
            mstore(add(dst, 0x100), mload(add(src, 0xe0)))
            mstore(add(dst, 0x120), mload(add(src, 0x100)))
            mstore(add(dst, 0x140), mload(add(src, 0x120)))
            mstore(add(dst, 0x160), mload(add(src, 0x140)))
            mstore(add(dst, 0x180), mload(add(src, 0x160)))
            mstore(add(dst, 0x1a0), mload(add(src, 0x180)))
            mstore(add(dst, 0x1c0), mload(add(src, 0x1a0)))
            mstore(0x40, add(dst, 0x1e0))
        }
    }

    function dyn(int136[15] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x0f)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(add(dst, 0x60), mload(add(src, 0x40)))
            mstore(add(dst, 0x80), mload(add(src, 0x60)))
            mstore(add(dst, 0xa0), mload(add(src, 0x80)))
            mstore(add(dst, 0xc0), mload(add(src, 0xa0)))
            mstore(add(dst, 0xe0), mload(add(src, 0xc0)))
            mstore(add(dst, 0x100), mload(add(src, 0xe0)))
            mstore(add(dst, 0x120), mload(add(src, 0x100)))
            mstore(add(dst, 0x140), mload(add(src, 0x120)))
            mstore(add(dst, 0x160), mload(add(src, 0x140)))
            mstore(add(dst, 0x180), mload(add(src, 0x160)))
            mstore(add(dst, 0x1a0), mload(add(src, 0x180)))
            mstore(add(dst, 0x1c0), mload(add(src, 0x1a0)))
            mstore(add(dst, 0x1e0), mload(add(src, 0x1c0)))
            mstore(0x40, add(dst, 0x200))
        }
    }

    function dyn(int136[16] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x10)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(add(dst, 0x60), mload(add(src, 0x40)))
            mstore(add(dst, 0x80), mload(add(src, 0x60)))
            mstore(add(dst, 0xa0), mload(add(src, 0x80)))
            mstore(add(dst, 0xc0), mload(add(src, 0xa0)))
            mstore(add(dst, 0xe0), mload(add(src, 0xc0)))
            mstore(add(dst, 0x100), mload(add(src, 0xe0)))
            mstore(add(dst, 0x120), mload(add(src, 0x100)))
            mstore(add(dst, 0x140), mload(add(src, 0x120)))
            mstore(add(dst, 0x160), mload(add(src, 0x140)))
            mstore(add(dst, 0x180), mload(add(src, 0x160)))
            mstore(add(dst, 0x1a0), mload(add(src, 0x180)))
            mstore(add(dst, 0x1c0), mload(add(src, 0x1a0)))
            mstore(add(dst, 0x1e0), mload(add(src, 0x1c0)))
            mstore(add(dst, 0x200), mload(add(src, 0x1e0)))
            mstore(0x40, add(dst, 0x220))
        }
    }

    function dyn(int136[17] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x11)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(add(dst, 0x60), mload(add(src, 0x40)))
            mstore(add(dst, 0x80), mload(add(src, 0x60)))
            mstore(add(dst, 0xa0), mload(add(src, 0x80)))
            mstore(add(dst, 0xc0), mload(add(src, 0xa0)))
            mstore(add(dst, 0xe0), mload(add(src, 0xc0)))
            mstore(add(dst, 0x100), mload(add(src, 0xe0)))
            mstore(add(dst, 0x120), mload(add(src, 0x100)))
            mstore(add(dst, 0x140), mload(add(src, 0x120)))
            mstore(add(dst, 0x160), mload(add(src, 0x140)))
            mstore(add(dst, 0x180), mload(add(src, 0x160)))
            mstore(add(dst, 0x1a0), mload(add(src, 0x180)))
            mstore(add(dst, 0x1c0), mload(add(src, 0x1a0)))
            mstore(add(dst, 0x1e0), mload(add(src, 0x1c0)))
            mstore(add(dst, 0x200), mload(add(src, 0x1e0)))
            mstore(add(dst, 0x220), mload(add(src, 0x200)))
            mstore(0x40, add(dst, 0x240))
        }
    }

    function dyn(int136[18] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x12)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(add(dst, 0x60), mload(add(src, 0x40)))
            mstore(add(dst, 0x80), mload(add(src, 0x60)))
            mstore(add(dst, 0xa0), mload(add(src, 0x80)))
            mstore(add(dst, 0xc0), mload(add(src, 0xa0)))
            mstore(add(dst, 0xe0), mload(add(src, 0xc0)))
            mstore(add(dst, 0x100), mload(add(src, 0xe0)))
            mstore(add(dst, 0x120), mload(add(src, 0x100)))
            mstore(add(dst, 0x140), mload(add(src, 0x120)))
            mstore(add(dst, 0x160), mload(add(src, 0x140)))
            mstore(add(dst, 0x180), mload(add(src, 0x160)))
            mstore(add(dst, 0x1a0), mload(add(src, 0x180)))
            mstore(add(dst, 0x1c0), mload(add(src, 0x1a0)))
            mstore(add(dst, 0x1e0), mload(add(src, 0x1c0)))
            mstore(add(dst, 0x200), mload(add(src, 0x1e0)))
            mstore(add(dst, 0x220), mload(add(src, 0x200)))
            mstore(add(dst, 0x240), mload(add(src, 0x220)))
            mstore(0x40, add(dst, 0x260))
        }
    }

    function dyn(int136[19] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x13)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(add(dst, 0x60), mload(add(src, 0x40)))
            mstore(add(dst, 0x80), mload(add(src, 0x60)))
            mstore(add(dst, 0xa0), mload(add(src, 0x80)))
            mstore(add(dst, 0xc0), mload(add(src, 0xa0)))
            mstore(add(dst, 0xe0), mload(add(src, 0xc0)))
            mstore(add(dst, 0x100), mload(add(src, 0xe0)))
            mstore(add(dst, 0x120), mload(add(src, 0x100)))
            mstore(add(dst, 0x140), mload(add(src, 0x120)))
            mstore(add(dst, 0x160), mload(add(src, 0x140)))
            mstore(add(dst, 0x180), mload(add(src, 0x160)))
            mstore(add(dst, 0x1a0), mload(add(src, 0x180)))
            mstore(add(dst, 0x1c0), mload(add(src, 0x1a0)))
            mstore(add(dst, 0x1e0), mload(add(src, 0x1c0)))
            mstore(add(dst, 0x200), mload(add(src, 0x1e0)))
            mstore(add(dst, 0x220), mload(add(src, 0x200)))
            mstore(add(dst, 0x240), mload(add(src, 0x220)))
            mstore(add(dst, 0x260), mload(add(src, 0x240)))
            mstore(0x40, add(dst, 0x280))
        }
    }

    function dyn(int136[20] memory src) internal pure returns (int136[] memory dst) {
        assembly ("memory-safe") {
            dst := mload(0x40)
            mstore(dst, 0x14)
            mstore(add(dst, 0x20), mload(src))
            mstore(add(dst, 0x40), mload(add(src, 0x20)))
            mstore(add(dst, 0x60), mload(add(src, 0x40)))
            mstore(add(dst, 0x80), mload(add(src, 0x60)))
            mstore(add(dst, 0xa0), mload(add(src, 0x80)))
            mstore(add(dst, 0xc0), mload(add(src, 0xa0)))
            mstore(add(dst, 0xe0), mload(add(src, 0xc0)))
            mstore(add(dst, 0x100), mload(add(src, 0xe0)))
            mstore(add(dst, 0x120), mload(add(src, 0x100)))
            mstore(add(dst, 0x140), mload(add(src, 0x120)))
            mstore(add(dst, 0x160), mload(add(src, 0x140)))
            mstore(add(dst, 0x180), mload(add(src, 0x160)))
            mstore(add(dst, 0x1a0), mload(add(src, 0x180)))
            mstore(add(dst, 0x1c0), mload(add(src, 0x1a0)))
            mstore(add(dst, 0x1e0), mload(add(src, 0x1c0)))
            mstore(add(dst, 0x200), mload(add(src, 0x1e0)))
            mstore(add(dst, 0x220), mload(add(src, 0x200)))
            mstore(add(dst, 0x240), mload(add(src, 0x220)))
            mstore(add(dst, 0x260), mload(add(src, 0x240)))
            mstore(add(dst, 0x280), mload(add(src, 0x260)))
            mstore(0x40, add(dst, 0x2a0))
        }
    }
}
