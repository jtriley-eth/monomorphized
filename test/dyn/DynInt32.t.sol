// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { DynInt32 } from "../../src/dyn/DynInt32.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

contract DynInt32Test is Test {
    using DynInt32 for *;

    function testFuzz01(int32 v0) public {
        int32[] memory a = new int32[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(int32 v0, int32 v1) public {
        int32[] memory a = new int32[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(int32 v0, int32 v1, int32 v2) public {
        int32[] memory a = new int32[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(int32 v0, int32 v1, int32 v2, int32 v3) public {
        int32[] memory a = new int32[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(int32 v0, int32 v1, int32 v2, int32 v3, int32 v4) public {
        int32[] memory a = new int32[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(int32 v0, int32 v1, int32 v2, int32 v3, int32 v4, int32 v5) public {
        int32[] memory a = new int32[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(int32 v0, int32 v1, int32 v2, int32 v3, int32 v4, int32 v5, int32 v6) public {
        int32[] memory a = new int32[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(int32 v0, int32 v1, int32 v2, int32 v3, int32 v4, int32 v5, int32 v6, int32 v7) public {
        int32[] memory a = new int32[](8);
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

    function testFuzz09(int32 v0, int32 v1, int32 v2, int32 v3, int32 v4, int32 v5, int32 v6, int32 v7, int32 v8) public {
        int32[] memory a = new int32[](9);
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

    function testFuzz10(int32 v0, int32 v1, int32 v2, int32 v3, int32 v4, int32 v5, int32 v6, int32 v7, int32 v8, int32 v9) public {
        int32[] memory a = new int32[](10);
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

    function testFuzz11(int32 v0, int32 v1, int32 v2, int32 v3, int32 v4, int32 v5, int32 v6, int32 v7, int32 v8, int32 v9, int32 v10)
        public
    {
        int32[] memory a = new int32[](11);
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
        int32 v0,
        int32 v1,
        int32 v2,
        int32 v3,
        int32 v4,
        int32 v5,
        int32 v6,
        int32 v7,
        int32 v8,
        int32 v9,
        int32 v10,
        int32 v11
    ) public {
        int32[] memory a = new int32[](12);
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
        int32 v0,
        int32 v1,
        int32 v2,
        int32 v3,
        int32 v4,
        int32 v5,
        int32 v6,
        int32 v7,
        int32 v8,
        int32 v9,
        int32 v10,
        int32 v11,
        int32 v12
    ) public {
        int32[] memory a = new int32[](13);
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
        int32 v0,
        int32 v1,
        int32 v2,
        int32 v3,
        int32 v4,
        int32 v5,
        int32 v6,
        int32 v7,
        int32 v8,
        int32 v9,
        int32 v10,
        int32 v11,
        int32 v12,
        int32 v13
    ) public {
        int32[] memory a = new int32[](14);
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
        int32 v0,
        int32 v1,
        int32 v2,
        int32 v3,
        int32 v4,
        int32 v5,
        int32 v6,
        int32 v7,
        int32 v8,
        int32 v9,
        int32 v10,
        int32 v11,
        int32 v12,
        int32 v13,
        int32 v14
    ) public {
        int32[] memory a = new int32[](15);
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
        int32 v0,
        int32 v1,
        int32 v2,
        int32 v3,
        int32 v4,
        int32 v5,
        int32 v6,
        int32 v7,
        int32 v8,
        int32 v9,
        int32 v10,
        int32 v11,
        int32 v12,
        int32 v13,
        int32 v14,
        int32 v15
    ) public {
        int32[] memory a = new int32[](16);
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
        int32 v0,
        int32 v1,
        int32 v2,
        int32 v3,
        int32 v4,
        int32 v5,
        int32 v6,
        int32 v7,
        int32 v8,
        int32 v9,
        int32 v10,
        int32 v11,
        int32 v12,
        int32 v13,
        int32 v14,
        int32 v15,
        int32 v16
    ) public {
        int32[] memory a = new int32[](17);
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
        int32 v0,
        int32 v1,
        int32 v2,
        int32 v3,
        int32 v4,
        int32 v5,
        int32 v6,
        int32 v7,
        int32 v8,
        int32 v9,
        int32 v10,
        int32 v11,
        int32 v12,
        int32 v13,
        int32 v14,
        int32 v15,
        int32 v16,
        int32 v17
    ) public {
        int32[] memory a = new int32[](18);
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
        int32 v0,
        int32 v1,
        int32 v2,
        int32 v3,
        int32 v4,
        int32 v5,
        int32 v6,
        int32 v7,
        int32 v8,
        int32 v9,
        int32 v10,
        int32 v11,
        int32 v12,
        int32 v13,
        int32 v14,
        int32 v15,
        int32 v16,
        int32 v17,
        int32 v18
    ) public {
        int32[] memory a = new int32[](19);
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
        int32 v0,
        int32 v1,
        int32 v2,
        int32 v3,
        int32 v4,
        int32 v5,
        int32 v6,
        int32 v7,
        int32 v8,
        int32 v9,
        int32 v10,
        int32 v11,
        int32 v12,
        int32 v13,
        int32 v14,
        int32 v15,
        int32 v16,
        int32 v17,
        int32 v18,
        int32 v19
    ) public {
        int32[] memory a = new int32[](20);
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

    function eq(int32[] memory lhs, int32[] memory rhs) internal pure returns (bool) {
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

