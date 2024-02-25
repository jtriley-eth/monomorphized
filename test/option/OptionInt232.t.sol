// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import { OptionInt232, LibOptionInt232 } from "../../src/option/OptionInt232.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

int232 constant A = int232(1);
int232 constant B = int232(2);

function initial() pure returns (int232 res) {
    return A;
}

function other(int232 self) pure returns (int232) {
    return self == A ? B : A;
}

contract OptionInt232Test is Test {
    using LibOptionInt232 for *;

    function testEq() public {
        OptionInt232 a = LibOptionInt232.None();
        OptionInt232 b = LibOptionInt232.None();
        OptionInt232 c = LibOptionInt232.Some(A);
        OptionInt232 d = LibOptionInt232.Some(A);
        OptionInt232 e = LibOptionInt232.Some(B);
        OptionInt232 f = LibOptionInt232.Some(B);

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
        OptionInt232 a = LibOptionInt232.None();
        OptionInt232 b = LibOptionInt232.None();
        OptionInt232 c = LibOptionInt232.Some(A);
        OptionInt232 d = LibOptionInt232.Some(A);
        OptionInt232 e = LibOptionInt232.Some(B);
        OptionInt232 f = LibOptionInt232.Some(B);

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
        OptionInt232 a = LibOptionInt232.None();
        OptionInt232 b = LibOptionInt232.None();
        OptionInt232 c = LibOptionInt232.Some(A);
        OptionInt232 d = LibOptionInt232.Some(A);
        OptionInt232 e = LibOptionInt232.Some(B);
        OptionInt232 f = LibOptionInt232.Some(B);

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
        OptionInt232 a = LibOptionInt232.None();
        OptionInt232 b = LibOptionInt232.None();
        OptionInt232 c = LibOptionInt232.Some(A);
        OptionInt232 d = LibOptionInt232.Some(A);
        OptionInt232 e = LibOptionInt232.Some(B);
        OptionInt232 f = LibOptionInt232.Some(B);

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
        OptionInt232 a = LibOptionInt232.None();
        OptionInt232 b = LibOptionInt232.None();
        OptionInt232 c = LibOptionInt232.Some(A);
        OptionInt232 d = LibOptionInt232.Some(A);
        OptionInt232 e = LibOptionInt232.Some(B);
        OptionInt232 f = LibOptionInt232.Some(B);

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
        OptionInt232 a = LibOptionInt232.None();
        OptionInt232 b = LibOptionInt232.None();
        OptionInt232 c = LibOptionInt232.Some(A);
        OptionInt232 d = LibOptionInt232.Some(A);
        OptionInt232 e = LibOptionInt232.Some(B);
        OptionInt232 f = LibOptionInt232.Some(B);

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
        OptionInt232 a = LibOptionInt232.None();
        OptionInt232 b = LibOptionInt232.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionInt232 a = LibOptionInt232.None();
        OptionInt232 b = LibOptionInt232.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionInt232 a = LibOptionInt232.None();
        OptionInt232 b = LibOptionInt232.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionInt232 a = LibOptionInt232.None();
        OptionInt232 b = LibOptionInt232.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionInt232 a = LibOptionInt232.None();
        OptionInt232 b = LibOptionInt232.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionInt232 a = LibOptionInt232.None();
        OptionInt232 b = LibOptionInt232.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionInt232 a = LibOptionInt232.None();
        OptionInt232 b = LibOptionInt232.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionInt232 a = LibOptionInt232.None();
        OptionInt232 b = LibOptionInt232.Some(A);

        assertEq(a.map(other) == LibOptionInt232.None(), true);
        assertEq(b.map(other) == LibOptionInt232.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, int232 a, int232 b) public {
        OptionInt232 aMaybe = aIsSome ? LibOptionInt232.Some(a) : LibOptionInt232.None();
        OptionInt232 bMaybe = bIsSome ? LibOptionInt232.Some(b) : LibOptionInt232.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, int232 a, int232 b) public {
        OptionInt232 aMaybe = aIsSome ? LibOptionInt232.Some(a) : LibOptionInt232.None();
        OptionInt232 bMaybe = bIsSome ? LibOptionInt232.Some(b) : LibOptionInt232.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, int232 a, int232 b) public {
        OptionInt232 aMaybe = aIsSome ? LibOptionInt232.Some(a) : LibOptionInt232.None();
        OptionInt232 bMaybe = bIsSome ? LibOptionInt232.Some(b) : LibOptionInt232.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, int232 a, int232 b) public {
        OptionInt232 aMaybe = aIsSome ? LibOptionInt232.Some(a) : LibOptionInt232.None();
        OptionInt232 bMaybe = bIsSome ? LibOptionInt232.Some(b) : LibOptionInt232.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, int232 a, int232 b) public {
        OptionInt232 aMaybe = aIsSome ? LibOptionInt232.Some(a) : LibOptionInt232.None();
        OptionInt232 bMaybe = bIsSome ? LibOptionInt232.Some(b) : LibOptionInt232.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, int232 a, int232 b) public {
        OptionInt232 aMaybe = aIsSome ? LibOptionInt232.Some(a) : LibOptionInt232.None();
        OptionInt232 bMaybe = bIsSome ? LibOptionInt232.Some(b) : LibOptionInt232.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(int232 a) public {
        OptionInt232 aMaybe = LibOptionInt232.None();
        OptionInt232 bMaybe = LibOptionInt232.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(int232 a) public {
        OptionInt232 aMaybe = LibOptionInt232.None();
        OptionInt232 bMaybe = LibOptionInt232.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(int232 a) public {
        OptionInt232 aMaybe = LibOptionInt232.None();
        OptionInt232 bMaybe = LibOptionInt232.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(int232 a, string calldata message) public {
        OptionInt232 aMaybe = LibOptionInt232.None();
        OptionInt232 bMaybe = LibOptionInt232.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(int232 a) public {
        OptionInt232 aMaybe = LibOptionInt232.None();
        OptionInt232 bMaybe = LibOptionInt232.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(int232 a, int232 b) public {
        OptionInt232 aMaybe = LibOptionInt232.None();
        OptionInt232 bMaybe = LibOptionInt232.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(int232 a) public {
        OptionInt232 aMaybe = LibOptionInt232.None();
        OptionInt232 bMaybe = LibOptionInt232.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(int232 a) public {
        OptionInt232 aMaybe = LibOptionInt232.None();
        OptionInt232 bMaybe = LibOptionInt232.Some(a);

        assertEq(aMaybe.map(other) == LibOptionInt232.None(), true);
        assertEq(bMaybe.map(other) == LibOptionInt232.Some(other(a)), true);
    }
}
