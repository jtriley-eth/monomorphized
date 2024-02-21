// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import { DynUint240 } from "../src/DynUint240.sol";

import {Test} from "../lib/forge-std/src/Test.sol";

contract DynUint240Test is Test {
    using DynUint240 for *;

    function testFuzz01(uint240 v0) public {
        uint240[] memory a = new uint240[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(uint240 v0, uint240 v1) public {
        uint240[] memory a = new uint240[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(uint240 v0, uint240 v1, uint240 v2) public {
        uint240[] memory a = new uint240[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(uint240 v0, uint240 v1, uint240 v2, uint240 v3) public {
        uint240[] memory a = new uint240[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(uint240 v0, uint240 v1, uint240 v2, uint240 v3, uint240 v4) public {
        uint240[] memory a = new uint240[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(uint240 v0, uint240 v1, uint240 v2, uint240 v3, uint240 v4, uint240 v5) public {
        uint240[] memory a = new uint240[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(uint240 v0, uint240 v1, uint240 v2, uint240 v3, uint240 v4, uint240 v5, uint240 v6) public {
        uint240[] memory a = new uint240[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(uint240 v0, uint240 v1, uint240 v2, uint240 v3, uint240 v4, uint240 v5, uint240 v6, uint240 v7) public {
        uint240[] memory a = new uint240[](8);
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

    function testFuzz09(uint240 v0, uint240 v1, uint240 v2, uint240 v3, uint240 v4, uint240 v5, uint240 v6, uint240 v7, uint240 v8) public {
        uint240[] memory a = new uint240[](9);
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

    function testFuzz10(uint240 v0, uint240 v1, uint240 v2, uint240 v3, uint240 v4, uint240 v5, uint240 v6, uint240 v7, uint240 v8, uint240 v9) public {
        uint240[] memory a = new uint240[](10);
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

    function testFuzz11(uint240 v0, uint240 v1, uint240 v2, uint240 v3, uint240 v4, uint240 v5, uint240 v6, uint240 v7, uint240 v8, uint240 v9, uint240 v10)
        public
    {
        uint240[] memory a = new uint240[](11);
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
        uint240 v0,
        uint240 v1,
        uint240 v2,
        uint240 v3,
        uint240 v4,
        uint240 v5,
        uint240 v6,
        uint240 v7,
        uint240 v8,
        uint240 v9,
        uint240 v10,
        uint240 v11
    ) public {
        uint240[] memory a = new uint240[](12);
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
        uint240 v0,
        uint240 v1,
        uint240 v2,
        uint240 v3,
        uint240 v4,
        uint240 v5,
        uint240 v6,
        uint240 v7,
        uint240 v8,
        uint240 v9,
        uint240 v10,
        uint240 v11,
        uint240 v12
    ) public {
        uint240[] memory a = new uint240[](13);
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
        uint240 v0,
        uint240 v1,
        uint240 v2,
        uint240 v3,
        uint240 v4,
        uint240 v5,
        uint240 v6,
        uint240 v7,
        uint240 v8,
        uint240 v9,
        uint240 v10,
        uint240 v11,
        uint240 v12,
        uint240 v13
    ) public {
        uint240[] memory a = new uint240[](14);
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
        uint240 v0,
        uint240 v1,
        uint240 v2,
        uint240 v3,
        uint240 v4,
        uint240 v5,
        uint240 v6,
        uint240 v7,
        uint240 v8,
        uint240 v9,
        uint240 v10,
        uint240 v11,
        uint240 v12,
        uint240 v13,
        uint240 v14
    ) public {
        uint240[] memory a = new uint240[](15);
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
        uint240 v0,
        uint240 v1,
        uint240 v2,
        uint240 v3,
        uint240 v4,
        uint240 v5,
        uint240 v6,
        uint240 v7,
        uint240 v8,
        uint240 v9,
        uint240 v10,
        uint240 v11,
        uint240 v12,
        uint240 v13,
        uint240 v14,
        uint240 v15
    ) public {
        uint240[] memory a = new uint240[](16);
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
        uint240 v0,
        uint240 v1,
        uint240 v2,
        uint240 v3,
        uint240 v4,
        uint240 v5,
        uint240 v6,
        uint240 v7,
        uint240 v8,
        uint240 v9,
        uint240 v10,
        uint240 v11,
        uint240 v12,
        uint240 v13,
        uint240 v14,
        uint240 v15,
        uint240 v16
    ) public {
        uint240[] memory a = new uint240[](17);
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
        uint240 v0,
        uint240 v1,
        uint240 v2,
        uint240 v3,
        uint240 v4,
        uint240 v5,
        uint240 v6,
        uint240 v7,
        uint240 v8,
        uint240 v9,
        uint240 v10,
        uint240 v11,
        uint240 v12,
        uint240 v13,
        uint240 v14,
        uint240 v15,
        uint240 v16,
        uint240 v17
    ) public {
        uint240[] memory a = new uint240[](18);
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
        uint240 v0,
        uint240 v1,
        uint240 v2,
        uint240 v3,
        uint240 v4,
        uint240 v5,
        uint240 v6,
        uint240 v7,
        uint240 v8,
        uint240 v9,
        uint240 v10,
        uint240 v11,
        uint240 v12,
        uint240 v13,
        uint240 v14,
        uint240 v15,
        uint240 v16,
        uint240 v17,
        uint240 v18
    ) public {
        uint240[] memory a = new uint240[](19);
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
        uint240 v0,
        uint240 v1,
        uint240 v2,
        uint240 v3,
        uint240 v4,
        uint240 v5,
        uint240 v6,
        uint240 v7,
        uint240 v8,
        uint240 v9,
        uint240 v10,
        uint240 v11,
        uint240 v12,
        uint240 v13,
        uint240 v14,
        uint240 v15,
        uint240 v16,
        uint240 v17,
        uint240 v18,
        uint240 v19
    ) public {
        uint240[] memory a = new uint240[](20);
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

    function eq(uint240[] memory lhs, uint240[] memory rhs) internal pure returns (bool) {
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
