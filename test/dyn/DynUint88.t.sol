// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { DynUint88 } from "../../src/dyn/DynUint88.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

contract DynUint88Test is Test {
    using DynUint88 for *;

    function testFuzz01(uint88 v0) public {
        uint88[] memory a = new uint88[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(uint88 v0, uint88 v1) public {
        uint88[] memory a = new uint88[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(uint88 v0, uint88 v1, uint88 v2) public {
        uint88[] memory a = new uint88[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(uint88 v0, uint88 v1, uint88 v2, uint88 v3) public {
        uint88[] memory a = new uint88[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(uint88 v0, uint88 v1, uint88 v2, uint88 v3, uint88 v4) public {
        uint88[] memory a = new uint88[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(uint88 v0, uint88 v1, uint88 v2, uint88 v3, uint88 v4, uint88 v5) public {
        uint88[] memory a = new uint88[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(uint88 v0, uint88 v1, uint88 v2, uint88 v3, uint88 v4, uint88 v5, uint88 v6) public {
        uint88[] memory a = new uint88[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(uint88 v0, uint88 v1, uint88 v2, uint88 v3, uint88 v4, uint88 v5, uint88 v6, uint88 v7) public {
        uint88[] memory a = new uint88[](8);
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

    function testFuzz09(uint88 v0, uint88 v1, uint88 v2, uint88 v3, uint88 v4, uint88 v5, uint88 v6, uint88 v7, uint88 v8) public {
        uint88[] memory a = new uint88[](9);
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

    function testFuzz10(uint88 v0, uint88 v1, uint88 v2, uint88 v3, uint88 v4, uint88 v5, uint88 v6, uint88 v7, uint88 v8, uint88 v9) public {
        uint88[] memory a = new uint88[](10);
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

    function testFuzz11(uint88 v0, uint88 v1, uint88 v2, uint88 v3, uint88 v4, uint88 v5, uint88 v6, uint88 v7, uint88 v8, uint88 v9, uint88 v10)
        public
    {
        uint88[] memory a = new uint88[](11);
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
        uint88 v0,
        uint88 v1,
        uint88 v2,
        uint88 v3,
        uint88 v4,
        uint88 v5,
        uint88 v6,
        uint88 v7,
        uint88 v8,
        uint88 v9,
        uint88 v10,
        uint88 v11
    ) public {
        uint88[] memory a = new uint88[](12);
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
        uint88 v0,
        uint88 v1,
        uint88 v2,
        uint88 v3,
        uint88 v4,
        uint88 v5,
        uint88 v6,
        uint88 v7,
        uint88 v8,
        uint88 v9,
        uint88 v10,
        uint88 v11,
        uint88 v12
    ) public {
        uint88[] memory a = new uint88[](13);
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
        uint88 v0,
        uint88 v1,
        uint88 v2,
        uint88 v3,
        uint88 v4,
        uint88 v5,
        uint88 v6,
        uint88 v7,
        uint88 v8,
        uint88 v9,
        uint88 v10,
        uint88 v11,
        uint88 v12,
        uint88 v13
    ) public {
        uint88[] memory a = new uint88[](14);
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
        uint88 v0,
        uint88 v1,
        uint88 v2,
        uint88 v3,
        uint88 v4,
        uint88 v5,
        uint88 v6,
        uint88 v7,
        uint88 v8,
        uint88 v9,
        uint88 v10,
        uint88 v11,
        uint88 v12,
        uint88 v13,
        uint88 v14
    ) public {
        uint88[] memory a = new uint88[](15);
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
        uint88 v0,
        uint88 v1,
        uint88 v2,
        uint88 v3,
        uint88 v4,
        uint88 v5,
        uint88 v6,
        uint88 v7,
        uint88 v8,
        uint88 v9,
        uint88 v10,
        uint88 v11,
        uint88 v12,
        uint88 v13,
        uint88 v14,
        uint88 v15
    ) public {
        uint88[] memory a = new uint88[](16);
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
        uint88 v0,
        uint88 v1,
        uint88 v2,
        uint88 v3,
        uint88 v4,
        uint88 v5,
        uint88 v6,
        uint88 v7,
        uint88 v8,
        uint88 v9,
        uint88 v10,
        uint88 v11,
        uint88 v12,
        uint88 v13,
        uint88 v14,
        uint88 v15,
        uint88 v16
    ) public {
        uint88[] memory a = new uint88[](17);
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
        uint88 v0,
        uint88 v1,
        uint88 v2,
        uint88 v3,
        uint88 v4,
        uint88 v5,
        uint88 v6,
        uint88 v7,
        uint88 v8,
        uint88 v9,
        uint88 v10,
        uint88 v11,
        uint88 v12,
        uint88 v13,
        uint88 v14,
        uint88 v15,
        uint88 v16,
        uint88 v17
    ) public {
        uint88[] memory a = new uint88[](18);
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
        uint88 v0,
        uint88 v1,
        uint88 v2,
        uint88 v3,
        uint88 v4,
        uint88 v5,
        uint88 v6,
        uint88 v7,
        uint88 v8,
        uint88 v9,
        uint88 v10,
        uint88 v11,
        uint88 v12,
        uint88 v13,
        uint88 v14,
        uint88 v15,
        uint88 v16,
        uint88 v17,
        uint88 v18
    ) public {
        uint88[] memory a = new uint88[](19);
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
        uint88 v0,
        uint88 v1,
        uint88 v2,
        uint88 v3,
        uint88 v4,
        uint88 v5,
        uint88 v6,
        uint88 v7,
        uint88 v8,
        uint88 v9,
        uint88 v10,
        uint88 v11,
        uint88 v12,
        uint88 v13,
        uint88 v14,
        uint88 v15,
        uint88 v16,
        uint88 v17,
        uint88 v18,
        uint88 v19
    ) public {
        uint88[] memory a = new uint88[](20);
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

    function eq(uint88[] memory lhs, uint88[] memory rhs) internal pure returns (bool) {
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

