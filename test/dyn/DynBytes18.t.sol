// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { DynBytes18 } from "../../src/dyn/DynBytes18.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

contract DynBytes18Test is Test {
    using DynBytes18 for *;

    function testFuzz01(bytes18 v0) public {
        bytes18[] memory a = new bytes18[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(bytes18 v0, bytes18 v1) public {
        bytes18[] memory a = new bytes18[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(bytes18 v0, bytes18 v1, bytes18 v2) public {
        bytes18[] memory a = new bytes18[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(bytes18 v0, bytes18 v1, bytes18 v2, bytes18 v3) public {
        bytes18[] memory a = new bytes18[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(bytes18 v0, bytes18 v1, bytes18 v2, bytes18 v3, bytes18 v4) public {
        bytes18[] memory a = new bytes18[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(bytes18 v0, bytes18 v1, bytes18 v2, bytes18 v3, bytes18 v4, bytes18 v5) public {
        bytes18[] memory a = new bytes18[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(bytes18 v0, bytes18 v1, bytes18 v2, bytes18 v3, bytes18 v4, bytes18 v5, bytes18 v6) public {
        bytes18[] memory a = new bytes18[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(bytes18 v0, bytes18 v1, bytes18 v2, bytes18 v3, bytes18 v4, bytes18 v5, bytes18 v6, bytes18 v7) public {
        bytes18[] memory a = new bytes18[](8);
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

    function testFuzz09(bytes18 v0, bytes18 v1, bytes18 v2, bytes18 v3, bytes18 v4, bytes18 v5, bytes18 v6, bytes18 v7, bytes18 v8) public {
        bytes18[] memory a = new bytes18[](9);
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

    function testFuzz10(bytes18 v0, bytes18 v1, bytes18 v2, bytes18 v3, bytes18 v4, bytes18 v5, bytes18 v6, bytes18 v7, bytes18 v8, bytes18 v9) public {
        bytes18[] memory a = new bytes18[](10);
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

    function testFuzz11(bytes18 v0, bytes18 v1, bytes18 v2, bytes18 v3, bytes18 v4, bytes18 v5, bytes18 v6, bytes18 v7, bytes18 v8, bytes18 v9, bytes18 v10)
        public
    {
        bytes18[] memory a = new bytes18[](11);
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
        bytes18 v0,
        bytes18 v1,
        bytes18 v2,
        bytes18 v3,
        bytes18 v4,
        bytes18 v5,
        bytes18 v6,
        bytes18 v7,
        bytes18 v8,
        bytes18 v9,
        bytes18 v10,
        bytes18 v11
    ) public {
        bytes18[] memory a = new bytes18[](12);
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
        bytes18 v0,
        bytes18 v1,
        bytes18 v2,
        bytes18 v3,
        bytes18 v4,
        bytes18 v5,
        bytes18 v6,
        bytes18 v7,
        bytes18 v8,
        bytes18 v9,
        bytes18 v10,
        bytes18 v11,
        bytes18 v12
    ) public {
        bytes18[] memory a = new bytes18[](13);
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
        bytes18 v0,
        bytes18 v1,
        bytes18 v2,
        bytes18 v3,
        bytes18 v4,
        bytes18 v5,
        bytes18 v6,
        bytes18 v7,
        bytes18 v8,
        bytes18 v9,
        bytes18 v10,
        bytes18 v11,
        bytes18 v12,
        bytes18 v13
    ) public {
        bytes18[] memory a = new bytes18[](14);
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
        bytes18 v0,
        bytes18 v1,
        bytes18 v2,
        bytes18 v3,
        bytes18 v4,
        bytes18 v5,
        bytes18 v6,
        bytes18 v7,
        bytes18 v8,
        bytes18 v9,
        bytes18 v10,
        bytes18 v11,
        bytes18 v12,
        bytes18 v13,
        bytes18 v14
    ) public {
        bytes18[] memory a = new bytes18[](15);
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
        bytes18 v0,
        bytes18 v1,
        bytes18 v2,
        bytes18 v3,
        bytes18 v4,
        bytes18 v5,
        bytes18 v6,
        bytes18 v7,
        bytes18 v8,
        bytes18 v9,
        bytes18 v10,
        bytes18 v11,
        bytes18 v12,
        bytes18 v13,
        bytes18 v14,
        bytes18 v15
    ) public {
        bytes18[] memory a = new bytes18[](16);
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
        bytes18 v0,
        bytes18 v1,
        bytes18 v2,
        bytes18 v3,
        bytes18 v4,
        bytes18 v5,
        bytes18 v6,
        bytes18 v7,
        bytes18 v8,
        bytes18 v9,
        bytes18 v10,
        bytes18 v11,
        bytes18 v12,
        bytes18 v13,
        bytes18 v14,
        bytes18 v15,
        bytes18 v16
    ) public {
        bytes18[] memory a = new bytes18[](17);
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
        bytes18 v0,
        bytes18 v1,
        bytes18 v2,
        bytes18 v3,
        bytes18 v4,
        bytes18 v5,
        bytes18 v6,
        bytes18 v7,
        bytes18 v8,
        bytes18 v9,
        bytes18 v10,
        bytes18 v11,
        bytes18 v12,
        bytes18 v13,
        bytes18 v14,
        bytes18 v15,
        bytes18 v16,
        bytes18 v17
    ) public {
        bytes18[] memory a = new bytes18[](18);
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
        bytes18 v0,
        bytes18 v1,
        bytes18 v2,
        bytes18 v3,
        bytes18 v4,
        bytes18 v5,
        bytes18 v6,
        bytes18 v7,
        bytes18 v8,
        bytes18 v9,
        bytes18 v10,
        bytes18 v11,
        bytes18 v12,
        bytes18 v13,
        bytes18 v14,
        bytes18 v15,
        bytes18 v16,
        bytes18 v17,
        bytes18 v18
    ) public {
        bytes18[] memory a = new bytes18[](19);
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
        bytes18 v0,
        bytes18 v1,
        bytes18 v2,
        bytes18 v3,
        bytes18 v4,
        bytes18 v5,
        bytes18 v6,
        bytes18 v7,
        bytes18 v8,
        bytes18 v9,
        bytes18 v10,
        bytes18 v11,
        bytes18 v12,
        bytes18 v13,
        bytes18 v14,
        bytes18 v15,
        bytes18 v16,
        bytes18 v17,
        bytes18 v18,
        bytes18 v19
    ) public {
        bytes18[] memory a = new bytes18[](20);
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

    function eq(bytes18[] memory lhs, bytes18[] memory rhs) internal pure returns (bool) {
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

