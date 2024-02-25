// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import { DynBytes19 } from "../../src/dyn/DynBytes19.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

contract DynBytes19Test is Test {
    using DynBytes19 for *;

    function testFuzz01(bytes19 v0) public {
        bytes19[] memory a = new bytes19[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(bytes19 v0, bytes19 v1) public {
        bytes19[] memory a = new bytes19[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(bytes19 v0, bytes19 v1, bytes19 v2) public {
        bytes19[] memory a = new bytes19[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(bytes19 v0, bytes19 v1, bytes19 v2, bytes19 v3) public {
        bytes19[] memory a = new bytes19[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(bytes19 v0, bytes19 v1, bytes19 v2, bytes19 v3, bytes19 v4) public {
        bytes19[] memory a = new bytes19[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(bytes19 v0, bytes19 v1, bytes19 v2, bytes19 v3, bytes19 v4, bytes19 v5) public {
        bytes19[] memory a = new bytes19[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(bytes19 v0, bytes19 v1, bytes19 v2, bytes19 v3, bytes19 v4, bytes19 v5, bytes19 v6) public {
        bytes19[] memory a = new bytes19[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(bytes19 v0, bytes19 v1, bytes19 v2, bytes19 v3, bytes19 v4, bytes19 v5, bytes19 v6, bytes19 v7) public {
        bytes19[] memory a = new bytes19[](8);
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

    function testFuzz09(bytes19 v0, bytes19 v1, bytes19 v2, bytes19 v3, bytes19 v4, bytes19 v5, bytes19 v6, bytes19 v7, bytes19 v8) public {
        bytes19[] memory a = new bytes19[](9);
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

    function testFuzz10(bytes19 v0, bytes19 v1, bytes19 v2, bytes19 v3, bytes19 v4, bytes19 v5, bytes19 v6, bytes19 v7, bytes19 v8, bytes19 v9) public {
        bytes19[] memory a = new bytes19[](10);
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

    function testFuzz11(bytes19 v0, bytes19 v1, bytes19 v2, bytes19 v3, bytes19 v4, bytes19 v5, bytes19 v6, bytes19 v7, bytes19 v8, bytes19 v9, bytes19 v10)
        public
    {
        bytes19[] memory a = new bytes19[](11);
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
        bytes19 v0,
        bytes19 v1,
        bytes19 v2,
        bytes19 v3,
        bytes19 v4,
        bytes19 v5,
        bytes19 v6,
        bytes19 v7,
        bytes19 v8,
        bytes19 v9,
        bytes19 v10,
        bytes19 v11
    ) public {
        bytes19[] memory a = new bytes19[](12);
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
        bytes19 v0,
        bytes19 v1,
        bytes19 v2,
        bytes19 v3,
        bytes19 v4,
        bytes19 v5,
        bytes19 v6,
        bytes19 v7,
        bytes19 v8,
        bytes19 v9,
        bytes19 v10,
        bytes19 v11,
        bytes19 v12
    ) public {
        bytes19[] memory a = new bytes19[](13);
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
        bytes19 v0,
        bytes19 v1,
        bytes19 v2,
        bytes19 v3,
        bytes19 v4,
        bytes19 v5,
        bytes19 v6,
        bytes19 v7,
        bytes19 v8,
        bytes19 v9,
        bytes19 v10,
        bytes19 v11,
        bytes19 v12,
        bytes19 v13
    ) public {
        bytes19[] memory a = new bytes19[](14);
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
        bytes19 v0,
        bytes19 v1,
        bytes19 v2,
        bytes19 v3,
        bytes19 v4,
        bytes19 v5,
        bytes19 v6,
        bytes19 v7,
        bytes19 v8,
        bytes19 v9,
        bytes19 v10,
        bytes19 v11,
        bytes19 v12,
        bytes19 v13,
        bytes19 v14
    ) public {
        bytes19[] memory a = new bytes19[](15);
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
        bytes19 v0,
        bytes19 v1,
        bytes19 v2,
        bytes19 v3,
        bytes19 v4,
        bytes19 v5,
        bytes19 v6,
        bytes19 v7,
        bytes19 v8,
        bytes19 v9,
        bytes19 v10,
        bytes19 v11,
        bytes19 v12,
        bytes19 v13,
        bytes19 v14,
        bytes19 v15
    ) public {
        bytes19[] memory a = new bytes19[](16);
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
        bytes19 v0,
        bytes19 v1,
        bytes19 v2,
        bytes19 v3,
        bytes19 v4,
        bytes19 v5,
        bytes19 v6,
        bytes19 v7,
        bytes19 v8,
        bytes19 v9,
        bytes19 v10,
        bytes19 v11,
        bytes19 v12,
        bytes19 v13,
        bytes19 v14,
        bytes19 v15,
        bytes19 v16
    ) public {
        bytes19[] memory a = new bytes19[](17);
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
        bytes19 v0,
        bytes19 v1,
        bytes19 v2,
        bytes19 v3,
        bytes19 v4,
        bytes19 v5,
        bytes19 v6,
        bytes19 v7,
        bytes19 v8,
        bytes19 v9,
        bytes19 v10,
        bytes19 v11,
        bytes19 v12,
        bytes19 v13,
        bytes19 v14,
        bytes19 v15,
        bytes19 v16,
        bytes19 v17
    ) public {
        bytes19[] memory a = new bytes19[](18);
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
        bytes19 v0,
        bytes19 v1,
        bytes19 v2,
        bytes19 v3,
        bytes19 v4,
        bytes19 v5,
        bytes19 v6,
        bytes19 v7,
        bytes19 v8,
        bytes19 v9,
        bytes19 v10,
        bytes19 v11,
        bytes19 v12,
        bytes19 v13,
        bytes19 v14,
        bytes19 v15,
        bytes19 v16,
        bytes19 v17,
        bytes19 v18
    ) public {
        bytes19[] memory a = new bytes19[](19);
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
        bytes19 v0,
        bytes19 v1,
        bytes19 v2,
        bytes19 v3,
        bytes19 v4,
        bytes19 v5,
        bytes19 v6,
        bytes19 v7,
        bytes19 v8,
        bytes19 v9,
        bytes19 v10,
        bytes19 v11,
        bytes19 v12,
        bytes19 v13,
        bytes19 v14,
        bytes19 v15,
        bytes19 v16,
        bytes19 v17,
        bytes19 v18,
        bytes19 v19
    ) public {
        bytes19[] memory a = new bytes19[](20);
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

    function eq(bytes19[] memory lhs, bytes19[] memory rhs) internal pure returns (bool) {
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

