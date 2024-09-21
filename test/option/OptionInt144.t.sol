// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { OptionInt144, LibOptionInt144 } from "../../src/option/OptionInt144.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

int144 constant A = int144(1);
int144 constant B = int144(2);

function initial() pure returns (int144 res) {
    return A;
}

function other(int144 self) pure returns (int144) {
    return self == A ? B : A;
}

contract OptionInt144Test is Test {
    using LibOptionInt144 for *;

    function testEq() public {
        OptionInt144 a = LibOptionInt144.None();
        OptionInt144 b = LibOptionInt144.None();
        OptionInt144 c = LibOptionInt144.Some(A);
        OptionInt144 d = LibOptionInt144.Some(A);
        OptionInt144 e = LibOptionInt144.Some(B);
        OptionInt144 f = LibOptionInt144.Some(B);

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
        OptionInt144 a = LibOptionInt144.None();
        OptionInt144 b = LibOptionInt144.None();
        OptionInt144 c = LibOptionInt144.Some(A);
        OptionInt144 d = LibOptionInt144.Some(A);
        OptionInt144 e = LibOptionInt144.Some(B);
        OptionInt144 f = LibOptionInt144.Some(B);

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
        OptionInt144 a = LibOptionInt144.None();
        OptionInt144 b = LibOptionInt144.None();
        OptionInt144 c = LibOptionInt144.Some(A);
        OptionInt144 d = LibOptionInt144.Some(A);
        OptionInt144 e = LibOptionInt144.Some(B);
        OptionInt144 f = LibOptionInt144.Some(B);

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
        OptionInt144 a = LibOptionInt144.None();
        OptionInt144 b = LibOptionInt144.None();
        OptionInt144 c = LibOptionInt144.Some(A);
        OptionInt144 d = LibOptionInt144.Some(A);
        OptionInt144 e = LibOptionInt144.Some(B);
        OptionInt144 f = LibOptionInt144.Some(B);

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
        OptionInt144 a = LibOptionInt144.None();
        OptionInt144 b = LibOptionInt144.None();
        OptionInt144 c = LibOptionInt144.Some(A);
        OptionInt144 d = LibOptionInt144.Some(A);
        OptionInt144 e = LibOptionInt144.Some(B);
        OptionInt144 f = LibOptionInt144.Some(B);

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
        OptionInt144 a = LibOptionInt144.None();
        OptionInt144 b = LibOptionInt144.None();
        OptionInt144 c = LibOptionInt144.Some(A);
        OptionInt144 d = LibOptionInt144.Some(A);
        OptionInt144 e = LibOptionInt144.Some(B);
        OptionInt144 f = LibOptionInt144.Some(B);

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
        OptionInt144 a = LibOptionInt144.None();
        OptionInt144 b = LibOptionInt144.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionInt144 a = LibOptionInt144.None();
        OptionInt144 b = LibOptionInt144.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionInt144 a = LibOptionInt144.None();
        OptionInt144 b = LibOptionInt144.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionInt144 a = LibOptionInt144.None();
        OptionInt144 b = LibOptionInt144.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionInt144 a = LibOptionInt144.None();
        OptionInt144 b = LibOptionInt144.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionInt144 a = LibOptionInt144.None();
        OptionInt144 b = LibOptionInt144.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionInt144 a = LibOptionInt144.None();
        OptionInt144 b = LibOptionInt144.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionInt144 a = LibOptionInt144.None();
        OptionInt144 b = LibOptionInt144.Some(A);

        assertEq(a.map(other) == LibOptionInt144.None(), true);
        assertEq(b.map(other) == LibOptionInt144.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, int144 a, int144 b) public {
        OptionInt144 aMaybe = aIsSome ? LibOptionInt144.Some(a) : LibOptionInt144.None();
        OptionInt144 bMaybe = bIsSome ? LibOptionInt144.Some(b) : LibOptionInt144.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, int144 a, int144 b) public {
        OptionInt144 aMaybe = aIsSome ? LibOptionInt144.Some(a) : LibOptionInt144.None();
        OptionInt144 bMaybe = bIsSome ? LibOptionInt144.Some(b) : LibOptionInt144.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, int144 a, int144 b) public {
        OptionInt144 aMaybe = aIsSome ? LibOptionInt144.Some(a) : LibOptionInt144.None();
        OptionInt144 bMaybe = bIsSome ? LibOptionInt144.Some(b) : LibOptionInt144.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, int144 a, int144 b) public {
        OptionInt144 aMaybe = aIsSome ? LibOptionInt144.Some(a) : LibOptionInt144.None();
        OptionInt144 bMaybe = bIsSome ? LibOptionInt144.Some(b) : LibOptionInt144.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, int144 a, int144 b) public {
        OptionInt144 aMaybe = aIsSome ? LibOptionInt144.Some(a) : LibOptionInt144.None();
        OptionInt144 bMaybe = bIsSome ? LibOptionInt144.Some(b) : LibOptionInt144.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, int144 a, int144 b) public {
        OptionInt144 aMaybe = aIsSome ? LibOptionInt144.Some(a) : LibOptionInt144.None();
        OptionInt144 bMaybe = bIsSome ? LibOptionInt144.Some(b) : LibOptionInt144.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(int144 a) public {
        OptionInt144 aMaybe = LibOptionInt144.None();
        OptionInt144 bMaybe = LibOptionInt144.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(int144 a) public {
        OptionInt144 aMaybe = LibOptionInt144.None();
        OptionInt144 bMaybe = LibOptionInt144.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(int144 a) public {
        OptionInt144 aMaybe = LibOptionInt144.None();
        OptionInt144 bMaybe = LibOptionInt144.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(int144 a, string calldata message) public {
        OptionInt144 aMaybe = LibOptionInt144.None();
        OptionInt144 bMaybe = LibOptionInt144.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(int144 a) public {
        OptionInt144 aMaybe = LibOptionInt144.None();
        OptionInt144 bMaybe = LibOptionInt144.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(int144 a, int144 b) public {
        OptionInt144 aMaybe = LibOptionInt144.None();
        OptionInt144 bMaybe = LibOptionInt144.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(int144 a) public {
        OptionInt144 aMaybe = LibOptionInt144.None();
        OptionInt144 bMaybe = LibOptionInt144.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(int144 a) public {
        OptionInt144 aMaybe = LibOptionInt144.None();
        OptionInt144 bMaybe = LibOptionInt144.Some(a);

        assertEq(aMaybe.map(other) == LibOptionInt144.None(), true);
        assertEq(bMaybe.map(other) == LibOptionInt144.Some(other(a)), true);
    }
}
