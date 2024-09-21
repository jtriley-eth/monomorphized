// SPDX-License-Identifier: AGPL-3.0-only OR MIT
pragma solidity 0.8.24;

import { DynUint208 } from "../../src/dyn/DynUint208.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

contract DynUint208Test is Test {
    using DynUint208 for *;

    function testFuzz01(uint208 v0) public {
        uint208[] memory a = new uint208[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(uint208 v0, uint208 v1) public {
        uint208[] memory a = new uint208[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(uint208 v0, uint208 v1, uint208 v2) public {
        uint208[] memory a = new uint208[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(uint208 v0, uint208 v1, uint208 v2, uint208 v3) public {
        uint208[] memory a = new uint208[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(uint208 v0, uint208 v1, uint208 v2, uint208 v3, uint208 v4) public {
        uint208[] memory a = new uint208[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(uint208 v0, uint208 v1, uint208 v2, uint208 v3, uint208 v4, uint208 v5) public {
        uint208[] memory a = new uint208[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(uint208 v0, uint208 v1, uint208 v2, uint208 v3, uint208 v4, uint208 v5, uint208 v6) public {
        uint208[] memory a = new uint208[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(uint208 v0, uint208 v1, uint208 v2, uint208 v3, uint208 v4, uint208 v5, uint208 v6, uint208 v7) public {
        uint208[] memory a = new uint208[](8);
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

    function testFuzz09(uint208 v0, uint208 v1, uint208 v2, uint208 v3, uint208 v4, uint208 v5, uint208 v6, uint208 v7, uint208 v8) public {
        uint208[] memory a = new uint208[](9);
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

    function testFuzz10(uint208 v0, uint208 v1, uint208 v2, uint208 v3, uint208 v4, uint208 v5, uint208 v6, uint208 v7, uint208 v8, uint208 v9) public {
        uint208[] memory a = new uint208[](10);
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

    function testFuzz11(uint208 v0, uint208 v1, uint208 v2, uint208 v3, uint208 v4, uint208 v5, uint208 v6, uint208 v7, uint208 v8, uint208 v9, uint208 v10)
        public
    {
        uint208[] memory a = new uint208[](11);
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
        uint208 v0,
        uint208 v1,
        uint208 v2,
        uint208 v3,
        uint208 v4,
        uint208 v5,
        uint208 v6,
        uint208 v7,
        uint208 v8,
        uint208 v9,
        uint208 v10,
        uint208 v11
    ) public {
        uint208[] memory a = new uint208[](12);
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
        uint208 v0,
        uint208 v1,
        uint208 v2,
        uint208 v3,
        uint208 v4,
        uint208 v5,
        uint208 v6,
        uint208 v7,
        uint208 v8,
        uint208 v9,
        uint208 v10,
        uint208 v11,
        uint208 v12
    ) public {
        uint208[] memory a = new uint208[](13);
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
        uint208 v0,
        uint208 v1,
        uint208 v2,
        uint208 v3,
        uint208 v4,
        uint208 v5,
        uint208 v6,
        uint208 v7,
        uint208 v8,
        uint208 v9,
        uint208 v10,
        uint208 v11,
        uint208 v12,
        uint208 v13
    ) public {
        uint208[] memory a = new uint208[](14);
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
        uint208 v0,
        uint208 v1,
        uint208 v2,
        uint208 v3,
        uint208 v4,
        uint208 v5,
        uint208 v6,
        uint208 v7,
        uint208 v8,
        uint208 v9,
        uint208 v10,
        uint208 v11,
        uint208 v12,
        uint208 v13,
        uint208 v14
    ) public {
        uint208[] memory a = new uint208[](15);
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
        uint208 v0,
        uint208 v1,
        uint208 v2,
        uint208 v3,
        uint208 v4,
        uint208 v5,
        uint208 v6,
        uint208 v7,
        uint208 v8,
        uint208 v9,
        uint208 v10,
        uint208 v11,
        uint208 v12,
        uint208 v13,
        uint208 v14,
        uint208 v15
    ) public {
        uint208[] memory a = new uint208[](16);
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
        uint208 v0,
        uint208 v1,
        uint208 v2,
        uint208 v3,
        uint208 v4,
        uint208 v5,
        uint208 v6,
        uint208 v7,
        uint208 v8,
        uint208 v9,
        uint208 v10,
        uint208 v11,
        uint208 v12,
        uint208 v13,
        uint208 v14,
        uint208 v15,
        uint208 v16
    ) public {
        uint208[] memory a = new uint208[](17);
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
        uint208 v0,
        uint208 v1,
        uint208 v2,
        uint208 v3,
        uint208 v4,
        uint208 v5,
        uint208 v6,
        uint208 v7,
        uint208 v8,
        uint208 v9,
        uint208 v10,
        uint208 v11,
        uint208 v12,
        uint208 v13,
        uint208 v14,
        uint208 v15,
        uint208 v16,
        uint208 v17
    ) public {
        uint208[] memory a = new uint208[](18);
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
        uint208 v0,
        uint208 v1,
        uint208 v2,
        uint208 v3,
        uint208 v4,
        uint208 v5,
        uint208 v6,
        uint208 v7,
        uint208 v8,
        uint208 v9,
        uint208 v10,
        uint208 v11,
        uint208 v12,
        uint208 v13,
        uint208 v14,
        uint208 v15,
        uint208 v16,
        uint208 v17,
        uint208 v18
    ) public {
        uint208[] memory a = new uint208[](19);
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
        uint208 v0,
        uint208 v1,
        uint208 v2,
        uint208 v3,
        uint208 v4,
        uint208 v5,
        uint208 v6,
        uint208 v7,
        uint208 v8,
        uint208 v9,
        uint208 v10,
        uint208 v11,
        uint208 v12,
        uint208 v13,
        uint208 v14,
        uint208 v15,
        uint208 v16,
        uint208 v17,
        uint208 v18,
        uint208 v19
    ) public {
        uint208[] memory a = new uint208[](20);
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

    function eq(uint208[] memory lhs, uint208[] memory rhs) internal pure returns (bool) {
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

