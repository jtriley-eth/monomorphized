// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import { DynInt136 } from "../../src/dyn/DynInt136.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

contract DynInt136Test is Test {
    using DynInt136 for *;

    function testFuzz01(int136 v0) public {
        int136[] memory a = new int136[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(int136 v0, int136 v1) public {
        int136[] memory a = new int136[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(int136 v0, int136 v1, int136 v2) public {
        int136[] memory a = new int136[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(int136 v0, int136 v1, int136 v2, int136 v3) public {
        int136[] memory a = new int136[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(int136 v0, int136 v1, int136 v2, int136 v3, int136 v4) public {
        int136[] memory a = new int136[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(int136 v0, int136 v1, int136 v2, int136 v3, int136 v4, int136 v5) public {
        int136[] memory a = new int136[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(int136 v0, int136 v1, int136 v2, int136 v3, int136 v4, int136 v5, int136 v6) public {
        int136[] memory a = new int136[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(int136 v0, int136 v1, int136 v2, int136 v3, int136 v4, int136 v5, int136 v6, int136 v7) public {
        int136[] memory a = new int136[](8);
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

    function testFuzz09(int136 v0, int136 v1, int136 v2, int136 v3, int136 v4, int136 v5, int136 v6, int136 v7, int136 v8) public {
        int136[] memory a = new int136[](9);
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

    function testFuzz10(int136 v0, int136 v1, int136 v2, int136 v3, int136 v4, int136 v5, int136 v6, int136 v7, int136 v8, int136 v9) public {
        int136[] memory a = new int136[](10);
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

    function testFuzz11(int136 v0, int136 v1, int136 v2, int136 v3, int136 v4, int136 v5, int136 v6, int136 v7, int136 v8, int136 v9, int136 v10)
        public
    {
        int136[] memory a = new int136[](11);
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
        int136 v0,
        int136 v1,
        int136 v2,
        int136 v3,
        int136 v4,
        int136 v5,
        int136 v6,
        int136 v7,
        int136 v8,
        int136 v9,
        int136 v10,
        int136 v11
    ) public {
        int136[] memory a = new int136[](12);
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
        int136 v0,
        int136 v1,
        int136 v2,
        int136 v3,
        int136 v4,
        int136 v5,
        int136 v6,
        int136 v7,
        int136 v8,
        int136 v9,
        int136 v10,
        int136 v11,
        int136 v12
    ) public {
        int136[] memory a = new int136[](13);
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
        int136 v0,
        int136 v1,
        int136 v2,
        int136 v3,
        int136 v4,
        int136 v5,
        int136 v6,
        int136 v7,
        int136 v8,
        int136 v9,
        int136 v10,
        int136 v11,
        int136 v12,
        int136 v13
    ) public {
        int136[] memory a = new int136[](14);
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
        int136 v0,
        int136 v1,
        int136 v2,
        int136 v3,
        int136 v4,
        int136 v5,
        int136 v6,
        int136 v7,
        int136 v8,
        int136 v9,
        int136 v10,
        int136 v11,
        int136 v12,
        int136 v13,
        int136 v14
    ) public {
        int136[] memory a = new int136[](15);
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
        int136 v0,
        int136 v1,
        int136 v2,
        int136 v3,
        int136 v4,
        int136 v5,
        int136 v6,
        int136 v7,
        int136 v8,
        int136 v9,
        int136 v10,
        int136 v11,
        int136 v12,
        int136 v13,
        int136 v14,
        int136 v15
    ) public {
        int136[] memory a = new int136[](16);
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
        int136 v0,
        int136 v1,
        int136 v2,
        int136 v3,
        int136 v4,
        int136 v5,
        int136 v6,
        int136 v7,
        int136 v8,
        int136 v9,
        int136 v10,
        int136 v11,
        int136 v12,
        int136 v13,
        int136 v14,
        int136 v15,
        int136 v16
    ) public {
        int136[] memory a = new int136[](17);
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
        int136 v0,
        int136 v1,
        int136 v2,
        int136 v3,
        int136 v4,
        int136 v5,
        int136 v6,
        int136 v7,
        int136 v8,
        int136 v9,
        int136 v10,
        int136 v11,
        int136 v12,
        int136 v13,
        int136 v14,
        int136 v15,
        int136 v16,
        int136 v17
    ) public {
        int136[] memory a = new int136[](18);
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
        int136 v0,
        int136 v1,
        int136 v2,
        int136 v3,
        int136 v4,
        int136 v5,
        int136 v6,
        int136 v7,
        int136 v8,
        int136 v9,
        int136 v10,
        int136 v11,
        int136 v12,
        int136 v13,
        int136 v14,
        int136 v15,
        int136 v16,
        int136 v17,
        int136 v18
    ) public {
        int136[] memory a = new int136[](19);
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
        int136 v0,
        int136 v1,
        int136 v2,
        int136 v3,
        int136 v4,
        int136 v5,
        int136 v6,
        int136 v7,
        int136 v8,
        int136 v9,
        int136 v10,
        int136 v11,
        int136 v12,
        int136 v13,
        int136 v14,
        int136 v15,
        int136 v16,
        int136 v17,
        int136 v18,
        int136 v19
    ) public {
        int136[] memory a = new int136[](20);
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

    function eq(int136[] memory lhs, int136[] memory rhs) internal pure returns (bool) {
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

