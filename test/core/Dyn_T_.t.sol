// SPDX-License-Identifier: AGPL-3.0-only OR MIT
pragma solidity 0.8.24;

import { _T_ } from "../../src/core/_T_.sol";

import { Dyn_T_ } from "../../src/core/Dyn_T_.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

contract Dyn_T_Test is Test {
    using Dyn_T_ for *;

    function testFuzz01(_T_ v0) public {
        _T_[] memory a = new _T_[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(_T_ v0, _T_ v1) public {
        _T_[] memory a = new _T_[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(_T_ v0, _T_ v1, _T_ v2) public {
        _T_[] memory a = new _T_[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(_T_ v0, _T_ v1, _T_ v2, _T_ v3) public {
        _T_[] memory a = new _T_[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(_T_ v0, _T_ v1, _T_ v2, _T_ v3, _T_ v4) public {
        _T_[] memory a = new _T_[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(_T_ v0, _T_ v1, _T_ v2, _T_ v3, _T_ v4, _T_ v5) public {
        _T_[] memory a = new _T_[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(_T_ v0, _T_ v1, _T_ v2, _T_ v3, _T_ v4, _T_ v5, _T_ v6) public {
        _T_[] memory a = new _T_[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(_T_ v0, _T_ v1, _T_ v2, _T_ v3, _T_ v4, _T_ v5, _T_ v6, _T_ v7) public {
        _T_[] memory a = new _T_[](8);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;
        a[7] = v7;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6, v7].dyn()));
    }

    function testFuzz09(_T_ v0, _T_ v1, _T_ v2, _T_ v3, _T_ v4, _T_ v5, _T_ v6, _T_ v7, _T_ v8) public {
        _T_[] memory a = new _T_[](9);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;
        a[7] = v7;
        a[8] = v8;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6, v7, v8].dyn()));
    }

    function testFuzz10(_T_ v0, _T_ v1, _T_ v2, _T_ v3, _T_ v4, _T_ v5, _T_ v6, _T_ v7, _T_ v8, _T_ v9) public {
        _T_[] memory a = new _T_[](10);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;
        a[7] = v7;
        a[8] = v8;
        a[9] = v9;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6, v7, v8, v9].dyn()));
    }

    function testFuzz11(_T_ v0, _T_ v1, _T_ v2, _T_ v3, _T_ v4, _T_ v5, _T_ v6, _T_ v7, _T_ v8, _T_ v9, _T_ v10)
        public
    {
        _T_[] memory a = new _T_[](11);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;
        a[7] = v7;
        a[8] = v8;
        a[9] = v9;
        a[10] = v10;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10].dyn()));
    }

    function testFuzz12(
        _T_ v0,
        _T_ v1,
        _T_ v2,
        _T_ v3,
        _T_ v4,
        _T_ v5,
        _T_ v6,
        _T_ v7,
        _T_ v8,
        _T_ v9,
        _T_ v10,
        _T_ v11
    ) public {
        _T_[] memory a = new _T_[](12);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;
        a[7] = v7;
        a[8] = v8;
        a[9] = v9;
        a[10] = v10;
        a[11] = v11;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11].dyn()));
    }

    function testFuzz13(
        _T_ v0,
        _T_ v1,
        _T_ v2,
        _T_ v3,
        _T_ v4,
        _T_ v5,
        _T_ v6,
        _T_ v7,
        _T_ v8,
        _T_ v9,
        _T_ v10,
        _T_ v11,
        _T_ v12
    ) public {
        _T_[] memory a = new _T_[](13);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;
        a[7] = v7;
        a[8] = v8;
        a[9] = v9;
        a[10] = v10;
        a[11] = v11;
        a[12] = v12;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12].dyn()));
    }

    function testFuzz14(
        _T_ v0,
        _T_ v1,
        _T_ v2,
        _T_ v3,
        _T_ v4,
        _T_ v5,
        _T_ v6,
        _T_ v7,
        _T_ v8,
        _T_ v9,
        _T_ v10,
        _T_ v11,
        _T_ v12,
        _T_ v13
    ) public {
        _T_[] memory a = new _T_[](14);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;
        a[7] = v7;
        a[8] = v8;
        a[9] = v9;
        a[10] = v10;
        a[11] = v11;
        a[12] = v12;
        a[13] = v13;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13].dyn()));
    }

    function testFuzz15(
        _T_ v0,
        _T_ v1,
        _T_ v2,
        _T_ v3,
        _T_ v4,
        _T_ v5,
        _T_ v6,
        _T_ v7,
        _T_ v8,
        _T_ v9,
        _T_ v10,
        _T_ v11,
        _T_ v12,
        _T_ v13,
        _T_ v14
    ) public {
        _T_[] memory a = new _T_[](15);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;
        a[7] = v7;
        a[8] = v8;
        a[9] = v9;
        a[10] = v10;
        a[11] = v11;
        a[12] = v12;
        a[13] = v13;
        a[14] = v14;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14].dyn()));
    }

    function testFuzz16(
        _T_ v0,
        _T_ v1,
        _T_ v2,
        _T_ v3,
        _T_ v4,
        _T_ v5,
        _T_ v6,
        _T_ v7,
        _T_ v8,
        _T_ v9,
        _T_ v10,
        _T_ v11,
        _T_ v12,
        _T_ v13,
        _T_ v14,
        _T_ v15
    ) public {
        _T_[] memory a = new _T_[](16);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;
        a[7] = v7;
        a[8] = v8;
        a[9] = v9;
        a[10] = v10;
        a[11] = v11;
        a[12] = v12;
        a[13] = v13;
        a[14] = v14;
        a[15] = v15;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15].dyn()));
    }

    function testFuzz17(
        _T_ v0,
        _T_ v1,
        _T_ v2,
        _T_ v3,
        _T_ v4,
        _T_ v5,
        _T_ v6,
        _T_ v7,
        _T_ v8,
        _T_ v9,
        _T_ v10,
        _T_ v11,
        _T_ v12,
        _T_ v13,
        _T_ v14,
        _T_ v15,
        _T_ v16
    ) public {
        _T_[] memory a = new _T_[](17);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;
        a[7] = v7;
        a[8] = v8;
        a[9] = v9;
        a[10] = v10;
        a[11] = v11;
        a[12] = v12;
        a[13] = v13;
        a[14] = v14;
        a[15] = v15;
        a[16] = v16;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16].dyn()));
    }

    function testFuzz18(
        _T_ v0,
        _T_ v1,
        _T_ v2,
        _T_ v3,
        _T_ v4,
        _T_ v5,
        _T_ v6,
        _T_ v7,
        _T_ v8,
        _T_ v9,
        _T_ v10,
        _T_ v11,
        _T_ v12,
        _T_ v13,
        _T_ v14,
        _T_ v15,
        _T_ v16,
        _T_ v17
    ) public {
        _T_[] memory a = new _T_[](18);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;
        a[7] = v7;
        a[8] = v8;
        a[9] = v9;
        a[10] = v10;
        a[11] = v11;
        a[12] = v12;
        a[13] = v13;
        a[14] = v14;
        a[15] = v15;
        a[16] = v16;
        a[17] = v17;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17].dyn()));
    }

    function testFuzz19(
        _T_ v0,
        _T_ v1,
        _T_ v2,
        _T_ v3,
        _T_ v4,
        _T_ v5,
        _T_ v6,
        _T_ v7,
        _T_ v8,
        _T_ v9,
        _T_ v10,
        _T_ v11,
        _T_ v12,
        _T_ v13,
        _T_ v14,
        _T_ v15,
        _T_ v16,
        _T_ v17,
        _T_ v18
    ) public {
        _T_[] memory a = new _T_[](19);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;
        a[7] = v7;
        a[8] = v8;
        a[9] = v9;
        a[10] = v10;
        a[11] = v11;
        a[12] = v12;
        a[13] = v13;
        a[14] = v14;
        a[15] = v15;
        a[16] = v16;
        a[17] = v17;
        a[18] = v18;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18].dyn()));
    }

    function testFuzz20(
        _T_ v0,
        _T_ v1,
        _T_ v2,
        _T_ v3,
        _T_ v4,
        _T_ v5,
        _T_ v6,
        _T_ v7,
        _T_ v8,
        _T_ v9,
        _T_ v10,
        _T_ v11,
        _T_ v12,
        _T_ v13,
        _T_ v14,
        _T_ v15,
        _T_ v16,
        _T_ v17,
        _T_ v18,
        _T_ v19
    ) public {
        _T_[] memory a = new _T_[](20);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;
        a[7] = v7;
        a[8] = v8;
        a[9] = v9;
        a[10] = v10;
        a[11] = v11;
        a[12] = v12;
        a[13] = v13;
        a[14] = v14;
        a[15] = v15;
        a[16] = v16;
        a[17] = v17;
        a[18] = v18;
        a[19] = v19;

        assertTrue(
            eq(a, [v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19].dyn())
        );
    }

    function eq(_T_[] memory lhs, _T_[] memory rhs) internal pure returns (bool) {
        if (lhs.length == rhs.length) {
            for (uint256 i = 0; i < lhs.length; i++) {
                if (lhs[i] != rhs[i]) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
}

