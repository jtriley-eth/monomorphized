// SPDX-License-Identifier: AGPL-3.0-only OR MIT
pragma solidity 0.8.24;

import { DynInt168 } from "../../src/dyn/DynInt168.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

contract DynInt168Test is Test {
    using DynInt168 for *;

    function testFuzz01(int168 v0) public {
        int168[] memory a = new int168[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(int168 v0, int168 v1) public {
        int168[] memory a = new int168[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(int168 v0, int168 v1, int168 v2) public {
        int168[] memory a = new int168[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(int168 v0, int168 v1, int168 v2, int168 v3) public {
        int168[] memory a = new int168[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(int168 v0, int168 v1, int168 v2, int168 v3, int168 v4) public {
        int168[] memory a = new int168[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(int168 v0, int168 v1, int168 v2, int168 v3, int168 v4, int168 v5) public {
        int168[] memory a = new int168[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(int168 v0, int168 v1, int168 v2, int168 v3, int168 v4, int168 v5, int168 v6) public {
        int168[] memory a = new int168[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(int168 v0, int168 v1, int168 v2, int168 v3, int168 v4, int168 v5, int168 v6, int168 v7) public {
        int168[] memory a = new int168[](8);
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

    function testFuzz09(int168 v0, int168 v1, int168 v2, int168 v3, int168 v4, int168 v5, int168 v6, int168 v7, int168 v8) public {
        int168[] memory a = new int168[](9);
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

    function testFuzz10(int168 v0, int168 v1, int168 v2, int168 v3, int168 v4, int168 v5, int168 v6, int168 v7, int168 v8, int168 v9) public {
        int168[] memory a = new int168[](10);
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

    function testFuzz11(int168 v0, int168 v1, int168 v2, int168 v3, int168 v4, int168 v5, int168 v6, int168 v7, int168 v8, int168 v9, int168 v10)
        public
    {
        int168[] memory a = new int168[](11);
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
        int168 v0,
        int168 v1,
        int168 v2,
        int168 v3,
        int168 v4,
        int168 v5,
        int168 v6,
        int168 v7,
        int168 v8,
        int168 v9,
        int168 v10,
        int168 v11
    ) public {
        int168[] memory a = new int168[](12);
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
        int168 v0,
        int168 v1,
        int168 v2,
        int168 v3,
        int168 v4,
        int168 v5,
        int168 v6,
        int168 v7,
        int168 v8,
        int168 v9,
        int168 v10,
        int168 v11,
        int168 v12
    ) public {
        int168[] memory a = new int168[](13);
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
        int168 v0,
        int168 v1,
        int168 v2,
        int168 v3,
        int168 v4,
        int168 v5,
        int168 v6,
        int168 v7,
        int168 v8,
        int168 v9,
        int168 v10,
        int168 v11,
        int168 v12,
        int168 v13
    ) public {
        int168[] memory a = new int168[](14);
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
        int168 v0,
        int168 v1,
        int168 v2,
        int168 v3,
        int168 v4,
        int168 v5,
        int168 v6,
        int168 v7,
        int168 v8,
        int168 v9,
        int168 v10,
        int168 v11,
        int168 v12,
        int168 v13,
        int168 v14
    ) public {
        int168[] memory a = new int168[](15);
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
        int168 v0,
        int168 v1,
        int168 v2,
        int168 v3,
        int168 v4,
        int168 v5,
        int168 v6,
        int168 v7,
        int168 v8,
        int168 v9,
        int168 v10,
        int168 v11,
        int168 v12,
        int168 v13,
        int168 v14,
        int168 v15
    ) public {
        int168[] memory a = new int168[](16);
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
        int168 v0,
        int168 v1,
        int168 v2,
        int168 v3,
        int168 v4,
        int168 v5,
        int168 v6,
        int168 v7,
        int168 v8,
        int168 v9,
        int168 v10,
        int168 v11,
        int168 v12,
        int168 v13,
        int168 v14,
        int168 v15,
        int168 v16
    ) public {
        int168[] memory a = new int168[](17);
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
        int168 v0,
        int168 v1,
        int168 v2,
        int168 v3,
        int168 v4,
        int168 v5,
        int168 v6,
        int168 v7,
        int168 v8,
        int168 v9,
        int168 v10,
        int168 v11,
        int168 v12,
        int168 v13,
        int168 v14,
        int168 v15,
        int168 v16,
        int168 v17
    ) public {
        int168[] memory a = new int168[](18);
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
        int168 v0,
        int168 v1,
        int168 v2,
        int168 v3,
        int168 v4,
        int168 v5,
        int168 v6,
        int168 v7,
        int168 v8,
        int168 v9,
        int168 v10,
        int168 v11,
        int168 v12,
        int168 v13,
        int168 v14,
        int168 v15,
        int168 v16,
        int168 v17,
        int168 v18
    ) public {
        int168[] memory a = new int168[](19);
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
        int168 v0,
        int168 v1,
        int168 v2,
        int168 v3,
        int168 v4,
        int168 v5,
        int168 v6,
        int168 v7,
        int168 v8,
        int168 v9,
        int168 v10,
        int168 v11,
        int168 v12,
        int168 v13,
        int168 v14,
        int168 v15,
        int168 v16,
        int168 v17,
        int168 v18,
        int168 v19
    ) public {
        int168[] memory a = new int168[](20);
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

    function eq(int168[] memory lhs, int168[] memory rhs) internal pure returns (bool) {
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

