// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import { DynBytes11 } from "../../src/dyn/DynBytes11.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

contract DynBytes11Test is Test {
    using DynBytes11 for *;

    function testFuzz01(bytes11 v0) public {
        bytes11[] memory a = new bytes11[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(bytes11 v0, bytes11 v1) public {
        bytes11[] memory a = new bytes11[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(bytes11 v0, bytes11 v1, bytes11 v2) public {
        bytes11[] memory a = new bytes11[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(bytes11 v0, bytes11 v1, bytes11 v2, bytes11 v3) public {
        bytes11[] memory a = new bytes11[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(bytes11 v0, bytes11 v1, bytes11 v2, bytes11 v3, bytes11 v4) public {
        bytes11[] memory a = new bytes11[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(bytes11 v0, bytes11 v1, bytes11 v2, bytes11 v3, bytes11 v4, bytes11 v5) public {
        bytes11[] memory a = new bytes11[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(bytes11 v0, bytes11 v1, bytes11 v2, bytes11 v3, bytes11 v4, bytes11 v5, bytes11 v6) public {
        bytes11[] memory a = new bytes11[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(bytes11 v0, bytes11 v1, bytes11 v2, bytes11 v3, bytes11 v4, bytes11 v5, bytes11 v6, bytes11 v7) public {
        bytes11[] memory a = new bytes11[](8);
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

    function testFuzz09(bytes11 v0, bytes11 v1, bytes11 v2, bytes11 v3, bytes11 v4, bytes11 v5, bytes11 v6, bytes11 v7, bytes11 v8) public {
        bytes11[] memory a = new bytes11[](9);
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

    function testFuzz10(bytes11 v0, bytes11 v1, bytes11 v2, bytes11 v3, bytes11 v4, bytes11 v5, bytes11 v6, bytes11 v7, bytes11 v8, bytes11 v9) public {
        bytes11[] memory a = new bytes11[](10);
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

    function testFuzz11(bytes11 v0, bytes11 v1, bytes11 v2, bytes11 v3, bytes11 v4, bytes11 v5, bytes11 v6, bytes11 v7, bytes11 v8, bytes11 v9, bytes11 v10)
        public
    {
        bytes11[] memory a = new bytes11[](11);
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
        bytes11 v0,
        bytes11 v1,
        bytes11 v2,
        bytes11 v3,
        bytes11 v4,
        bytes11 v5,
        bytes11 v6,
        bytes11 v7,
        bytes11 v8,
        bytes11 v9,
        bytes11 v10,
        bytes11 v11
    ) public {
        bytes11[] memory a = new bytes11[](12);
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
        bytes11 v0,
        bytes11 v1,
        bytes11 v2,
        bytes11 v3,
        bytes11 v4,
        bytes11 v5,
        bytes11 v6,
        bytes11 v7,
        bytes11 v8,
        bytes11 v9,
        bytes11 v10,
        bytes11 v11,
        bytes11 v12
    ) public {
        bytes11[] memory a = new bytes11[](13);
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
        bytes11 v0,
        bytes11 v1,
        bytes11 v2,
        bytes11 v3,
        bytes11 v4,
        bytes11 v5,
        bytes11 v6,
        bytes11 v7,
        bytes11 v8,
        bytes11 v9,
        bytes11 v10,
        bytes11 v11,
        bytes11 v12,
        bytes11 v13
    ) public {
        bytes11[] memory a = new bytes11[](14);
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
        bytes11 v0,
        bytes11 v1,
        bytes11 v2,
        bytes11 v3,
        bytes11 v4,
        bytes11 v5,
        bytes11 v6,
        bytes11 v7,
        bytes11 v8,
        bytes11 v9,
        bytes11 v10,
        bytes11 v11,
        bytes11 v12,
        bytes11 v13,
        bytes11 v14
    ) public {
        bytes11[] memory a = new bytes11[](15);
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
        bytes11 v0,
        bytes11 v1,
        bytes11 v2,
        bytes11 v3,
        bytes11 v4,
        bytes11 v5,
        bytes11 v6,
        bytes11 v7,
        bytes11 v8,
        bytes11 v9,
        bytes11 v10,
        bytes11 v11,
        bytes11 v12,
        bytes11 v13,
        bytes11 v14,
        bytes11 v15
    ) public {
        bytes11[] memory a = new bytes11[](16);
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
        bytes11 v0,
        bytes11 v1,
        bytes11 v2,
        bytes11 v3,
        bytes11 v4,
        bytes11 v5,
        bytes11 v6,
        bytes11 v7,
        bytes11 v8,
        bytes11 v9,
        bytes11 v10,
        bytes11 v11,
        bytes11 v12,
        bytes11 v13,
        bytes11 v14,
        bytes11 v15,
        bytes11 v16
    ) public {
        bytes11[] memory a = new bytes11[](17);
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
        bytes11 v0,
        bytes11 v1,
        bytes11 v2,
        bytes11 v3,
        bytes11 v4,
        bytes11 v5,
        bytes11 v6,
        bytes11 v7,
        bytes11 v8,
        bytes11 v9,
        bytes11 v10,
        bytes11 v11,
        bytes11 v12,
        bytes11 v13,
        bytes11 v14,
        bytes11 v15,
        bytes11 v16,
        bytes11 v17
    ) public {
        bytes11[] memory a = new bytes11[](18);
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
        bytes11 v0,
        bytes11 v1,
        bytes11 v2,
        bytes11 v3,
        bytes11 v4,
        bytes11 v5,
        bytes11 v6,
        bytes11 v7,
        bytes11 v8,
        bytes11 v9,
        bytes11 v10,
        bytes11 v11,
        bytes11 v12,
        bytes11 v13,
        bytes11 v14,
        bytes11 v15,
        bytes11 v16,
        bytes11 v17,
        bytes11 v18
    ) public {
        bytes11[] memory a = new bytes11[](19);
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
        bytes11 v0,
        bytes11 v1,
        bytes11 v2,
        bytes11 v3,
        bytes11 v4,
        bytes11 v5,
        bytes11 v6,
        bytes11 v7,
        bytes11 v8,
        bytes11 v9,
        bytes11 v10,
        bytes11 v11,
        bytes11 v12,
        bytes11 v13,
        bytes11 v14,
        bytes11 v15,
        bytes11 v16,
        bytes11 v17,
        bytes11 v18,
        bytes11 v19
    ) public {
        bytes11[] memory a = new bytes11[](20);
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

    function eq(bytes11[] memory lhs, bytes11[] memory rhs) internal pure returns (bool) {
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

