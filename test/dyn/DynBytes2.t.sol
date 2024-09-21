// SPDX-License-Identifier: AGPL-3.0-only OR MIT
pragma solidity 0.8.24;

import { DynBytes2 } from "../../src/dyn/DynBytes2.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

contract DynBytes2Test is Test {
    using DynBytes2 for *;

    function testFuzz01(bytes2 v0) public {
        bytes2[] memory a = new bytes2[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(bytes2 v0, bytes2 v1) public {
        bytes2[] memory a = new bytes2[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(bytes2 v0, bytes2 v1, bytes2 v2) public {
        bytes2[] memory a = new bytes2[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(bytes2 v0, bytes2 v1, bytes2 v2, bytes2 v3) public {
        bytes2[] memory a = new bytes2[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(bytes2 v0, bytes2 v1, bytes2 v2, bytes2 v3, bytes2 v4) public {
        bytes2[] memory a = new bytes2[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(bytes2 v0, bytes2 v1, bytes2 v2, bytes2 v3, bytes2 v4, bytes2 v5) public {
        bytes2[] memory a = new bytes2[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(bytes2 v0, bytes2 v1, bytes2 v2, bytes2 v3, bytes2 v4, bytes2 v5, bytes2 v6) public {
        bytes2[] memory a = new bytes2[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(bytes2 v0, bytes2 v1, bytes2 v2, bytes2 v3, bytes2 v4, bytes2 v5, bytes2 v6, bytes2 v7) public {
        bytes2[] memory a = new bytes2[](8);
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

    function testFuzz09(bytes2 v0, bytes2 v1, bytes2 v2, bytes2 v3, bytes2 v4, bytes2 v5, bytes2 v6, bytes2 v7, bytes2 v8) public {
        bytes2[] memory a = new bytes2[](9);
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

    function testFuzz10(bytes2 v0, bytes2 v1, bytes2 v2, bytes2 v3, bytes2 v4, bytes2 v5, bytes2 v6, bytes2 v7, bytes2 v8, bytes2 v9) public {
        bytes2[] memory a = new bytes2[](10);
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

    function testFuzz11(bytes2 v0, bytes2 v1, bytes2 v2, bytes2 v3, bytes2 v4, bytes2 v5, bytes2 v6, bytes2 v7, bytes2 v8, bytes2 v9, bytes2 v10)
        public
    {
        bytes2[] memory a = new bytes2[](11);
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
        bytes2 v0,
        bytes2 v1,
        bytes2 v2,
        bytes2 v3,
        bytes2 v4,
        bytes2 v5,
        bytes2 v6,
        bytes2 v7,
        bytes2 v8,
        bytes2 v9,
        bytes2 v10,
        bytes2 v11
    ) public {
        bytes2[] memory a = new bytes2[](12);
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
        bytes2 v0,
        bytes2 v1,
        bytes2 v2,
        bytes2 v3,
        bytes2 v4,
        bytes2 v5,
        bytes2 v6,
        bytes2 v7,
        bytes2 v8,
        bytes2 v9,
        bytes2 v10,
        bytes2 v11,
        bytes2 v12
    ) public {
        bytes2[] memory a = new bytes2[](13);
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
        bytes2 v0,
        bytes2 v1,
        bytes2 v2,
        bytes2 v3,
        bytes2 v4,
        bytes2 v5,
        bytes2 v6,
        bytes2 v7,
        bytes2 v8,
        bytes2 v9,
        bytes2 v10,
        bytes2 v11,
        bytes2 v12,
        bytes2 v13
    ) public {
        bytes2[] memory a = new bytes2[](14);
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
        bytes2 v0,
        bytes2 v1,
        bytes2 v2,
        bytes2 v3,
        bytes2 v4,
        bytes2 v5,
        bytes2 v6,
        bytes2 v7,
        bytes2 v8,
        bytes2 v9,
        bytes2 v10,
        bytes2 v11,
        bytes2 v12,
        bytes2 v13,
        bytes2 v14
    ) public {
        bytes2[] memory a = new bytes2[](15);
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
        bytes2 v0,
        bytes2 v1,
        bytes2 v2,
        bytes2 v3,
        bytes2 v4,
        bytes2 v5,
        bytes2 v6,
        bytes2 v7,
        bytes2 v8,
        bytes2 v9,
        bytes2 v10,
        bytes2 v11,
        bytes2 v12,
        bytes2 v13,
        bytes2 v14,
        bytes2 v15
    ) public {
        bytes2[] memory a = new bytes2[](16);
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
        bytes2 v0,
        bytes2 v1,
        bytes2 v2,
        bytes2 v3,
        bytes2 v4,
        bytes2 v5,
        bytes2 v6,
        bytes2 v7,
        bytes2 v8,
        bytes2 v9,
        bytes2 v10,
        bytes2 v11,
        bytes2 v12,
        bytes2 v13,
        bytes2 v14,
        bytes2 v15,
        bytes2 v16
    ) public {
        bytes2[] memory a = new bytes2[](17);
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
        bytes2 v0,
        bytes2 v1,
        bytes2 v2,
        bytes2 v3,
        bytes2 v4,
        bytes2 v5,
        bytes2 v6,
        bytes2 v7,
        bytes2 v8,
        bytes2 v9,
        bytes2 v10,
        bytes2 v11,
        bytes2 v12,
        bytes2 v13,
        bytes2 v14,
        bytes2 v15,
        bytes2 v16,
        bytes2 v17
    ) public {
        bytes2[] memory a = new bytes2[](18);
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
        bytes2 v0,
        bytes2 v1,
        bytes2 v2,
        bytes2 v3,
        bytes2 v4,
        bytes2 v5,
        bytes2 v6,
        bytes2 v7,
        bytes2 v8,
        bytes2 v9,
        bytes2 v10,
        bytes2 v11,
        bytes2 v12,
        bytes2 v13,
        bytes2 v14,
        bytes2 v15,
        bytes2 v16,
        bytes2 v17,
        bytes2 v18
    ) public {
        bytes2[] memory a = new bytes2[](19);
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
        bytes2 v0,
        bytes2 v1,
        bytes2 v2,
        bytes2 v3,
        bytes2 v4,
        bytes2 v5,
        bytes2 v6,
        bytes2 v7,
        bytes2 v8,
        bytes2 v9,
        bytes2 v10,
        bytes2 v11,
        bytes2 v12,
        bytes2 v13,
        bytes2 v14,
        bytes2 v15,
        bytes2 v16,
        bytes2 v17,
        bytes2 v18,
        bytes2 v19
    ) public {
        bytes2[] memory a = new bytes2[](20);
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

    function eq(bytes2[] memory lhs, bytes2[] memory rhs) internal pure returns (bool) {
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

