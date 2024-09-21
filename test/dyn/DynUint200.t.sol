// SPDX-License-Identifier: AGPL-3.0-only OR MIT
pragma solidity 0.8.24;

import { DynUint200 } from "../../src/dyn/DynUint200.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

contract DynUint200Test is Test {
    using DynUint200 for *;

    function testFuzz01(uint200 v0) public {
        uint200[] memory a = new uint200[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(uint200 v0, uint200 v1) public {
        uint200[] memory a = new uint200[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(uint200 v0, uint200 v1, uint200 v2) public {
        uint200[] memory a = new uint200[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(uint200 v0, uint200 v1, uint200 v2, uint200 v3) public {
        uint200[] memory a = new uint200[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(uint200 v0, uint200 v1, uint200 v2, uint200 v3, uint200 v4) public {
        uint200[] memory a = new uint200[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(uint200 v0, uint200 v1, uint200 v2, uint200 v3, uint200 v4, uint200 v5) public {
        uint200[] memory a = new uint200[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(uint200 v0, uint200 v1, uint200 v2, uint200 v3, uint200 v4, uint200 v5, uint200 v6) public {
        uint200[] memory a = new uint200[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(uint200 v0, uint200 v1, uint200 v2, uint200 v3, uint200 v4, uint200 v5, uint200 v6, uint200 v7) public {
        uint200[] memory a = new uint200[](8);
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

    function testFuzz09(uint200 v0, uint200 v1, uint200 v2, uint200 v3, uint200 v4, uint200 v5, uint200 v6, uint200 v7, uint200 v8) public {
        uint200[] memory a = new uint200[](9);
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

    function testFuzz10(uint200 v0, uint200 v1, uint200 v2, uint200 v3, uint200 v4, uint200 v5, uint200 v6, uint200 v7, uint200 v8, uint200 v9) public {
        uint200[] memory a = new uint200[](10);
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

    function testFuzz11(uint200 v0, uint200 v1, uint200 v2, uint200 v3, uint200 v4, uint200 v5, uint200 v6, uint200 v7, uint200 v8, uint200 v9, uint200 v10)
        public
    {
        uint200[] memory a = new uint200[](11);
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
        uint200 v0,
        uint200 v1,
        uint200 v2,
        uint200 v3,
        uint200 v4,
        uint200 v5,
        uint200 v6,
        uint200 v7,
        uint200 v8,
        uint200 v9,
        uint200 v10,
        uint200 v11
    ) public {
        uint200[] memory a = new uint200[](12);
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
        uint200 v0,
        uint200 v1,
        uint200 v2,
        uint200 v3,
        uint200 v4,
        uint200 v5,
        uint200 v6,
        uint200 v7,
        uint200 v8,
        uint200 v9,
        uint200 v10,
        uint200 v11,
        uint200 v12
    ) public {
        uint200[] memory a = new uint200[](13);
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
        uint200 v0,
        uint200 v1,
        uint200 v2,
        uint200 v3,
        uint200 v4,
        uint200 v5,
        uint200 v6,
        uint200 v7,
        uint200 v8,
        uint200 v9,
        uint200 v10,
        uint200 v11,
        uint200 v12,
        uint200 v13
    ) public {
        uint200[] memory a = new uint200[](14);
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
        uint200 v0,
        uint200 v1,
        uint200 v2,
        uint200 v3,
        uint200 v4,
        uint200 v5,
        uint200 v6,
        uint200 v7,
        uint200 v8,
        uint200 v9,
        uint200 v10,
        uint200 v11,
        uint200 v12,
        uint200 v13,
        uint200 v14
    ) public {
        uint200[] memory a = new uint200[](15);
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
        uint200 v0,
        uint200 v1,
        uint200 v2,
        uint200 v3,
        uint200 v4,
        uint200 v5,
        uint200 v6,
        uint200 v7,
        uint200 v8,
        uint200 v9,
        uint200 v10,
        uint200 v11,
        uint200 v12,
        uint200 v13,
        uint200 v14,
        uint200 v15
    ) public {
        uint200[] memory a = new uint200[](16);
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
        uint200 v0,
        uint200 v1,
        uint200 v2,
        uint200 v3,
        uint200 v4,
        uint200 v5,
        uint200 v6,
        uint200 v7,
        uint200 v8,
        uint200 v9,
        uint200 v10,
        uint200 v11,
        uint200 v12,
        uint200 v13,
        uint200 v14,
        uint200 v15,
        uint200 v16
    ) public {
        uint200[] memory a = new uint200[](17);
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
        uint200 v0,
        uint200 v1,
        uint200 v2,
        uint200 v3,
        uint200 v4,
        uint200 v5,
        uint200 v6,
        uint200 v7,
        uint200 v8,
        uint200 v9,
        uint200 v10,
        uint200 v11,
        uint200 v12,
        uint200 v13,
        uint200 v14,
        uint200 v15,
        uint200 v16,
        uint200 v17
    ) public {
        uint200[] memory a = new uint200[](18);
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
        uint200 v0,
        uint200 v1,
        uint200 v2,
        uint200 v3,
        uint200 v4,
        uint200 v5,
        uint200 v6,
        uint200 v7,
        uint200 v8,
        uint200 v9,
        uint200 v10,
        uint200 v11,
        uint200 v12,
        uint200 v13,
        uint200 v14,
        uint200 v15,
        uint200 v16,
        uint200 v17,
        uint200 v18
    ) public {
        uint200[] memory a = new uint200[](19);
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
        uint200 v0,
        uint200 v1,
        uint200 v2,
        uint200 v3,
        uint200 v4,
        uint200 v5,
        uint200 v6,
        uint200 v7,
        uint200 v8,
        uint200 v9,
        uint200 v10,
        uint200 v11,
        uint200 v12,
        uint200 v13,
        uint200 v14,
        uint200 v15,
        uint200 v16,
        uint200 v17,
        uint200 v18,
        uint200 v19
    ) public {
        uint200[] memory a = new uint200[](20);
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

    function eq(uint200[] memory lhs, uint200[] memory rhs) internal pure returns (bool) {
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

