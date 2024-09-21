// SPDX-License-Identifier: AGPL-3.0-only OR MIT
pragma solidity 0.8.24;

import { OptionUint184, LibOptionUint184 } from "../../src/option/OptionUint184.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

uint184 constant A = uint184(1);
uint184 constant B = uint184(2);

function initial() pure returns (uint184 res) {
    return A;
}

function other(uint184 self) pure returns (uint184) {
    return self == A ? B : A;
}

contract OptionUint184Test is Test {
    using LibOptionUint184 for *;

    function testEq() public {
        OptionUint184 a = LibOptionUint184.None();
        OptionUint184 b = LibOptionUint184.None();
        OptionUint184 c = LibOptionUint184.Some(A);
        OptionUint184 d = LibOptionUint184.Some(A);
        OptionUint184 e = LibOptionUint184.Some(B);
        OptionUint184 f = LibOptionUint184.Some(B);

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
        OptionUint184 a = LibOptionUint184.None();
        OptionUint184 b = LibOptionUint184.None();
        OptionUint184 c = LibOptionUint184.Some(A);
        OptionUint184 d = LibOptionUint184.Some(A);
        OptionUint184 e = LibOptionUint184.Some(B);
        OptionUint184 f = LibOptionUint184.Some(B);

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
        OptionUint184 a = LibOptionUint184.None();
        OptionUint184 b = LibOptionUint184.None();
        OptionUint184 c = LibOptionUint184.Some(A);
        OptionUint184 d = LibOptionUint184.Some(A);
        OptionUint184 e = LibOptionUint184.Some(B);
        OptionUint184 f = LibOptionUint184.Some(B);

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
        OptionUint184 a = LibOptionUint184.None();
        OptionUint184 b = LibOptionUint184.None();
        OptionUint184 c = LibOptionUint184.Some(A);
        OptionUint184 d = LibOptionUint184.Some(A);
        OptionUint184 e = LibOptionUint184.Some(B);
        OptionUint184 f = LibOptionUint184.Some(B);

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
        OptionUint184 a = LibOptionUint184.None();
        OptionUint184 b = LibOptionUint184.None();
        OptionUint184 c = LibOptionUint184.Some(A);
        OptionUint184 d = LibOptionUint184.Some(A);
        OptionUint184 e = LibOptionUint184.Some(B);
        OptionUint184 f = LibOptionUint184.Some(B);

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
        OptionUint184 a = LibOptionUint184.None();
        OptionUint184 b = LibOptionUint184.None();
        OptionUint184 c = LibOptionUint184.Some(A);
        OptionUint184 d = LibOptionUint184.Some(A);
        OptionUint184 e = LibOptionUint184.Some(B);
        OptionUint184 f = LibOptionUint184.Some(B);

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
        OptionUint184 a = LibOptionUint184.None();
        OptionUint184 b = LibOptionUint184.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionUint184 a = LibOptionUint184.None();
        OptionUint184 b = LibOptionUint184.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionUint184 a = LibOptionUint184.None();
        OptionUint184 b = LibOptionUint184.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionUint184 a = LibOptionUint184.None();
        OptionUint184 b = LibOptionUint184.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionUint184 a = LibOptionUint184.None();
        OptionUint184 b = LibOptionUint184.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionUint184 a = LibOptionUint184.None();
        OptionUint184 b = LibOptionUint184.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionUint184 a = LibOptionUint184.None();
        OptionUint184 b = LibOptionUint184.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionUint184 a = LibOptionUint184.None();
        OptionUint184 b = LibOptionUint184.Some(A);

        assertEq(a.map(other) == LibOptionUint184.None(), true);
        assertEq(b.map(other) == LibOptionUint184.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, uint184 a, uint184 b) public {
        OptionUint184 aMaybe = aIsSome ? LibOptionUint184.Some(a) : LibOptionUint184.None();
        OptionUint184 bMaybe = bIsSome ? LibOptionUint184.Some(b) : LibOptionUint184.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, uint184 a, uint184 b) public {
        OptionUint184 aMaybe = aIsSome ? LibOptionUint184.Some(a) : LibOptionUint184.None();
        OptionUint184 bMaybe = bIsSome ? LibOptionUint184.Some(b) : LibOptionUint184.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, uint184 a, uint184 b) public {
        OptionUint184 aMaybe = aIsSome ? LibOptionUint184.Some(a) : LibOptionUint184.None();
        OptionUint184 bMaybe = bIsSome ? LibOptionUint184.Some(b) : LibOptionUint184.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, uint184 a, uint184 b) public {
        OptionUint184 aMaybe = aIsSome ? LibOptionUint184.Some(a) : LibOptionUint184.None();
        OptionUint184 bMaybe = bIsSome ? LibOptionUint184.Some(b) : LibOptionUint184.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, uint184 a, uint184 b) public {
        OptionUint184 aMaybe = aIsSome ? LibOptionUint184.Some(a) : LibOptionUint184.None();
        OptionUint184 bMaybe = bIsSome ? LibOptionUint184.Some(b) : LibOptionUint184.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, uint184 a, uint184 b) public {
        OptionUint184 aMaybe = aIsSome ? LibOptionUint184.Some(a) : LibOptionUint184.None();
        OptionUint184 bMaybe = bIsSome ? LibOptionUint184.Some(b) : LibOptionUint184.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(uint184 a) public {
        OptionUint184 aMaybe = LibOptionUint184.None();
        OptionUint184 bMaybe = LibOptionUint184.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(uint184 a) public {
        OptionUint184 aMaybe = LibOptionUint184.None();
        OptionUint184 bMaybe = LibOptionUint184.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(uint184 a) public {
        OptionUint184 aMaybe = LibOptionUint184.None();
        OptionUint184 bMaybe = LibOptionUint184.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(uint184 a, string calldata message) public {
        OptionUint184 aMaybe = LibOptionUint184.None();
        OptionUint184 bMaybe = LibOptionUint184.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(uint184 a) public {
        OptionUint184 aMaybe = LibOptionUint184.None();
        OptionUint184 bMaybe = LibOptionUint184.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(uint184 a, uint184 b) public {
        OptionUint184 aMaybe = LibOptionUint184.None();
        OptionUint184 bMaybe = LibOptionUint184.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(uint184 a) public {
        OptionUint184 aMaybe = LibOptionUint184.None();
        OptionUint184 bMaybe = LibOptionUint184.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(uint184 a) public {
        OptionUint184 aMaybe = LibOptionUint184.None();
        OptionUint184 bMaybe = LibOptionUint184.Some(a);

        assertEq(aMaybe.map(other) == LibOptionUint184.None(), true);
        assertEq(bMaybe.map(other) == LibOptionUint184.Some(other(a)), true);
    }
}
