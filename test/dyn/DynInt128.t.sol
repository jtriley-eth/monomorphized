// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import { DynInt128 } from "../../src/dyn/DynInt128.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

contract DynInt128Test is Test {
    using DynInt128 for *;

    function testFuzz01(int128 v0) public {
        int128[] memory a = new int128[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(int128 v0, int128 v1) public {
        int128[] memory a = new int128[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(int128 v0, int128 v1, int128 v2) public {
        int128[] memory a = new int128[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(int128 v0, int128 v1, int128 v2, int128 v3) public {
        int128[] memory a = new int128[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(int128 v0, int128 v1, int128 v2, int128 v3, int128 v4) public {
        int128[] memory a = new int128[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(int128 v0, int128 v1, int128 v2, int128 v3, int128 v4, int128 v5) public {
        int128[] memory a = new int128[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(int128 v0, int128 v1, int128 v2, int128 v3, int128 v4, int128 v5, int128 v6) public {
        int128[] memory a = new int128[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(int128 v0, int128 v1, int128 v2, int128 v3, int128 v4, int128 v5, int128 v6, int128 v7) public {
        int128[] memory a = new int128[](8);
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

    function testFuzz09(int128 v0, int128 v1, int128 v2, int128 v3, int128 v4, int128 v5, int128 v6, int128 v7, int128 v8) public {
        int128[] memory a = new int128[](9);
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

    function testFuzz10(int128 v0, int128 v1, int128 v2, int128 v3, int128 v4, int128 v5, int128 v6, int128 v7, int128 v8, int128 v9) public {
        int128[] memory a = new int128[](10);
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

    function testFuzz11(int128 v0, int128 v1, int128 v2, int128 v3, int128 v4, int128 v5, int128 v6, int128 v7, int128 v8, int128 v9, int128 v10)
        public
    {
        int128[] memory a = new int128[](11);
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
        int128 v0,
        int128 v1,
        int128 v2,
        int128 v3,
        int128 v4,
        int128 v5,
        int128 v6,
        int128 v7,
        int128 v8,
        int128 v9,
        int128 v10,
        int128 v11
    ) public {
        int128[] memory a = new int128[](12);
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
        int128 v0,
        int128 v1,
        int128 v2,
        int128 v3,
        int128 v4,
        int128 v5,
        int128 v6,
        int128 v7,
        int128 v8,
        int128 v9,
        int128 v10,
        int128 v11,
        int128 v12
    ) public {
        int128[] memory a = new int128[](13);
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
        int128 v0,
        int128 v1,
        int128 v2,
        int128 v3,
        int128 v4,
        int128 v5,
        int128 v6,
        int128 v7,
        int128 v8,
        int128 v9,
        int128 v10,
        int128 v11,
        int128 v12,
        int128 v13
    ) public {
        int128[] memory a = new int128[](14);
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
        int128 v0,
        int128 v1,
        int128 v2,
        int128 v3,
        int128 v4,
        int128 v5,
        int128 v6,
        int128 v7,
        int128 v8,
        int128 v9,
        int128 v10,
        int128 v11,
        int128 v12,
        int128 v13,
        int128 v14
    ) public {
        int128[] memory a = new int128[](15);
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
        int128 v0,
        int128 v1,
        int128 v2,
        int128 v3,
        int128 v4,
        int128 v5,
        int128 v6,
        int128 v7,
        int128 v8,
        int128 v9,
        int128 v10,
        int128 v11,
        int128 v12,
        int128 v13,
        int128 v14,
        int128 v15
    ) public {
        int128[] memory a = new int128[](16);
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
        int128 v0,
        int128 v1,
        int128 v2,
        int128 v3,
        int128 v4,
        int128 v5,
        int128 v6,
        int128 v7,
        int128 v8,
        int128 v9,
        int128 v10,
        int128 v11,
        int128 v12,
        int128 v13,
        int128 v14,
        int128 v15,
        int128 v16
    ) public {
        int128[] memory a = new int128[](17);
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
        int128 v0,
        int128 v1,
        int128 v2,
        int128 v3,
        int128 v4,
        int128 v5,
        int128 v6,
        int128 v7,
        int128 v8,
        int128 v9,
        int128 v10,
        int128 v11,
        int128 v12,
        int128 v13,
        int128 v14,
        int128 v15,
        int128 v16,
        int128 v17
    ) public {
        int128[] memory a = new int128[](18);
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
        int128 v0,
        int128 v1,
        int128 v2,
        int128 v3,
        int128 v4,
        int128 v5,
        int128 v6,
        int128 v7,
        int128 v8,
        int128 v9,
        int128 v10,
        int128 v11,
        int128 v12,
        int128 v13,
        int128 v14,
        int128 v15,
        int128 v16,
        int128 v17,
        int128 v18
    ) public {
        int128[] memory a = new int128[](19);
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
        int128 v0,
        int128 v1,
        int128 v2,
        int128 v3,
        int128 v4,
        int128 v5,
        int128 v6,
        int128 v7,
        int128 v8,
        int128 v9,
        int128 v10,
        int128 v11,
        int128 v12,
        int128 v13,
        int128 v14,
        int128 v15,
        int128 v16,
        int128 v17,
        int128 v18,
        int128 v19
    ) public {
        int128[] memory a = new int128[](20);
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

    function eq(int128[] memory lhs, int128[] memory rhs) internal pure returns (bool) {
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

