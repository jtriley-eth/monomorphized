// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import { DynInt152 } from "../src/DynInt152.sol";

import {Test} from "../lib/forge-std/src/Test.sol";

contract DynInt152Test is Test {
    using DynInt152 for *;

    function testFuzz01(int152 v0) public {
        int152[] memory a = new int152[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(int152 v0, int152 v1) public {
        int152[] memory a = new int152[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(int152 v0, int152 v1, int152 v2) public {
        int152[] memory a = new int152[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(int152 v0, int152 v1, int152 v2, int152 v3) public {
        int152[] memory a = new int152[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(int152 v0, int152 v1, int152 v2, int152 v3, int152 v4) public {
        int152[] memory a = new int152[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(int152 v0, int152 v1, int152 v2, int152 v3, int152 v4, int152 v5) public {
        int152[] memory a = new int152[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(int152 v0, int152 v1, int152 v2, int152 v3, int152 v4, int152 v5, int152 v6) public {
        int152[] memory a = new int152[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(int152 v0, int152 v1, int152 v2, int152 v3, int152 v4, int152 v5, int152 v6, int152 v7) public {
        int152[] memory a = new int152[](8);
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

    function testFuzz09(int152 v0, int152 v1, int152 v2, int152 v3, int152 v4, int152 v5, int152 v6, int152 v7, int152 v8) public {
        int152[] memory a = new int152[](9);
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

    function testFuzz10(int152 v0, int152 v1, int152 v2, int152 v3, int152 v4, int152 v5, int152 v6, int152 v7, int152 v8, int152 v9) public {
        int152[] memory a = new int152[](10);
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

    function testFuzz11(int152 v0, int152 v1, int152 v2, int152 v3, int152 v4, int152 v5, int152 v6, int152 v7, int152 v8, int152 v9, int152 v10)
        public
    {
        int152[] memory a = new int152[](11);
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
        int152 v0,
        int152 v1,
        int152 v2,
        int152 v3,
        int152 v4,
        int152 v5,
        int152 v6,
        int152 v7,
        int152 v8,
        int152 v9,
        int152 v10,
        int152 v11
    ) public {
        int152[] memory a = new int152[](12);
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
        int152 v0,
        int152 v1,
        int152 v2,
        int152 v3,
        int152 v4,
        int152 v5,
        int152 v6,
        int152 v7,
        int152 v8,
        int152 v9,
        int152 v10,
        int152 v11,
        int152 v12
    ) public {
        int152[] memory a = new int152[](13);
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
        int152 v0,
        int152 v1,
        int152 v2,
        int152 v3,
        int152 v4,
        int152 v5,
        int152 v6,
        int152 v7,
        int152 v8,
        int152 v9,
        int152 v10,
        int152 v11,
        int152 v12,
        int152 v13
    ) public {
        int152[] memory a = new int152[](14);
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
        int152 v0,
        int152 v1,
        int152 v2,
        int152 v3,
        int152 v4,
        int152 v5,
        int152 v6,
        int152 v7,
        int152 v8,
        int152 v9,
        int152 v10,
        int152 v11,
        int152 v12,
        int152 v13,
        int152 v14
    ) public {
        int152[] memory a = new int152[](15);
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
        int152 v0,
        int152 v1,
        int152 v2,
        int152 v3,
        int152 v4,
        int152 v5,
        int152 v6,
        int152 v7,
        int152 v8,
        int152 v9,
        int152 v10,
        int152 v11,
        int152 v12,
        int152 v13,
        int152 v14,
        int152 v15
    ) public {
        int152[] memory a = new int152[](16);
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
        int152 v0,
        int152 v1,
        int152 v2,
        int152 v3,
        int152 v4,
        int152 v5,
        int152 v6,
        int152 v7,
        int152 v8,
        int152 v9,
        int152 v10,
        int152 v11,
        int152 v12,
        int152 v13,
        int152 v14,
        int152 v15,
        int152 v16
    ) public {
        int152[] memory a = new int152[](17);
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
        int152 v0,
        int152 v1,
        int152 v2,
        int152 v3,
        int152 v4,
        int152 v5,
        int152 v6,
        int152 v7,
        int152 v8,
        int152 v9,
        int152 v10,
        int152 v11,
        int152 v12,
        int152 v13,
        int152 v14,
        int152 v15,
        int152 v16,
        int152 v17
    ) public {
        int152[] memory a = new int152[](18);
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
        int152 v0,
        int152 v1,
        int152 v2,
        int152 v3,
        int152 v4,
        int152 v5,
        int152 v6,
        int152 v7,
        int152 v8,
        int152 v9,
        int152 v10,
        int152 v11,
        int152 v12,
        int152 v13,
        int152 v14,
        int152 v15,
        int152 v16,
        int152 v17,
        int152 v18
    ) public {
        int152[] memory a = new int152[](19);
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
        int152 v0,
        int152 v1,
        int152 v2,
        int152 v3,
        int152 v4,
        int152 v5,
        int152 v6,
        int152 v7,
        int152 v8,
        int152 v9,
        int152 v10,
        int152 v11,
        int152 v12,
        int152 v13,
        int152 v14,
        int152 v15,
        int152 v16,
        int152 v17,
        int152 v18,
        int152 v19
    ) public {
        int152[] memory a = new int152[](20);
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

    function eq(int152[] memory lhs, int152[] memory rhs) internal pure returns (bool) {
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
