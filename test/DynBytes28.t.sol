// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import { DynBytes28 } from "../src/DynBytes28.sol";

import {Test} from "../lib/forge-std/src/Test.sol";

contract DynBytes28Test is Test {
    using DynBytes28 for *;

    function testFuzz01(bytes28 v0) public {
        bytes28[] memory a = new bytes28[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(bytes28 v0, bytes28 v1) public {
        bytes28[] memory a = new bytes28[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(bytes28 v0, bytes28 v1, bytes28 v2) public {
        bytes28[] memory a = new bytes28[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(bytes28 v0, bytes28 v1, bytes28 v2, bytes28 v3) public {
        bytes28[] memory a = new bytes28[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(bytes28 v0, bytes28 v1, bytes28 v2, bytes28 v3, bytes28 v4) public {
        bytes28[] memory a = new bytes28[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(bytes28 v0, bytes28 v1, bytes28 v2, bytes28 v3, bytes28 v4, bytes28 v5) public {
        bytes28[] memory a = new bytes28[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(bytes28 v0, bytes28 v1, bytes28 v2, bytes28 v3, bytes28 v4, bytes28 v5, bytes28 v6) public {
        bytes28[] memory a = new bytes28[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(bytes28 v0, bytes28 v1, bytes28 v2, bytes28 v3, bytes28 v4, bytes28 v5, bytes28 v6, bytes28 v7) public {
        bytes28[] memory a = new bytes28[](8);
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

    function testFuzz09(bytes28 v0, bytes28 v1, bytes28 v2, bytes28 v3, bytes28 v4, bytes28 v5, bytes28 v6, bytes28 v7, bytes28 v8) public {
        bytes28[] memory a = new bytes28[](9);
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

    function testFuzz10(bytes28 v0, bytes28 v1, bytes28 v2, bytes28 v3, bytes28 v4, bytes28 v5, bytes28 v6, bytes28 v7, bytes28 v8, bytes28 v9) public {
        bytes28[] memory a = new bytes28[](10);
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

    function testFuzz11(bytes28 v0, bytes28 v1, bytes28 v2, bytes28 v3, bytes28 v4, bytes28 v5, bytes28 v6, bytes28 v7, bytes28 v8, bytes28 v9, bytes28 v10)
        public
    {
        bytes28[] memory a = new bytes28[](11);
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
        bytes28 v0,
        bytes28 v1,
        bytes28 v2,
        bytes28 v3,
        bytes28 v4,
        bytes28 v5,
        bytes28 v6,
        bytes28 v7,
        bytes28 v8,
        bytes28 v9,
        bytes28 v10,
        bytes28 v11
    ) public {
        bytes28[] memory a = new bytes28[](12);
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
        bytes28 v0,
        bytes28 v1,
        bytes28 v2,
        bytes28 v3,
        bytes28 v4,
        bytes28 v5,
        bytes28 v6,
        bytes28 v7,
        bytes28 v8,
        bytes28 v9,
        bytes28 v10,
        bytes28 v11,
        bytes28 v12
    ) public {
        bytes28[] memory a = new bytes28[](13);
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
        bytes28 v0,
        bytes28 v1,
        bytes28 v2,
        bytes28 v3,
        bytes28 v4,
        bytes28 v5,
        bytes28 v6,
        bytes28 v7,
        bytes28 v8,
        bytes28 v9,
        bytes28 v10,
        bytes28 v11,
        bytes28 v12,
        bytes28 v13
    ) public {
        bytes28[] memory a = new bytes28[](14);
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
        bytes28 v0,
        bytes28 v1,
        bytes28 v2,
        bytes28 v3,
        bytes28 v4,
        bytes28 v5,
        bytes28 v6,
        bytes28 v7,
        bytes28 v8,
        bytes28 v9,
        bytes28 v10,
        bytes28 v11,
        bytes28 v12,
        bytes28 v13,
        bytes28 v14
    ) public {
        bytes28[] memory a = new bytes28[](15);
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
        bytes28 v0,
        bytes28 v1,
        bytes28 v2,
        bytes28 v3,
        bytes28 v4,
        bytes28 v5,
        bytes28 v6,
        bytes28 v7,
        bytes28 v8,
        bytes28 v9,
        bytes28 v10,
        bytes28 v11,
        bytes28 v12,
        bytes28 v13,
        bytes28 v14,
        bytes28 v15
    ) public {
        bytes28[] memory a = new bytes28[](16);
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
        bytes28 v0,
        bytes28 v1,
        bytes28 v2,
        bytes28 v3,
        bytes28 v4,
        bytes28 v5,
        bytes28 v6,
        bytes28 v7,
        bytes28 v8,
        bytes28 v9,
        bytes28 v10,
        bytes28 v11,
        bytes28 v12,
        bytes28 v13,
        bytes28 v14,
        bytes28 v15,
        bytes28 v16
    ) public {
        bytes28[] memory a = new bytes28[](17);
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
        bytes28 v0,
        bytes28 v1,
        bytes28 v2,
        bytes28 v3,
        bytes28 v4,
        bytes28 v5,
        bytes28 v6,
        bytes28 v7,
        bytes28 v8,
        bytes28 v9,
        bytes28 v10,
        bytes28 v11,
        bytes28 v12,
        bytes28 v13,
        bytes28 v14,
        bytes28 v15,
        bytes28 v16,
        bytes28 v17
    ) public {
        bytes28[] memory a = new bytes28[](18);
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
        bytes28 v0,
        bytes28 v1,
        bytes28 v2,
        bytes28 v3,
        bytes28 v4,
        bytes28 v5,
        bytes28 v6,
        bytes28 v7,
        bytes28 v8,
        bytes28 v9,
        bytes28 v10,
        bytes28 v11,
        bytes28 v12,
        bytes28 v13,
        bytes28 v14,
        bytes28 v15,
        bytes28 v16,
        bytes28 v17,
        bytes28 v18
    ) public {
        bytes28[] memory a = new bytes28[](19);
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
        bytes28 v0,
        bytes28 v1,
        bytes28 v2,
        bytes28 v3,
        bytes28 v4,
        bytes28 v5,
        bytes28 v6,
        bytes28 v7,
        bytes28 v8,
        bytes28 v9,
        bytes28 v10,
        bytes28 v11,
        bytes28 v12,
        bytes28 v13,
        bytes28 v14,
        bytes28 v15,
        bytes28 v16,
        bytes28 v17,
        bytes28 v18,
        bytes28 v19
    ) public {
        bytes28[] memory a = new bytes28[](20);
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

    function eq(bytes28[] memory lhs, bytes28[] memory rhs) internal pure returns (bool) {
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
