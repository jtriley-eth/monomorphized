// SPDX-License-Identifier: AGPL-3.0-only OR MIT
pragma solidity 0.8.24;

import { OptionUint192, LibOptionUint192 } from "../../src/option/OptionUint192.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

uint192 constant A = uint192(1);
uint192 constant B = uint192(2);

function initial() pure returns (uint192 res) {
    return A;
}

function other(uint192 self) pure returns (uint192) {
    return self == A ? B : A;
}

contract OptionUint192Test is Test {
    using LibOptionUint192 for *;

    function testEq() public {
        OptionUint192 a = LibOptionUint192.None();
        OptionUint192 b = LibOptionUint192.None();
        OptionUint192 c = LibOptionUint192.Some(A);
        OptionUint192 d = LibOptionUint192.Some(A);
        OptionUint192 e = LibOptionUint192.Some(B);
        OptionUint192 f = LibOptionUint192.Some(B);

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
        OptionUint192 a = LibOptionUint192.None();
        OptionUint192 b = LibOptionUint192.None();
        OptionUint192 c = LibOptionUint192.Some(A);
        OptionUint192 d = LibOptionUint192.Some(A);
        OptionUint192 e = LibOptionUint192.Some(B);
        OptionUint192 f = LibOptionUint192.Some(B);

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
        OptionUint192 a = LibOptionUint192.None();
        OptionUint192 b = LibOptionUint192.None();
        OptionUint192 c = LibOptionUint192.Some(A);
        OptionUint192 d = LibOptionUint192.Some(A);
        OptionUint192 e = LibOptionUint192.Some(B);
        OptionUint192 f = LibOptionUint192.Some(B);

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
        OptionUint192 a = LibOptionUint192.None();
        OptionUint192 b = LibOptionUint192.None();
        OptionUint192 c = LibOptionUint192.Some(A);
        OptionUint192 d = LibOptionUint192.Some(A);
        OptionUint192 e = LibOptionUint192.Some(B);
        OptionUint192 f = LibOptionUint192.Some(B);

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
        OptionUint192 a = LibOptionUint192.None();
        OptionUint192 b = LibOptionUint192.None();
        OptionUint192 c = LibOptionUint192.Some(A);
        OptionUint192 d = LibOptionUint192.Some(A);
        OptionUint192 e = LibOptionUint192.Some(B);
        OptionUint192 f = LibOptionUint192.Some(B);

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
        OptionUint192 a = LibOptionUint192.None();
        OptionUint192 b = LibOptionUint192.None();
        OptionUint192 c = LibOptionUint192.Some(A);
        OptionUint192 d = LibOptionUint192.Some(A);
        OptionUint192 e = LibOptionUint192.Some(B);
        OptionUint192 f = LibOptionUint192.Some(B);

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
        OptionUint192 a = LibOptionUint192.None();
        OptionUint192 b = LibOptionUint192.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionUint192 a = LibOptionUint192.None();
        OptionUint192 b = LibOptionUint192.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionUint192 a = LibOptionUint192.None();
        OptionUint192 b = LibOptionUint192.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionUint192 a = LibOptionUint192.None();
        OptionUint192 b = LibOptionUint192.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionUint192 a = LibOptionUint192.None();
        OptionUint192 b = LibOptionUint192.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionUint192 a = LibOptionUint192.None();
        OptionUint192 b = LibOptionUint192.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionUint192 a = LibOptionUint192.None();
        OptionUint192 b = LibOptionUint192.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionUint192 a = LibOptionUint192.None();
        OptionUint192 b = LibOptionUint192.Some(A);

        assertEq(a.map(other) == LibOptionUint192.None(), true);
        assertEq(b.map(other) == LibOptionUint192.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, uint192 a, uint192 b) public {
        OptionUint192 aMaybe = aIsSome ? LibOptionUint192.Some(a) : LibOptionUint192.None();
        OptionUint192 bMaybe = bIsSome ? LibOptionUint192.Some(b) : LibOptionUint192.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, uint192 a, uint192 b) public {
        OptionUint192 aMaybe = aIsSome ? LibOptionUint192.Some(a) : LibOptionUint192.None();
        OptionUint192 bMaybe = bIsSome ? LibOptionUint192.Some(b) : LibOptionUint192.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, uint192 a, uint192 b) public {
        OptionUint192 aMaybe = aIsSome ? LibOptionUint192.Some(a) : LibOptionUint192.None();
        OptionUint192 bMaybe = bIsSome ? LibOptionUint192.Some(b) : LibOptionUint192.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, uint192 a, uint192 b) public {
        OptionUint192 aMaybe = aIsSome ? LibOptionUint192.Some(a) : LibOptionUint192.None();
        OptionUint192 bMaybe = bIsSome ? LibOptionUint192.Some(b) : LibOptionUint192.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, uint192 a, uint192 b) public {
        OptionUint192 aMaybe = aIsSome ? LibOptionUint192.Some(a) : LibOptionUint192.None();
        OptionUint192 bMaybe = bIsSome ? LibOptionUint192.Some(b) : LibOptionUint192.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, uint192 a, uint192 b) public {
        OptionUint192 aMaybe = aIsSome ? LibOptionUint192.Some(a) : LibOptionUint192.None();
        OptionUint192 bMaybe = bIsSome ? LibOptionUint192.Some(b) : LibOptionUint192.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(uint192 a) public {
        OptionUint192 aMaybe = LibOptionUint192.None();
        OptionUint192 bMaybe = LibOptionUint192.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(uint192 a) public {
        OptionUint192 aMaybe = LibOptionUint192.None();
        OptionUint192 bMaybe = LibOptionUint192.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(uint192 a) public {
        OptionUint192 aMaybe = LibOptionUint192.None();
        OptionUint192 bMaybe = LibOptionUint192.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(uint192 a, string calldata message) public {
        OptionUint192 aMaybe = LibOptionUint192.None();
        OptionUint192 bMaybe = LibOptionUint192.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(uint192 a) public {
        OptionUint192 aMaybe = LibOptionUint192.None();
        OptionUint192 bMaybe = LibOptionUint192.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(uint192 a, uint192 b) public {
        OptionUint192 aMaybe = LibOptionUint192.None();
        OptionUint192 bMaybe = LibOptionUint192.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(uint192 a) public {
        OptionUint192 aMaybe = LibOptionUint192.None();
        OptionUint192 bMaybe = LibOptionUint192.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(uint192 a) public {
        OptionUint192 aMaybe = LibOptionUint192.None();
        OptionUint192 bMaybe = LibOptionUint192.Some(a);

        assertEq(aMaybe.map(other) == LibOptionUint192.None(), true);
        assertEq(bMaybe.map(other) == LibOptionUint192.Some(other(a)), true);
    }
}
