// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { OptionInt216, LibOptionInt216 } from "../../src/option/OptionInt216.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

int216 constant A = int216(1);
int216 constant B = int216(2);

function initial() pure returns (int216 res) {
    return A;
}

function other(int216 self) pure returns (int216) {
    return self == A ? B : A;
}

contract OptionInt216Test is Test {
    using LibOptionInt216 for *;

    function testEq() public {
        OptionInt216 a = LibOptionInt216.None();
        OptionInt216 b = LibOptionInt216.None();
        OptionInt216 c = LibOptionInt216.Some(A);
        OptionInt216 d = LibOptionInt216.Some(A);
        OptionInt216 e = LibOptionInt216.Some(B);
        OptionInt216 f = LibOptionInt216.Some(B);

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
        OptionInt216 a = LibOptionInt216.None();
        OptionInt216 b = LibOptionInt216.None();
        OptionInt216 c = LibOptionInt216.Some(A);
        OptionInt216 d = LibOptionInt216.Some(A);
        OptionInt216 e = LibOptionInt216.Some(B);
        OptionInt216 f = LibOptionInt216.Some(B);

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
        OptionInt216 a = LibOptionInt216.None();
        OptionInt216 b = LibOptionInt216.None();
        OptionInt216 c = LibOptionInt216.Some(A);
        OptionInt216 d = LibOptionInt216.Some(A);
        OptionInt216 e = LibOptionInt216.Some(B);
        OptionInt216 f = LibOptionInt216.Some(B);

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
        OptionInt216 a = LibOptionInt216.None();
        OptionInt216 b = LibOptionInt216.None();
        OptionInt216 c = LibOptionInt216.Some(A);
        OptionInt216 d = LibOptionInt216.Some(A);
        OptionInt216 e = LibOptionInt216.Some(B);
        OptionInt216 f = LibOptionInt216.Some(B);

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
        OptionInt216 a = LibOptionInt216.None();
        OptionInt216 b = LibOptionInt216.None();
        OptionInt216 c = LibOptionInt216.Some(A);
        OptionInt216 d = LibOptionInt216.Some(A);
        OptionInt216 e = LibOptionInt216.Some(B);
        OptionInt216 f = LibOptionInt216.Some(B);

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
        OptionInt216 a = LibOptionInt216.None();
        OptionInt216 b = LibOptionInt216.None();
        OptionInt216 c = LibOptionInt216.Some(A);
        OptionInt216 d = LibOptionInt216.Some(A);
        OptionInt216 e = LibOptionInt216.Some(B);
        OptionInt216 f = LibOptionInt216.Some(B);

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
        OptionInt216 a = LibOptionInt216.None();
        OptionInt216 b = LibOptionInt216.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionInt216 a = LibOptionInt216.None();
        OptionInt216 b = LibOptionInt216.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionInt216 a = LibOptionInt216.None();
        OptionInt216 b = LibOptionInt216.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionInt216 a = LibOptionInt216.None();
        OptionInt216 b = LibOptionInt216.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionInt216 a = LibOptionInt216.None();
        OptionInt216 b = LibOptionInt216.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionInt216 a = LibOptionInt216.None();
        OptionInt216 b = LibOptionInt216.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionInt216 a = LibOptionInt216.None();
        OptionInt216 b = LibOptionInt216.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionInt216 a = LibOptionInt216.None();
        OptionInt216 b = LibOptionInt216.Some(A);

        assertEq(a.map(other) == LibOptionInt216.None(), true);
        assertEq(b.map(other) == LibOptionInt216.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, int216 a, int216 b) public {
        OptionInt216 aMaybe = aIsSome ? LibOptionInt216.Some(a) : LibOptionInt216.None();
        OptionInt216 bMaybe = bIsSome ? LibOptionInt216.Some(b) : LibOptionInt216.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, int216 a, int216 b) public {
        OptionInt216 aMaybe = aIsSome ? LibOptionInt216.Some(a) : LibOptionInt216.None();
        OptionInt216 bMaybe = bIsSome ? LibOptionInt216.Some(b) : LibOptionInt216.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, int216 a, int216 b) public {
        OptionInt216 aMaybe = aIsSome ? LibOptionInt216.Some(a) : LibOptionInt216.None();
        OptionInt216 bMaybe = bIsSome ? LibOptionInt216.Some(b) : LibOptionInt216.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, int216 a, int216 b) public {
        OptionInt216 aMaybe = aIsSome ? LibOptionInt216.Some(a) : LibOptionInt216.None();
        OptionInt216 bMaybe = bIsSome ? LibOptionInt216.Some(b) : LibOptionInt216.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, int216 a, int216 b) public {
        OptionInt216 aMaybe = aIsSome ? LibOptionInt216.Some(a) : LibOptionInt216.None();
        OptionInt216 bMaybe = bIsSome ? LibOptionInt216.Some(b) : LibOptionInt216.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, int216 a, int216 b) public {
        OptionInt216 aMaybe = aIsSome ? LibOptionInt216.Some(a) : LibOptionInt216.None();
        OptionInt216 bMaybe = bIsSome ? LibOptionInt216.Some(b) : LibOptionInt216.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(int216 a) public {
        OptionInt216 aMaybe = LibOptionInt216.None();
        OptionInt216 bMaybe = LibOptionInt216.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(int216 a) public {
        OptionInt216 aMaybe = LibOptionInt216.None();
        OptionInt216 bMaybe = LibOptionInt216.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(int216 a) public {
        OptionInt216 aMaybe = LibOptionInt216.None();
        OptionInt216 bMaybe = LibOptionInt216.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(int216 a, string calldata message) public {
        OptionInt216 aMaybe = LibOptionInt216.None();
        OptionInt216 bMaybe = LibOptionInt216.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(int216 a) public {
        OptionInt216 aMaybe = LibOptionInt216.None();
        OptionInt216 bMaybe = LibOptionInt216.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(int216 a, int216 b) public {
        OptionInt216 aMaybe = LibOptionInt216.None();
        OptionInt216 bMaybe = LibOptionInt216.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(int216 a) public {
        OptionInt216 aMaybe = LibOptionInt216.None();
        OptionInt216 bMaybe = LibOptionInt216.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(int216 a) public {
        OptionInt216 aMaybe = LibOptionInt216.None();
        OptionInt216 bMaybe = LibOptionInt216.Some(a);

        assertEq(aMaybe.map(other) == LibOptionInt216.None(), true);
        assertEq(bMaybe.map(other) == LibOptionInt216.Some(other(a)), true);
    }
}
