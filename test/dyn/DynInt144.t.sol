// SPDX-License-Identifier: AGPL-3.0-only OR MIT
pragma solidity 0.8.24;

import { DynInt144 } from "../../src/dyn/DynInt144.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

contract DynInt144Test is Test {
    using DynInt144 for *;

    function testFuzz01(int144 v0) public {
        int144[] memory a = new int144[](1);
        a[0] = v0;

        assertTrue(eq(a, [v0].dyn()));
    }

    function testFuzz02(int144 v0, int144 v1) public {
        int144[] memory a = new int144[](2);
        a[0] = v0;
        a[1] = v1;

        assertTrue(eq(a, [v0, v1].dyn()));
    }

    function testFuzz03(int144 v0, int144 v1, int144 v2) public {
        int144[] memory a = new int144[](3);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;

        assertTrue(eq(a, [v0, v1, v2].dyn()));
    }

    function testFuzz04(int144 v0, int144 v1, int144 v2, int144 v3) public {
        int144[] memory a = new int144[](4);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;

        assertTrue(eq(a, [v0, v1, v2, v3].dyn()));
    }

    function testFuzz05(int144 v0, int144 v1, int144 v2, int144 v3, int144 v4) public {
        int144[] memory a = new int144[](5);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;

        assertTrue(eq(a, [v0, v1, v2, v3, v4].dyn()));
    }

    function testFuzz06(int144 v0, int144 v1, int144 v2, int144 v3, int144 v4, int144 v5) public {
        int144[] memory a = new int144[](6);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5].dyn()));
    }

    function testFuzz07(int144 v0, int144 v1, int144 v2, int144 v3, int144 v4, int144 v5, int144 v6) public {
        int144[] memory a = new int144[](7);
        a[0] = v0;
        a[1] = v1;
        a[2] = v2;
        a[3] = v3;
        a[4] = v4;
        a[5] = v5;
        a[6] = v6;

        assertTrue(eq(a, [v0, v1, v2, v3, v4, v5, v6].dyn()));
    }

    function testFuzz08(int144 v0, int144 v1, int144 v2, int144 v3, int144 v4, int144 v5, int144 v6, int144 v7) public {
        int144[] memory a = new int144[](8);
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

    function testFuzz09(int144 v0, int144 v1, int144 v2, int144 v3, int144 v4, int144 v5, int144 v6, int144 v7, int144 v8) public {
        int144[] memory a = new int144[](9);
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

    function testFuzz10(int144 v0, int144 v1, int144 v2, int144 v3, int144 v4, int144 v5, int144 v6, int144 v7, int144 v8, int144 v9) public {
        int144[] memory a = new int144[](10);
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

    function testFuzz11(int144 v0, int144 v1, int144 v2, int144 v3, int144 v4, int144 v5, int144 v6, int144 v7, int144 v8, int144 v9, int144 v10)
        public
    {
        int144[] memory a = new int144[](11);
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
        int144 v0,
        int144 v1,
        int144 v2,
        int144 v3,
        int144 v4,
        int144 v5,
        int144 v6,
        int144 v7,
        int144 v8,
        int144 v9,
        int144 v10,
        int144 v11
    ) public {
        int144[] memory a = new int144[](12);
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
        int144 v0,
        int144 v1,
        int144 v2,
        int144 v3,
        int144 v4,
        int144 v5,
        int144 v6,
        int144 v7,
        int144 v8,
        int144 v9,
        int144 v10,
        int144 v11,
        int144 v12
    ) public {
        int144[] memory a = new int144[](13);
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
        int144 v0,
        int144 v1,
        int144 v2,
        int144 v3,
        int144 v4,
        int144 v5,
        int144 v6,
        int144 v7,
        int144 v8,
        int144 v9,
        int144 v10,
        int144 v11,
        int144 v12,
        int144 v13
    ) public {
        int144[] memory a = new int144[](14);
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
        int144 v0,
        int144 v1,
        int144 v2,
        int144 v3,
        int144 v4,
        int144 v5,
        int144 v6,
        int144 v7,
        int144 v8,
        int144 v9,
        int144 v10,
        int144 v11,
        int144 v12,
        int144 v13,
        int144 v14
    ) public {
        int144[] memory a = new int144[](15);
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
        int144 v0,
        int144 v1,
        int144 v2,
        int144 v3,
        int144 v4,
        int144 v5,
        int144 v6,
        int144 v7,
        int144 v8,
        int144 v9,
        int144 v10,
        int144 v11,
        int144 v12,
        int144 v13,
        int144 v14,
        int144 v15
    ) public {
        int144[] memory a = new int144[](16);
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
        int144 v0,
        int144 v1,
        int144 v2,
        int144 v3,
        int144 v4,
        int144 v5,
        int144 v6,
        int144 v7,
        int144 v8,
        int144 v9,
        int144 v10,
        int144 v11,
        int144 v12,
        int144 v13,
        int144 v14,
        int144 v15,
        int144 v16
    ) public {
        int144[] memory a = new int144[](17);
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
        int144 v0,
        int144 v1,
        int144 v2,
        int144 v3,
        int144 v4,
        int144 v5,
        int144 v6,
        int144 v7,
        int144 v8,
        int144 v9,
        int144 v10,
        int144 v11,
        int144 v12,
        int144 v13,
        int144 v14,
        int144 v15,
        int144 v16,
        int144 v17
    ) public {
        int144[] memory a = new int144[](18);
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
        int144 v0,
        int144 v1,
        int144 v2,
        int144 v3,
        int144 v4,
        int144 v5,
        int144 v6,
        int144 v7,
        int144 v8,
        int144 v9,
        int144 v10,
        int144 v11,
        int144 v12,
        int144 v13,
        int144 v14,
        int144 v15,
        int144 v16,
        int144 v17,
        int144 v18
    ) public {
        int144[] memory a = new int144[](19);
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
        int144 v0,
        int144 v1,
        int144 v2,
        int144 v3,
        int144 v4,
        int144 v5,
        int144 v6,
        int144 v7,
        int144 v8,
        int144 v9,
        int144 v10,
        int144 v11,
        int144 v12,
        int144 v13,
        int144 v14,
        int144 v15,
        int144 v16,
        int144 v17,
        int144 v18,
        int144 v19
    ) public {
        int144[] memory a = new int144[](20);
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

    function eq(int144[] memory lhs, int144[] memory rhs) internal pure returns (bool) {
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

