// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { DynUint64 } from "../../src/dyn/DynUint64.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

contract DynUint64Test is Test {
    using DynUint64 for *;

    function testFuzz01(uint64 v0) public {
        uint64[] memory a = new uint64[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(uint64 v0, uint64 v1) public {
        uint64[] memory a = new uint64[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(uint64 v0, uint64 v1, uint64 v2) public {
        uint64[] memory a = new uint64[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(uint64 v0, uint64 v1, uint64 v2, uint64 v3) public {
        uint64[] memory a = new uint64[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(uint64 v0, uint64 v1, uint64 v2, uint64 v3, uint64 v4) public {
        uint64[] memory a = new uint64[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(uint64 v0, uint64 v1, uint64 v2, uint64 v3, uint64 v4, uint64 v5) public {
        uint64[] memory a = new uint64[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(uint64 v0, uint64 v1, uint64 v2, uint64 v3, uint64 v4, uint64 v5, uint64 v6) public {
        uint64[] memory a = new uint64[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(uint64 v0, uint64 v1, uint64 v2, uint64 v3, uint64 v4, uint64 v5, uint64 v6, uint64 v7) public {
        uint64[] memory a = new uint64[](8);
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

    function testFuzz09(uint64 v0, uint64 v1, uint64 v2, uint64 v3, uint64 v4, uint64 v5, uint64 v6, uint64 v7, uint64 v8) public {
        uint64[] memory a = new uint64[](9);
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

    function testFuzz10(uint64 v0, uint64 v1, uint64 v2, uint64 v3, uint64 v4, uint64 v5, uint64 v6, uint64 v7, uint64 v8, uint64 v9) public {
        uint64[] memory a = new uint64[](10);
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

    function testFuzz11(uint64 v0, uint64 v1, uint64 v2, uint64 v3, uint64 v4, uint64 v5, uint64 v6, uint64 v7, uint64 v8, uint64 v9, uint64 v10)
        public
    {
        uint64[] memory a = new uint64[](11);
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
        uint64 v0,
        uint64 v1,
        uint64 v2,
        uint64 v3,
        uint64 v4,
        uint64 v5,
        uint64 v6,
        uint64 v7,
        uint64 v8,
        uint64 v9,
        uint64 v10,
        uint64 v11
    ) public {
        uint64[] memory a = new uint64[](12);
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
        uint64 v0,
        uint64 v1,
        uint64 v2,
        uint64 v3,
        uint64 v4,
        uint64 v5,
        uint64 v6,
        uint64 v7,
        uint64 v8,
        uint64 v9,
        uint64 v10,
        uint64 v11,
        uint64 v12
    ) public {
        uint64[] memory a = new uint64[](13);
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
        uint64 v0,
        uint64 v1,
        uint64 v2,
        uint64 v3,
        uint64 v4,
        uint64 v5,
        uint64 v6,
        uint64 v7,
        uint64 v8,
        uint64 v9,
        uint64 v10,
        uint64 v11,
        uint64 v12,
        uint64 v13
    ) public {
        uint64[] memory a = new uint64[](14);
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
        uint64 v0,
        uint64 v1,
        uint64 v2,
        uint64 v3,
        uint64 v4,
        uint64 v5,
        uint64 v6,
        uint64 v7,
        uint64 v8,
        uint64 v9,
        uint64 v10,
        uint64 v11,
        uint64 v12,
        uint64 v13,
        uint64 v14
    ) public {
        uint64[] memory a = new uint64[](15);
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
        uint64 v0,
        uint64 v1,
        uint64 v2,
        uint64 v3,
        uint64 v4,
        uint64 v5,
        uint64 v6,
        uint64 v7,
        uint64 v8,
        uint64 v9,
        uint64 v10,
        uint64 v11,
        uint64 v12,
        uint64 v13,
        uint64 v14,
        uint64 v15
    ) public {
        uint64[] memory a = new uint64[](16);
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
        uint64 v0,
        uint64 v1,
        uint64 v2,
        uint64 v3,
        uint64 v4,
        uint64 v5,
        uint64 v6,
        uint64 v7,
        uint64 v8,
        uint64 v9,
        uint64 v10,
        uint64 v11,
        uint64 v12,
        uint64 v13,
        uint64 v14,
        uint64 v15,
        uint64 v16
    ) public {
        uint64[] memory a = new uint64[](17);
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
        uint64 v0,
        uint64 v1,
        uint64 v2,
        uint64 v3,
        uint64 v4,
        uint64 v5,
        uint64 v6,
        uint64 v7,
        uint64 v8,
        uint64 v9,
        uint64 v10,
        uint64 v11,
        uint64 v12,
        uint64 v13,
        uint64 v14,
        uint64 v15,
        uint64 v16,
        uint64 v17
    ) public {
        uint64[] memory a = new uint64[](18);
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
        uint64 v0,
        uint64 v1,
        uint64 v2,
        uint64 v3,
        uint64 v4,
        uint64 v5,
        uint64 v6,
        uint64 v7,
        uint64 v8,
        uint64 v9,
        uint64 v10,
        uint64 v11,
        uint64 v12,
        uint64 v13,
        uint64 v14,
        uint64 v15,
        uint64 v16,
        uint64 v17,
        uint64 v18
    ) public {
        uint64[] memory a = new uint64[](19);
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
        uint64 v0,
        uint64 v1,
        uint64 v2,
        uint64 v3,
        uint64 v4,
        uint64 v5,
        uint64 v6,
        uint64 v7,
        uint64 v8,
        uint64 v9,
        uint64 v10,
        uint64 v11,
        uint64 v12,
        uint64 v13,
        uint64 v14,
        uint64 v15,
        uint64 v16,
        uint64 v17,
        uint64 v18,
        uint64 v19
    ) public {
        uint64[] memory a = new uint64[](20);
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

    function eq(uint64[] memory lhs, uint64[] memory rhs) internal pure returns (bool) {
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

