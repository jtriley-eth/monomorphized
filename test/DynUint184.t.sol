// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import { DynUint184 } from "../src/DynUint184.sol";

import {Test} from "../lib/forge-std/src/Test.sol";

contract DynUint184Test is Test {
    using DynUint184 for *;

    function testFuzz01(uint184 v0) public {
        uint184[] memory a = new uint184[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(uint184 v0, uint184 v1) public {
        uint184[] memory a = new uint184[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(uint184 v0, uint184 v1, uint184 v2) public {
        uint184[] memory a = new uint184[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(uint184 v0, uint184 v1, uint184 v2, uint184 v3) public {
        uint184[] memory a = new uint184[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(uint184 v0, uint184 v1, uint184 v2, uint184 v3, uint184 v4) public {
        uint184[] memory a = new uint184[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(uint184 v0, uint184 v1, uint184 v2, uint184 v3, uint184 v4, uint184 v5) public {
        uint184[] memory a = new uint184[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(uint184 v0, uint184 v1, uint184 v2, uint184 v3, uint184 v4, uint184 v5, uint184 v6) public {
        uint184[] memory a = new uint184[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(uint184 v0, uint184 v1, uint184 v2, uint184 v3, uint184 v4, uint184 v5, uint184 v6, uint184 v7) public {
        uint184[] memory a = new uint184[](8);
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

    function testFuzz09(uint184 v0, uint184 v1, uint184 v2, uint184 v3, uint184 v4, uint184 v5, uint184 v6, uint184 v7, uint184 v8) public {
        uint184[] memory a = new uint184[](9);
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

    function testFuzz10(uint184 v0, uint184 v1, uint184 v2, uint184 v3, uint184 v4, uint184 v5, uint184 v6, uint184 v7, uint184 v8, uint184 v9) public {
        uint184[] memory a = new uint184[](10);
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

    function testFuzz11(uint184 v0, uint184 v1, uint184 v2, uint184 v3, uint184 v4, uint184 v5, uint184 v6, uint184 v7, uint184 v8, uint184 v9, uint184 v10)
        public
    {
        uint184[] memory a = new uint184[](11);
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
        uint184 v0,
        uint184 v1,
        uint184 v2,
        uint184 v3,
        uint184 v4,
        uint184 v5,
        uint184 v6,
        uint184 v7,
        uint184 v8,
        uint184 v9,
        uint184 v10,
        uint184 v11
    ) public {
        uint184[] memory a = new uint184[](12);
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
        uint184 v0,
        uint184 v1,
        uint184 v2,
        uint184 v3,
        uint184 v4,
        uint184 v5,
        uint184 v6,
        uint184 v7,
        uint184 v8,
        uint184 v9,
        uint184 v10,
        uint184 v11,
        uint184 v12
    ) public {
        uint184[] memory a = new uint184[](13);
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
        uint184 v0,
        uint184 v1,
        uint184 v2,
        uint184 v3,
        uint184 v4,
        uint184 v5,
        uint184 v6,
        uint184 v7,
        uint184 v8,
        uint184 v9,
        uint184 v10,
        uint184 v11,
        uint184 v12,
        uint184 v13
    ) public {
        uint184[] memory a = new uint184[](14);
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
        uint184 v0,
        uint184 v1,
        uint184 v2,
        uint184 v3,
        uint184 v4,
        uint184 v5,
        uint184 v6,
        uint184 v7,
        uint184 v8,
        uint184 v9,
        uint184 v10,
        uint184 v11,
        uint184 v12,
        uint184 v13,
        uint184 v14
    ) public {
        uint184[] memory a = new uint184[](15);
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
        uint184 v0,
        uint184 v1,
        uint184 v2,
        uint184 v3,
        uint184 v4,
        uint184 v5,
        uint184 v6,
        uint184 v7,
        uint184 v8,
        uint184 v9,
        uint184 v10,
        uint184 v11,
        uint184 v12,
        uint184 v13,
        uint184 v14,
        uint184 v15
    ) public {
        uint184[] memory a = new uint184[](16);
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
        uint184 v0,
        uint184 v1,
        uint184 v2,
        uint184 v3,
        uint184 v4,
        uint184 v5,
        uint184 v6,
        uint184 v7,
        uint184 v8,
        uint184 v9,
        uint184 v10,
        uint184 v11,
        uint184 v12,
        uint184 v13,
        uint184 v14,
        uint184 v15,
        uint184 v16
    ) public {
        uint184[] memory a = new uint184[](17);
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
        uint184 v0,
        uint184 v1,
        uint184 v2,
        uint184 v3,
        uint184 v4,
        uint184 v5,
        uint184 v6,
        uint184 v7,
        uint184 v8,
        uint184 v9,
        uint184 v10,
        uint184 v11,
        uint184 v12,
        uint184 v13,
        uint184 v14,
        uint184 v15,
        uint184 v16,
        uint184 v17
    ) public {
        uint184[] memory a = new uint184[](18);
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
        uint184 v0,
        uint184 v1,
        uint184 v2,
        uint184 v3,
        uint184 v4,
        uint184 v5,
        uint184 v6,
        uint184 v7,
        uint184 v8,
        uint184 v9,
        uint184 v10,
        uint184 v11,
        uint184 v12,
        uint184 v13,
        uint184 v14,
        uint184 v15,
        uint184 v16,
        uint184 v17,
        uint184 v18
    ) public {
        uint184[] memory a = new uint184[](19);
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
        uint184 v0,
        uint184 v1,
        uint184 v2,
        uint184 v3,
        uint184 v4,
        uint184 v5,
        uint184 v6,
        uint184 v7,
        uint184 v8,
        uint184 v9,
        uint184 v10,
        uint184 v11,
        uint184 v12,
        uint184 v13,
        uint184 v14,
        uint184 v15,
        uint184 v16,
        uint184 v17,
        uint184 v18,
        uint184 v19
    ) public {
        uint184[] memory a = new uint184[](20);
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

    function eq(uint184[] memory lhs, uint184[] memory rhs) internal pure returns (bool) {
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
