// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import { DynBool } from "../src/DynBool.sol";

import {Test} from "../lib/forge-std/src/Test.sol";

contract DynBoolTest is Test {
    using DynBool for *;

    function testFuzz01(bool v0) public {
        bool[] memory a = new bool[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(bool v0, bool v1) public {
        bool[] memory a = new bool[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(bool v0, bool v1, bool v2) public {
        bool[] memory a = new bool[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(bool v0, bool v1, bool v2, bool v3) public {
        bool[] memory a = new bool[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(bool v0, bool v1, bool v2, bool v3, bool v4) public {
        bool[] memory a = new bool[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(bool v0, bool v1, bool v2, bool v3, bool v4, bool v5) public {
        bool[] memory a = new bool[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(bool v0, bool v1, bool v2, bool v3, bool v4, bool v5, bool v6) public {
        bool[] memory a = new bool[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(bool v0, bool v1, bool v2, bool v3, bool v4, bool v5, bool v6, bool v7) public {
        bool[] memory a = new bool[](8);
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

    function testFuzz09(bool v0, bool v1, bool v2, bool v3, bool v4, bool v5, bool v6, bool v7, bool v8) public {
        bool[] memory a = new bool[](9);
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

    function testFuzz10(bool v0, bool v1, bool v2, bool v3, bool v4, bool v5, bool v6, bool v7, bool v8, bool v9) public {
        bool[] memory a = new bool[](10);
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

    function testFuzz11(bool v0, bool v1, bool v2, bool v3, bool v4, bool v5, bool v6, bool v7, bool v8, bool v9, bool v10)
        public
    {
        bool[] memory a = new bool[](11);
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
        bool v0,
        bool v1,
        bool v2,
        bool v3,
        bool v4,
        bool v5,
        bool v6,
        bool v7,
        bool v8,
        bool v9,
        bool v10,
        bool v11
    ) public {
        bool[] memory a = new bool[](12);
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
        bool v0,
        bool v1,
        bool v2,
        bool v3,
        bool v4,
        bool v5,
        bool v6,
        bool v7,
        bool v8,
        bool v9,
        bool v10,
        bool v11,
        bool v12
    ) public {
        bool[] memory a = new bool[](13);
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
        bool v0,
        bool v1,
        bool v2,
        bool v3,
        bool v4,
        bool v5,
        bool v6,
        bool v7,
        bool v8,
        bool v9,
        bool v10,
        bool v11,
        bool v12,
        bool v13
    ) public {
        bool[] memory a = new bool[](14);
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
        bool v0,
        bool v1,
        bool v2,
        bool v3,
        bool v4,
        bool v5,
        bool v6,
        bool v7,
        bool v8,
        bool v9,
        bool v10,
        bool v11,
        bool v12,
        bool v13,
        bool v14
    ) public {
        bool[] memory a = new bool[](15);
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
        bool v0,
        bool v1,
        bool v2,
        bool v3,
        bool v4,
        bool v5,
        bool v6,
        bool v7,
        bool v8,
        bool v9,
        bool v10,
        bool v11,
        bool v12,
        bool v13,
        bool v14,
        bool v15
    ) public {
        bool[] memory a = new bool[](16);
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
        bool v0,
        bool v1,
        bool v2,
        bool v3,
        bool v4,
        bool v5,
        bool v6,
        bool v7,
        bool v8,
        bool v9,
        bool v10,
        bool v11,
        bool v12,
        bool v13,
        bool v14,
        bool v15,
        bool v16
    ) public {
        bool[] memory a = new bool[](17);
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
        bool v0,
        bool v1,
        bool v2,
        bool v3,
        bool v4,
        bool v5,
        bool v6,
        bool v7,
        bool v8,
        bool v9,
        bool v10,
        bool v11,
        bool v12,
        bool v13,
        bool v14,
        bool v15,
        bool v16,
        bool v17
    ) public {
        bool[] memory a = new bool[](18);
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
        bool v0,
        bool v1,
        bool v2,
        bool v3,
        bool v4,
        bool v5,
        bool v6,
        bool v7,
        bool v8,
        bool v9,
        bool v10,
        bool v11,
        bool v12,
        bool v13,
        bool v14,
        bool v15,
        bool v16,
        bool v17,
        bool v18
    ) public {
        bool[] memory a = new bool[](19);
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
        bool v0,
        bool v1,
        bool v2,
        bool v3,
        bool v4,
        bool v5,
        bool v6,
        bool v7,
        bool v8,
        bool v9,
        bool v10,
        bool v11,
        bool v12,
        bool v13,
        bool v14,
        bool v15,
        bool v16,
        bool v17,
        bool v18,
        bool v19
    ) public {
        bool[] memory a = new bool[](20);
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

    function eq(bool[] memory lhs, bool[] memory rhs) internal pure returns (bool) {
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
