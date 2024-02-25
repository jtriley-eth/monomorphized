// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import { DynInt120 } from "../../src/dyn/DynInt120.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

contract DynInt120Test is Test {
    using DynInt120 for *;

    function testFuzz01(int120 v0) public {
        int120[] memory a = new int120[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(int120 v0, int120 v1) public {
        int120[] memory a = new int120[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(int120 v0, int120 v1, int120 v2) public {
        int120[] memory a = new int120[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(int120 v0, int120 v1, int120 v2, int120 v3) public {
        int120[] memory a = new int120[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(int120 v0, int120 v1, int120 v2, int120 v3, int120 v4) public {
        int120[] memory a = new int120[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(int120 v0, int120 v1, int120 v2, int120 v3, int120 v4, int120 v5) public {
        int120[] memory a = new int120[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(int120 v0, int120 v1, int120 v2, int120 v3, int120 v4, int120 v5, int120 v6) public {
        int120[] memory a = new int120[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(int120 v0, int120 v1, int120 v2, int120 v3, int120 v4, int120 v5, int120 v6, int120 v7) public {
        int120[] memory a = new int120[](8);
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

    function testFuzz09(int120 v0, int120 v1, int120 v2, int120 v3, int120 v4, int120 v5, int120 v6, int120 v7, int120 v8) public {
        int120[] memory a = new int120[](9);
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

    function testFuzz10(int120 v0, int120 v1, int120 v2, int120 v3, int120 v4, int120 v5, int120 v6, int120 v7, int120 v8, int120 v9) public {
        int120[] memory a = new int120[](10);
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

    function testFuzz11(int120 v0, int120 v1, int120 v2, int120 v3, int120 v4, int120 v5, int120 v6, int120 v7, int120 v8, int120 v9, int120 v10)
        public
    {
        int120[] memory a = new int120[](11);
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
        int120 v0,
        int120 v1,
        int120 v2,
        int120 v3,
        int120 v4,
        int120 v5,
        int120 v6,
        int120 v7,
        int120 v8,
        int120 v9,
        int120 v10,
        int120 v11
    ) public {
        int120[] memory a = new int120[](12);
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
        int120 v0,
        int120 v1,
        int120 v2,
        int120 v3,
        int120 v4,
        int120 v5,
        int120 v6,
        int120 v7,
        int120 v8,
        int120 v9,
        int120 v10,
        int120 v11,
        int120 v12
    ) public {
        int120[] memory a = new int120[](13);
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
        int120 v0,
        int120 v1,
        int120 v2,
        int120 v3,
        int120 v4,
        int120 v5,
        int120 v6,
        int120 v7,
        int120 v8,
        int120 v9,
        int120 v10,
        int120 v11,
        int120 v12,
        int120 v13
    ) public {
        int120[] memory a = new int120[](14);
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
        int120 v0,
        int120 v1,
        int120 v2,
        int120 v3,
        int120 v4,
        int120 v5,
        int120 v6,
        int120 v7,
        int120 v8,
        int120 v9,
        int120 v10,
        int120 v11,
        int120 v12,
        int120 v13,
        int120 v14
    ) public {
        int120[] memory a = new int120[](15);
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
        int120 v0,
        int120 v1,
        int120 v2,
        int120 v3,
        int120 v4,
        int120 v5,
        int120 v6,
        int120 v7,
        int120 v8,
        int120 v9,
        int120 v10,
        int120 v11,
        int120 v12,
        int120 v13,
        int120 v14,
        int120 v15
    ) public {
        int120[] memory a = new int120[](16);
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
        int120 v0,
        int120 v1,
        int120 v2,
        int120 v3,
        int120 v4,
        int120 v5,
        int120 v6,
        int120 v7,
        int120 v8,
        int120 v9,
        int120 v10,
        int120 v11,
        int120 v12,
        int120 v13,
        int120 v14,
        int120 v15,
        int120 v16
    ) public {
        int120[] memory a = new int120[](17);
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
        int120 v0,
        int120 v1,
        int120 v2,
        int120 v3,
        int120 v4,
        int120 v5,
        int120 v6,
        int120 v7,
        int120 v8,
        int120 v9,
        int120 v10,
        int120 v11,
        int120 v12,
        int120 v13,
        int120 v14,
        int120 v15,
        int120 v16,
        int120 v17
    ) public {
        int120[] memory a = new int120[](18);
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
        int120 v0,
        int120 v1,
        int120 v2,
        int120 v3,
        int120 v4,
        int120 v5,
        int120 v6,
        int120 v7,
        int120 v8,
        int120 v9,
        int120 v10,
        int120 v11,
        int120 v12,
        int120 v13,
        int120 v14,
        int120 v15,
        int120 v16,
        int120 v17,
        int120 v18
    ) public {
        int120[] memory a = new int120[](19);
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
        int120 v0,
        int120 v1,
        int120 v2,
        int120 v3,
        int120 v4,
        int120 v5,
        int120 v6,
        int120 v7,
        int120 v8,
        int120 v9,
        int120 v10,
        int120 v11,
        int120 v12,
        int120 v13,
        int120 v14,
        int120 v15,
        int120 v16,
        int120 v17,
        int120 v18,
        int120 v19
    ) public {
        int120[] memory a = new int120[](20);
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

    function eq(int120[] memory lhs, int120[] memory rhs) internal pure returns (bool) {
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

