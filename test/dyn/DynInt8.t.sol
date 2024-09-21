// SPDX-License-Identifier: AGPL-3.0-only OR MIT
pragma solidity 0.8.24;

import { DynInt8 } from "../../src/dyn/DynInt8.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

contract DynInt8Test is Test {
    using DynInt8 for *;

    function testFuzz01(int8 v0) public {
        int8[] memory a = new int8[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(int8 v0, int8 v1) public {
        int8[] memory a = new int8[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(int8 v0, int8 v1, int8 v2) public {
        int8[] memory a = new int8[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(int8 v0, int8 v1, int8 v2, int8 v3) public {
        int8[] memory a = new int8[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(int8 v0, int8 v1, int8 v2, int8 v3, int8 v4) public {
        int8[] memory a = new int8[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(int8 v0, int8 v1, int8 v2, int8 v3, int8 v4, int8 v5) public {
        int8[] memory a = new int8[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(int8 v0, int8 v1, int8 v2, int8 v3, int8 v4, int8 v5, int8 v6) public {
        int8[] memory a = new int8[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(int8 v0, int8 v1, int8 v2, int8 v3, int8 v4, int8 v5, int8 v6, int8 v7) public {
        int8[] memory a = new int8[](8);
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

    function testFuzz09(int8 v0, int8 v1, int8 v2, int8 v3, int8 v4, int8 v5, int8 v6, int8 v7, int8 v8) public {
        int8[] memory a = new int8[](9);
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

    function testFuzz10(int8 v0, int8 v1, int8 v2, int8 v3, int8 v4, int8 v5, int8 v6, int8 v7, int8 v8, int8 v9) public {
        int8[] memory a = new int8[](10);
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

    function testFuzz11(int8 v0, int8 v1, int8 v2, int8 v3, int8 v4, int8 v5, int8 v6, int8 v7, int8 v8, int8 v9, int8 v10)
        public
    {
        int8[] memory a = new int8[](11);
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
        int8 v0,
        int8 v1,
        int8 v2,
        int8 v3,
        int8 v4,
        int8 v5,
        int8 v6,
        int8 v7,
        int8 v8,
        int8 v9,
        int8 v10,
        int8 v11
    ) public {
        int8[] memory a = new int8[](12);
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
        int8 v0,
        int8 v1,
        int8 v2,
        int8 v3,
        int8 v4,
        int8 v5,
        int8 v6,
        int8 v7,
        int8 v8,
        int8 v9,
        int8 v10,
        int8 v11,
        int8 v12
    ) public {
        int8[] memory a = new int8[](13);
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
        int8 v0,
        int8 v1,
        int8 v2,
        int8 v3,
        int8 v4,
        int8 v5,
        int8 v6,
        int8 v7,
        int8 v8,
        int8 v9,
        int8 v10,
        int8 v11,
        int8 v12,
        int8 v13
    ) public {
        int8[] memory a = new int8[](14);
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
        int8 v0,
        int8 v1,
        int8 v2,
        int8 v3,
        int8 v4,
        int8 v5,
        int8 v6,
        int8 v7,
        int8 v8,
        int8 v9,
        int8 v10,
        int8 v11,
        int8 v12,
        int8 v13,
        int8 v14
    ) public {
        int8[] memory a = new int8[](15);
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
        int8 v0,
        int8 v1,
        int8 v2,
        int8 v3,
        int8 v4,
        int8 v5,
        int8 v6,
        int8 v7,
        int8 v8,
        int8 v9,
        int8 v10,
        int8 v11,
        int8 v12,
        int8 v13,
        int8 v14,
        int8 v15
    ) public {
        int8[] memory a = new int8[](16);
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
        int8 v0,
        int8 v1,
        int8 v2,
        int8 v3,
        int8 v4,
        int8 v5,
        int8 v6,
        int8 v7,
        int8 v8,
        int8 v9,
        int8 v10,
        int8 v11,
        int8 v12,
        int8 v13,
        int8 v14,
        int8 v15,
        int8 v16
    ) public {
        int8[] memory a = new int8[](17);
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
        int8 v0,
        int8 v1,
        int8 v2,
        int8 v3,
        int8 v4,
        int8 v5,
        int8 v6,
        int8 v7,
        int8 v8,
        int8 v9,
        int8 v10,
        int8 v11,
        int8 v12,
        int8 v13,
        int8 v14,
        int8 v15,
        int8 v16,
        int8 v17
    ) public {
        int8[] memory a = new int8[](18);
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
        int8 v0,
        int8 v1,
        int8 v2,
        int8 v3,
        int8 v4,
        int8 v5,
        int8 v6,
        int8 v7,
        int8 v8,
        int8 v9,
        int8 v10,
        int8 v11,
        int8 v12,
        int8 v13,
        int8 v14,
        int8 v15,
        int8 v16,
        int8 v17,
        int8 v18
    ) public {
        int8[] memory a = new int8[](19);
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
        int8 v0,
        int8 v1,
        int8 v2,
        int8 v3,
        int8 v4,
        int8 v5,
        int8 v6,
        int8 v7,
        int8 v8,
        int8 v9,
        int8 v10,
        int8 v11,
        int8 v12,
        int8 v13,
        int8 v14,
        int8 v15,
        int8 v16,
        int8 v17,
        int8 v18,
        int8 v19
    ) public {
        int8[] memory a = new int8[](20);
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

    function eq(int8[] memory lhs, int8[] memory rhs) internal pure returns (bool) {
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

