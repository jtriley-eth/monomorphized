// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

type _T_ is uint256;

using {eq_T_ as ==, neq_T_ as !=} for _T_ global;

function eq_T_(_T_ lhs, _T_ rhs) pure returns (bool res) {
    assembly {
        res := eq(lhs, rhs)
    }
}

function neq_T_(_T_ lhs, _T_ rhs) pure returns (bool) {
    return !(lhs == rhs);
}

library Dyn_T_ {
    function dyn(_T_[1] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x01)
            mstore(add(dst, 0x20), mload(add(src, 0x20)))
            mstore(0x40, add(dst, 0x40))
        }
    }

    function dyn(_T_[2] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x02)
            mstore(add(dst, 0x20), mload(add(src, 0x20)))
            mstore(add(dst, 0x40), mload(add(src, 0x40)))
            mstore(0x40, add(dst, 0x60))
        }
    }

    function dyn(_T_[3] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x03)
            // mcopy(dst, src, mul(0x20, 0x03))
            mstore(0x40, add(dst, 0x80))
        }
    }

    function dyn(_T_[4] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x04)
            // mcopy(dst, src, mul(0x20, 0x04))
            mstore(0x40, add(dst, 0xa0))
        }
    }

    function dyn(_T_[5] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x05)
            // mcopy(dst, src, mul(0x20, 0x05))
            mstore(0x40, add(dst, 0xc0))
        }
    }

    function dyn(_T_[6] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x06)
            // mcopy(dst, src, mul(0x20, 0x06))
            mstore(0x40, add(dst, 0xe0))
        }
    }

    function dyn(_T_[7] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x07)
            // mcopy(dst, src, mul(0x20, 0x07))
            mstore(0x40, add(dst, 0x100))
        }
    }

    function dyn(_T_[8] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x08)
            // mcopy(dst, src, mul(0x20, 0x08))
            mstore(0x40, add(dst, 0x120))
        }
    }

    function dyn(_T_[9] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x09)
            // mcopy(dst, src, mul(0x20, 0x09))
            mstore(0x40, add(dst, 0x140))
        }
    }

    function dyn(_T_[10] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x0a)
            // mcopy(dst, src, mul(0x20, 0x0a))
            mstore(0x40, add(dst, 0x160))
        }
    }

    function dyn(_T_[11] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x0b)
            // mcopy(dst, src, mul(0x20, 0x0b))
            mstore(0x40, add(dst, 0x180))
        }
    }

    function dyn(_T_[12] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x0c)
            // mcopy(dst, src, mul(0x20, 0x0c))
            mstore(0x40, add(dst, 0x1a0))
        }
    }

    function dyn(_T_[13] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x0d)
            // mcopy(dst, src, mul(0x20, 0x0d))
            mstore(0x40, add(dst, 0x1c0))
        }
    }

    function dyn(_T_[14] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x0e)
            // mcopy(dst, src, mul(0x20, 0x0e))
            mstore(0x40, add(dst, 0x1e0))
        }
    }

    function dyn(_T_[15] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x0f)
            // mcopy(dst, src, mul(0x20, 0x0f))
            mstore(0x40, add(dst, 0x200))
        }
    }

    function dyn(_T_[16] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x10)
            // mcopy(dst, src, mul(0x20, 0x10))
            mstore(0x40, add(dst, 0x220))
        }
    }

    function dyn(_T_[17] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x11)
            // mcopy(dst, src, mul(0x20, 0x11))
            mstore(0x40, add(dst, 0x240))
        }
    }

    function dyn(_T_[18] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x12)
            // mcopy(dst, src, mul(0x20, 0x12))
            mstore(0x40, add(dst, 0x260))
        }
    }

    function dyn(_T_[19] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x13)
            // mcopy(dst, src, mul(0x20, 0x13))
            mstore(0x40, add(dst, 0x280))
        }
    }

    function dyn(_T_[20] memory src) internal pure returns (_T_[] memory dst) {
        assembly {
            dst := mload(0x40)
            mstore(dst, 0x14)
            // mcopy(dst, src, mul(0x20, 0x14))
            mstore(0x40, add(dst, 0x2a0))
        }
    }
}
