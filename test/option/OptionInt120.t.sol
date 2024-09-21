// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { OptionInt120, LibOptionInt120 } from "../../src/option/OptionInt120.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

int120 constant A = int120(1);
int120 constant B = int120(2);

function initial() pure returns (int120 res) {
    return A;
}

function other(int120 self) pure returns (int120) {
    return self == A ? B : A;
}

contract OptionInt120Test is Test {
    using LibOptionInt120 for *;

    function testEq() public {
        OptionInt120 a = LibOptionInt120.None();
        OptionInt120 b = LibOptionInt120.None();
        OptionInt120 c = LibOptionInt120.Some(A);
        OptionInt120 d = LibOptionInt120.Some(A);
        OptionInt120 e = LibOptionInt120.Some(B);
        OptionInt120 f = LibOptionInt120.Some(B);

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
        OptionInt120 a = LibOptionInt120.None();
        OptionInt120 b = LibOptionInt120.None();
        OptionInt120 c = LibOptionInt120.Some(A);
        OptionInt120 d = LibOptionInt120.Some(A);
        OptionInt120 e = LibOptionInt120.Some(B);
        OptionInt120 f = LibOptionInt120.Some(B);

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
        OptionInt120 a = LibOptionInt120.None();
        OptionInt120 b = LibOptionInt120.None();
        OptionInt120 c = LibOptionInt120.Some(A);
        OptionInt120 d = LibOptionInt120.Some(A);
        OptionInt120 e = LibOptionInt120.Some(B);
        OptionInt120 f = LibOptionInt120.Some(B);

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
        OptionInt120 a = LibOptionInt120.None();
        OptionInt120 b = LibOptionInt120.None();
        OptionInt120 c = LibOptionInt120.Some(A);
        OptionInt120 d = LibOptionInt120.Some(A);
        OptionInt120 e = LibOptionInt120.Some(B);
        OptionInt120 f = LibOptionInt120.Some(B);

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
        OptionInt120 a = LibOptionInt120.None();
        OptionInt120 b = LibOptionInt120.None();
        OptionInt120 c = LibOptionInt120.Some(A);
        OptionInt120 d = LibOptionInt120.Some(A);
        OptionInt120 e = LibOptionInt120.Some(B);
        OptionInt120 f = LibOptionInt120.Some(B);

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
        OptionInt120 a = LibOptionInt120.None();
        OptionInt120 b = LibOptionInt120.None();
        OptionInt120 c = LibOptionInt120.Some(A);
        OptionInt120 d = LibOptionInt120.Some(A);
        OptionInt120 e = LibOptionInt120.Some(B);
        OptionInt120 f = LibOptionInt120.Some(B);

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
        OptionInt120 a = LibOptionInt120.None();
        OptionInt120 b = LibOptionInt120.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionInt120 a = LibOptionInt120.None();
        OptionInt120 b = LibOptionInt120.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionInt120 a = LibOptionInt120.None();
        OptionInt120 b = LibOptionInt120.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionInt120 a = LibOptionInt120.None();
        OptionInt120 b = LibOptionInt120.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionInt120 a = LibOptionInt120.None();
        OptionInt120 b = LibOptionInt120.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionInt120 a = LibOptionInt120.None();
        OptionInt120 b = LibOptionInt120.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionInt120 a = LibOptionInt120.None();
        OptionInt120 b = LibOptionInt120.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionInt120 a = LibOptionInt120.None();
        OptionInt120 b = LibOptionInt120.Some(A);

        assertEq(a.map(other) == LibOptionInt120.None(), true);
        assertEq(b.map(other) == LibOptionInt120.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, int120 a, int120 b) public {
        OptionInt120 aMaybe = aIsSome ? LibOptionInt120.Some(a) : LibOptionInt120.None();
        OptionInt120 bMaybe = bIsSome ? LibOptionInt120.Some(b) : LibOptionInt120.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, int120 a, int120 b) public {
        OptionInt120 aMaybe = aIsSome ? LibOptionInt120.Some(a) : LibOptionInt120.None();
        OptionInt120 bMaybe = bIsSome ? LibOptionInt120.Some(b) : LibOptionInt120.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, int120 a, int120 b) public {
        OptionInt120 aMaybe = aIsSome ? LibOptionInt120.Some(a) : LibOptionInt120.None();
        OptionInt120 bMaybe = bIsSome ? LibOptionInt120.Some(b) : LibOptionInt120.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, int120 a, int120 b) public {
        OptionInt120 aMaybe = aIsSome ? LibOptionInt120.Some(a) : LibOptionInt120.None();
        OptionInt120 bMaybe = bIsSome ? LibOptionInt120.Some(b) : LibOptionInt120.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, int120 a, int120 b) public {
        OptionInt120 aMaybe = aIsSome ? LibOptionInt120.Some(a) : LibOptionInt120.None();
        OptionInt120 bMaybe = bIsSome ? LibOptionInt120.Some(b) : LibOptionInt120.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, int120 a, int120 b) public {
        OptionInt120 aMaybe = aIsSome ? LibOptionInt120.Some(a) : LibOptionInt120.None();
        OptionInt120 bMaybe = bIsSome ? LibOptionInt120.Some(b) : LibOptionInt120.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(int120 a) public {
        OptionInt120 aMaybe = LibOptionInt120.None();
        OptionInt120 bMaybe = LibOptionInt120.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(int120 a) public {
        OptionInt120 aMaybe = LibOptionInt120.None();
        OptionInt120 bMaybe = LibOptionInt120.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(int120 a) public {
        OptionInt120 aMaybe = LibOptionInt120.None();
        OptionInt120 bMaybe = LibOptionInt120.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(int120 a, string calldata message) public {
        OptionInt120 aMaybe = LibOptionInt120.None();
        OptionInt120 bMaybe = LibOptionInt120.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(int120 a) public {
        OptionInt120 aMaybe = LibOptionInt120.None();
        OptionInt120 bMaybe = LibOptionInt120.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(int120 a, int120 b) public {
        OptionInt120 aMaybe = LibOptionInt120.None();
        OptionInt120 bMaybe = LibOptionInt120.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(int120 a) public {
        OptionInt120 aMaybe = LibOptionInt120.None();
        OptionInt120 bMaybe = LibOptionInt120.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(int120 a) public {
        OptionInt120 aMaybe = LibOptionInt120.None();
        OptionInt120 bMaybe = LibOptionInt120.Some(a);

        assertEq(aMaybe.map(other) == LibOptionInt120.None(), true);
        assertEq(bMaybe.map(other) == LibOptionInt120.Some(other(a)), true);
    }
}
