// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { DynUint152 } from "../../src/dyn/DynUint152.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

contract DynUint152Test is Test {
    using DynUint152 for *;

    function testFuzz01(uint152 v0) public {
        uint152[] memory a = new uint152[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(uint152 v0, uint152 v1) public {
        uint152[] memory a = new uint152[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(uint152 v0, uint152 v1, uint152 v2) public {
        uint152[] memory a = new uint152[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(uint152 v0, uint152 v1, uint152 v2, uint152 v3) public {
        uint152[] memory a = new uint152[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(uint152 v0, uint152 v1, uint152 v2, uint152 v3, uint152 v4) public {
        uint152[] memory a = new uint152[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(uint152 v0, uint152 v1, uint152 v2, uint152 v3, uint152 v4, uint152 v5) public {
        uint152[] memory a = new uint152[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(uint152 v0, uint152 v1, uint152 v2, uint152 v3, uint152 v4, uint152 v5, uint152 v6) public {
        uint152[] memory a = new uint152[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(uint152 v0, uint152 v1, uint152 v2, uint152 v3, uint152 v4, uint152 v5, uint152 v6, uint152 v7) public {
        uint152[] memory a = new uint152[](8);
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

    function testFuzz09(uint152 v0, uint152 v1, uint152 v2, uint152 v3, uint152 v4, uint152 v5, uint152 v6, uint152 v7, uint152 v8) public {
        uint152[] memory a = new uint152[](9);
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

    function testFuzz10(uint152 v0, uint152 v1, uint152 v2, uint152 v3, uint152 v4, uint152 v5, uint152 v6, uint152 v7, uint152 v8, uint152 v9) public {
        uint152[] memory a = new uint152[](10);
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

    function testFuzz11(uint152 v0, uint152 v1, uint152 v2, uint152 v3, uint152 v4, uint152 v5, uint152 v6, uint152 v7, uint152 v8, uint152 v9, uint152 v10)
        public
    {
        uint152[] memory a = new uint152[](11);
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
        uint152 v0,
        uint152 v1,
        uint152 v2,
        uint152 v3,
        uint152 v4,
        uint152 v5,
        uint152 v6,
        uint152 v7,
        uint152 v8,
        uint152 v9,
        uint152 v10,
        uint152 v11
    ) public {
        uint152[] memory a = new uint152[](12);
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
        uint152 v0,
        uint152 v1,
        uint152 v2,
        uint152 v3,
        uint152 v4,
        uint152 v5,
        uint152 v6,
        uint152 v7,
        uint152 v8,
        uint152 v9,
        uint152 v10,
        uint152 v11,
        uint152 v12
    ) public {
        uint152[] memory a = new uint152[](13);
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
        uint152 v0,
        uint152 v1,
        uint152 v2,
        uint152 v3,
        uint152 v4,
        uint152 v5,
        uint152 v6,
        uint152 v7,
        uint152 v8,
        uint152 v9,
        uint152 v10,
        uint152 v11,
        uint152 v12,
        uint152 v13
    ) public {
        uint152[] memory a = new uint152[](14);
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
        uint152 v0,
        uint152 v1,
        uint152 v2,
        uint152 v3,
        uint152 v4,
        uint152 v5,
        uint152 v6,
        uint152 v7,
        uint152 v8,
        uint152 v9,
        uint152 v10,
        uint152 v11,
        uint152 v12,
        uint152 v13,
        uint152 v14
    ) public {
        uint152[] memory a = new uint152[](15);
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
        uint152 v0,
        uint152 v1,
        uint152 v2,
        uint152 v3,
        uint152 v4,
        uint152 v5,
        uint152 v6,
        uint152 v7,
        uint152 v8,
        uint152 v9,
        uint152 v10,
        uint152 v11,
        uint152 v12,
        uint152 v13,
        uint152 v14,
        uint152 v15
    ) public {
        uint152[] memory a = new uint152[](16);
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
        uint152 v0,
        uint152 v1,
        uint152 v2,
        uint152 v3,
        uint152 v4,
        uint152 v5,
        uint152 v6,
        uint152 v7,
        uint152 v8,
        uint152 v9,
        uint152 v10,
        uint152 v11,
        uint152 v12,
        uint152 v13,
        uint152 v14,
        uint152 v15,
        uint152 v16
    ) public {
        uint152[] memory a = new uint152[](17);
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
        uint152 v0,
        uint152 v1,
        uint152 v2,
        uint152 v3,
        uint152 v4,
        uint152 v5,
        uint152 v6,
        uint152 v7,
        uint152 v8,
        uint152 v9,
        uint152 v10,
        uint152 v11,
        uint152 v12,
        uint152 v13,
        uint152 v14,
        uint152 v15,
        uint152 v16,
        uint152 v17
    ) public {
        uint152[] memory a = new uint152[](18);
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
        uint152 v0,
        uint152 v1,
        uint152 v2,
        uint152 v3,
        uint152 v4,
        uint152 v5,
        uint152 v6,
        uint152 v7,
        uint152 v8,
        uint152 v9,
        uint152 v10,
        uint152 v11,
        uint152 v12,
        uint152 v13,
        uint152 v14,
        uint152 v15,
        uint152 v16,
        uint152 v17,
        uint152 v18
    ) public {
        uint152[] memory a = new uint152[](19);
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
        uint152 v0,
        uint152 v1,
        uint152 v2,
        uint152 v3,
        uint152 v4,
        uint152 v5,
        uint152 v6,
        uint152 v7,
        uint152 v8,
        uint152 v9,
        uint152 v10,
        uint152 v11,
        uint152 v12,
        uint152 v13,
        uint152 v14,
        uint152 v15,
        uint152 v16,
        uint152 v17,
        uint152 v18,
        uint152 v19
    ) public {
        uint152[] memory a = new uint152[](20);
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

    function eq(uint152[] memory lhs, uint152[] memory rhs) internal pure returns (bool) {
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

