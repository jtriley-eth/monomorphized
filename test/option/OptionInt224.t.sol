// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { OptionInt224, LibOptionInt224 } from "../../src/option/OptionInt224.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

int224 constant A = int224(1);
int224 constant B = int224(2);

function initial() pure returns (int224 res) {
    return A;
}

function other(int224 self) pure returns (int224) {
    return self == A ? B : A;
}

contract OptionInt224Test is Test {
    using LibOptionInt224 for *;

    function testEq() public {
        OptionInt224 a = LibOptionInt224.None();
        OptionInt224 b = LibOptionInt224.None();
        OptionInt224 c = LibOptionInt224.Some(A);
        OptionInt224 d = LibOptionInt224.Some(A);
        OptionInt224 e = LibOptionInt224.Some(B);
        OptionInt224 f = LibOptionInt224.Some(B);

        assertEq(a == b, true);
        assertEq(c == d, true);
        assertEq(e == f, true);
        assertEq(a == c, false);
        assertEq(a == d, false);
        assertEq(a == e, false);
        assertEq(a == f, false);
        assertEq(b == c, false);
        assertEq(b == d, false);
        assertEq(b == e, false);
        assertEq(b == f, false);
        assertEq(c == e, false);
        assertEq(c == f, false);
        assertEq(d == e, false);
        assertEq(d == f, false);
    }

    function testNeq() public {
        OptionInt224 a = LibOptionInt224.None();
        OptionInt224 b = LibOptionInt224.None();
        OptionInt224 c = LibOptionInt224.Some(A);
        OptionInt224 d = LibOptionInt224.Some(A);
        OptionInt224 e = LibOptionInt224.Some(B);
        OptionInt224 f = LibOptionInt224.Some(B);

        assertEq(a != b, false);
        assertEq(c != d, false);
        assertEq(e != f, false);
        assertEq(a != c, true);
        assertEq(a != d, true);
        assertEq(a != e, true);
        assertEq(a != f, true);
        assertEq(b != c, true);
        assertEq(b != d, true);
        assertEq(b != e, true);
        assertEq(b != f, true);
        assertEq(c != e, true);
        assertEq(c != f, true);
        assertEq(d != e, true);
        assertEq(d != f, true);
    }

    function testGt() public {
        OptionInt224 a = LibOptionInt224.None();
        OptionInt224 b = LibOptionInt224.None();
        OptionInt224 c = LibOptionInt224.Some(A);
        OptionInt224 d = LibOptionInt224.Some(A);
        OptionInt224 e = LibOptionInt224.Some(B);
        OptionInt224 f = LibOptionInt224.Some(B);

        assertEq(a > b, false);
        assertEq(b > a, false);
        assertEq(c > d, false);
        assertEq(d > c, false);
        assertEq(e > f, false);
        assertEq(f > e, false);
        assertEq(a > c, false);
        assertEq(a > e, false);
        assertEq(c > e, false);
        assertEq(c > a, true);
        assertEq(e > c, true);
        assertEq(e > a, true);
    }

    function testGte() public {
        OptionInt224 a = LibOptionInt224.None();
        OptionInt224 b = LibOptionInt224.None();
        OptionInt224 c = LibOptionInt224.Some(A);
        OptionInt224 d = LibOptionInt224.Some(A);
        OptionInt224 e = LibOptionInt224.Some(B);
        OptionInt224 f = LibOptionInt224.Some(B);

        assertEq(a >= b, true);
        assertEq(b >= a, true);
        assertEq(c >= d, true);
        assertEq(d >= c, true);
        assertEq(e >= f, true);
        assertEq(f >= e, true);
        assertEq(a >= c, false);
        assertEq(a >= e, false);
        assertEq(c >= a, true);
        assertEq(e >= c, true);
        assertEq(e >= a, true);
    }

    function testLt() public {
        OptionInt224 a = LibOptionInt224.None();
        OptionInt224 b = LibOptionInt224.None();
        OptionInt224 c = LibOptionInt224.Some(A);
        OptionInt224 d = LibOptionInt224.Some(A);
        OptionInt224 e = LibOptionInt224.Some(B);
        OptionInt224 f = LibOptionInt224.Some(B);

        assertEq(a < b, false);
        assertEq(b < a, false);
        assertEq(c < d, false);
        assertEq(d < c, false);
        assertEq(e < f, false);
        assertEq(f < e, false);
        assertEq(a < c, true);
        assertEq(a < e, true);
        assertEq(c < a, false);
        assertEq(e < c, false);
    }

    function testLte() public {
        OptionInt224 a = LibOptionInt224.None();
        OptionInt224 b = LibOptionInt224.None();
        OptionInt224 c = LibOptionInt224.Some(A);
        OptionInt224 d = LibOptionInt224.Some(A);
        OptionInt224 e = LibOptionInt224.Some(B);
        OptionInt224 f = LibOptionInt224.Some(B);

        assertEq(a <= b, true);
        assertEq(b <= a, true);
        assertEq(c <= d, true);
        assertEq(d <= c, true);
        assertEq(e <= f, true);
        assertEq(f <= e, true);
        assertEq(a <= c, true);
        assertEq(a <= e, true);
        assertEq(c <= a, false);
        assertEq(e <= c, false);
    }

    function testClone() public {
        OptionInt224 a = LibOptionInt224.None();
        OptionInt224 b = LibOptionInt224.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionInt224 a = LibOptionInt224.None();
        OptionInt224 b = LibOptionInt224.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionInt224 a = LibOptionInt224.None();
        OptionInt224 b = LibOptionInt224.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionInt224 a = LibOptionInt224.None();
        OptionInt224 b = LibOptionInt224.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionInt224 a = LibOptionInt224.None();
        OptionInt224 b = LibOptionInt224.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionInt224 a = LibOptionInt224.None();
        OptionInt224 b = LibOptionInt224.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionInt224 a = LibOptionInt224.None();
        OptionInt224 b = LibOptionInt224.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionInt224 a = LibOptionInt224.None();
        OptionInt224 b = LibOptionInt224.Some(A);

        assertEq(a.map(other) == LibOptionInt224.None(), true);
        assertEq(b.map(other) == LibOptionInt224.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, int224 a, int224 b) public {
        OptionInt224 aMaybe = aIsSome ? LibOptionInt224.Some(a) : LibOptionInt224.None();
        OptionInt224 bMaybe = bIsSome ? LibOptionInt224.Some(b) : LibOptionInt224.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, int224 a, int224 b) public {
        OptionInt224 aMaybe = aIsSome ? LibOptionInt224.Some(a) : LibOptionInt224.None();
        OptionInt224 bMaybe = bIsSome ? LibOptionInt224.Some(b) : LibOptionInt224.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, int224 a, int224 b) public {
        OptionInt224 aMaybe = aIsSome ? LibOptionInt224.Some(a) : LibOptionInt224.None();
        OptionInt224 bMaybe = bIsSome ? LibOptionInt224.Some(b) : LibOptionInt224.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, int224 a, int224 b) public {
        OptionInt224 aMaybe = aIsSome ? LibOptionInt224.Some(a) : LibOptionInt224.None();
        OptionInt224 bMaybe = bIsSome ? LibOptionInt224.Some(b) : LibOptionInt224.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, int224 a, int224 b) public {
        OptionInt224 aMaybe = aIsSome ? LibOptionInt224.Some(a) : LibOptionInt224.None();
        OptionInt224 bMaybe = bIsSome ? LibOptionInt224.Some(b) : LibOptionInt224.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, int224 a, int224 b) public {
        OptionInt224 aMaybe = aIsSome ? LibOptionInt224.Some(a) : LibOptionInt224.None();
        OptionInt224 bMaybe = bIsSome ? LibOptionInt224.Some(b) : LibOptionInt224.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(int224 a) public {
        OptionInt224 aMaybe = LibOptionInt224.None();
        OptionInt224 bMaybe = LibOptionInt224.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(int224 a) public {
        OptionInt224 aMaybe = LibOptionInt224.None();
        OptionInt224 bMaybe = LibOptionInt224.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(int224 a) public {
        OptionInt224 aMaybe = LibOptionInt224.None();
        OptionInt224 bMaybe = LibOptionInt224.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(int224 a, string calldata message) public {
        OptionInt224 aMaybe = LibOptionInt224.None();
        OptionInt224 bMaybe = LibOptionInt224.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(int224 a) public {
        OptionInt224 aMaybe = LibOptionInt224.None();
        OptionInt224 bMaybe = LibOptionInt224.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(int224 a, int224 b) public {
        OptionInt224 aMaybe = LibOptionInt224.None();
        OptionInt224 bMaybe = LibOptionInt224.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(int224 a) public {
        OptionInt224 aMaybe = LibOptionInt224.None();
        OptionInt224 bMaybe = LibOptionInt224.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(int224 a) public {
        OptionInt224 aMaybe = LibOptionInt224.None();
        OptionInt224 bMaybe = LibOptionInt224.Some(a);

        assertEq(aMaybe.map(other) == LibOptionInt224.None(), true);
        assertEq(bMaybe.map(other) == LibOptionInt224.Some(other(a)), true);
    }
}
