// SPDX-License-Identifier: AGPL-3.0-only OR MIT
pragma solidity 0.8.24;

import { DynUint80 } from "../../src/dyn/DynUint80.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

contract DynUint80Test is Test {
    using DynUint80 for *;

    function testFuzz01(uint80 v0) public {
        uint80[] memory a = new uint80[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(uint80 v0, uint80 v1) public {
        uint80[] memory a = new uint80[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(uint80 v0, uint80 v1, uint80 v2) public {
        uint80[] memory a = new uint80[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(uint80 v0, uint80 v1, uint80 v2, uint80 v3) public {
        uint80[] memory a = new uint80[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(uint80 v0, uint80 v1, uint80 v2, uint80 v3, uint80 v4) public {
        uint80[] memory a = new uint80[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(uint80 v0, uint80 v1, uint80 v2, uint80 v3, uint80 v4, uint80 v5) public {
        uint80[] memory a = new uint80[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(uint80 v0, uint80 v1, uint80 v2, uint80 v3, uint80 v4, uint80 v5, uint80 v6) public {
        uint80[] memory a = new uint80[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(uint80 v0, uint80 v1, uint80 v2, uint80 v3, uint80 v4, uint80 v5, uint80 v6, uint80 v7) public {
        uint80[] memory a = new uint80[](8);
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

    function testFuzz09(uint80 v0, uint80 v1, uint80 v2, uint80 v3, uint80 v4, uint80 v5, uint80 v6, uint80 v7, uint80 v8) public {
        uint80[] memory a = new uint80[](9);
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

    function testFuzz10(uint80 v0, uint80 v1, uint80 v2, uint80 v3, uint80 v4, uint80 v5, uint80 v6, uint80 v7, uint80 v8, uint80 v9) public {
        uint80[] memory a = new uint80[](10);
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

    function testFuzz11(uint80 v0, uint80 v1, uint80 v2, uint80 v3, uint80 v4, uint80 v5, uint80 v6, uint80 v7, uint80 v8, uint80 v9, uint80 v10)
        public
    {
        uint80[] memory a = new uint80[](11);
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
        uint80 v0,
        uint80 v1,
        uint80 v2,
        uint80 v3,
        uint80 v4,
        uint80 v5,
        uint80 v6,
        uint80 v7,
        uint80 v8,
        uint80 v9,
        uint80 v10,
        uint80 v11
    ) public {
        uint80[] memory a = new uint80[](12);
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
        uint80 v0,
        uint80 v1,
        uint80 v2,
        uint80 v3,
        uint80 v4,
        uint80 v5,
        uint80 v6,
        uint80 v7,
        uint80 v8,
        uint80 v9,
        uint80 v10,
        uint80 v11,
        uint80 v12
    ) public {
        uint80[] memory a = new uint80[](13);
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
        uint80 v0,
        uint80 v1,
        uint80 v2,
        uint80 v3,
        uint80 v4,
        uint80 v5,
        uint80 v6,
        uint80 v7,
        uint80 v8,
        uint80 v9,
        uint80 v10,
        uint80 v11,
        uint80 v12,
        uint80 v13
    ) public {
        uint80[] memory a = new uint80[](14);
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
        uint80 v0,
        uint80 v1,
        uint80 v2,
        uint80 v3,
        uint80 v4,
        uint80 v5,
        uint80 v6,
        uint80 v7,
        uint80 v8,
        uint80 v9,
        uint80 v10,
        uint80 v11,
        uint80 v12,
        uint80 v13,
        uint80 v14
    ) public {
        uint80[] memory a = new uint80[](15);
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
        uint80 v0,
        uint80 v1,
        uint80 v2,
        uint80 v3,
        uint80 v4,
        uint80 v5,
        uint80 v6,
        uint80 v7,
        uint80 v8,
        uint80 v9,
        uint80 v10,
        uint80 v11,
        uint80 v12,
        uint80 v13,
        uint80 v14,
        uint80 v15
    ) public {
        uint80[] memory a = new uint80[](16);
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
        uint80 v0,
        uint80 v1,
        uint80 v2,
        uint80 v3,
        uint80 v4,
        uint80 v5,
        uint80 v6,
        uint80 v7,
        uint80 v8,
        uint80 v9,
        uint80 v10,
        uint80 v11,
        uint80 v12,
        uint80 v13,
        uint80 v14,
        uint80 v15,
        uint80 v16
    ) public {
        uint80[] memory a = new uint80[](17);
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
        uint80 v0,
        uint80 v1,
        uint80 v2,
        uint80 v3,
        uint80 v4,
        uint80 v5,
        uint80 v6,
        uint80 v7,
        uint80 v8,
        uint80 v9,
        uint80 v10,
        uint80 v11,
        uint80 v12,
        uint80 v13,
        uint80 v14,
        uint80 v15,
        uint80 v16,
        uint80 v17
    ) public {
        uint80[] memory a = new uint80[](18);
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
        uint80 v0,
        uint80 v1,
        uint80 v2,
        uint80 v3,
        uint80 v4,
        uint80 v5,
        uint80 v6,
        uint80 v7,
        uint80 v8,
        uint80 v9,
        uint80 v10,
        uint80 v11,
        uint80 v12,
        uint80 v13,
        uint80 v14,
        uint80 v15,
        uint80 v16,
        uint80 v17,
        uint80 v18
    ) public {
        uint80[] memory a = new uint80[](19);
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
        uint80 v0,
        uint80 v1,
        uint80 v2,
        uint80 v3,
        uint80 v4,
        uint80 v5,
        uint80 v6,
        uint80 v7,
        uint80 v8,
        uint80 v9,
        uint80 v10,
        uint80 v11,
        uint80 v12,
        uint80 v13,
        uint80 v14,
        uint80 v15,
        uint80 v16,
        uint80 v17,
        uint80 v18,
        uint80 v19
    ) public {
        uint80[] memory a = new uint80[](20);
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

    function eq(uint80[] memory lhs, uint80[] memory rhs) internal pure returns (bool) {
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

