// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { OptionUint24, LibOptionUint24 } from "../../src/option/OptionUint24.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

uint24 constant A = uint24(1);
uint24 constant B = uint24(2);

function initial() pure returns (uint24 res) {
    return A;
}

function other(uint24 self) pure returns (uint24) {
    return self == A ? B : A;
}

contract OptionUint24Test is Test {
    using LibOptionUint24 for *;

    function testEq() public {
        OptionUint24 a = LibOptionUint24.None();
        OptionUint24 b = LibOptionUint24.None();
        OptionUint24 c = LibOptionUint24.Some(A);
        OptionUint24 d = LibOptionUint24.Some(A);
        OptionUint24 e = LibOptionUint24.Some(B);
        OptionUint24 f = LibOptionUint24.Some(B);

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
        OptionUint24 a = LibOptionUint24.None();
        OptionUint24 b = LibOptionUint24.None();
        OptionUint24 c = LibOptionUint24.Some(A);
        OptionUint24 d = LibOptionUint24.Some(A);
        OptionUint24 e = LibOptionUint24.Some(B);
        OptionUint24 f = LibOptionUint24.Some(B);

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
        OptionUint24 a = LibOptionUint24.None();
        OptionUint24 b = LibOptionUint24.None();
        OptionUint24 c = LibOptionUint24.Some(A);
        OptionUint24 d = LibOptionUint24.Some(A);
        OptionUint24 e = LibOptionUint24.Some(B);
        OptionUint24 f = LibOptionUint24.Some(B);

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
        OptionUint24 a = LibOptionUint24.None();
        OptionUint24 b = LibOptionUint24.None();
        OptionUint24 c = LibOptionUint24.Some(A);
        OptionUint24 d = LibOptionUint24.Some(A);
        OptionUint24 e = LibOptionUint24.Some(B);
        OptionUint24 f = LibOptionUint24.Some(B);

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
        OptionUint24 a = LibOptionUint24.None();
        OptionUint24 b = LibOptionUint24.None();
        OptionUint24 c = LibOptionUint24.Some(A);
        OptionUint24 d = LibOptionUint24.Some(A);
        OptionUint24 e = LibOptionUint24.Some(B);
        OptionUint24 f = LibOptionUint24.Some(B);

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
        OptionUint24 a = LibOptionUint24.None();
        OptionUint24 b = LibOptionUint24.None();
        OptionUint24 c = LibOptionUint24.Some(A);
        OptionUint24 d = LibOptionUint24.Some(A);
        OptionUint24 e = LibOptionUint24.Some(B);
        OptionUint24 f = LibOptionUint24.Some(B);

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
        OptionUint24 a = LibOptionUint24.None();
        OptionUint24 b = LibOptionUint24.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionUint24 a = LibOptionUint24.None();
        OptionUint24 b = LibOptionUint24.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionUint24 a = LibOptionUint24.None();
        OptionUint24 b = LibOptionUint24.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionUint24 a = LibOptionUint24.None();
        OptionUint24 b = LibOptionUint24.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionUint24 a = LibOptionUint24.None();
        OptionUint24 b = LibOptionUint24.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionUint24 a = LibOptionUint24.None();
        OptionUint24 b = LibOptionUint24.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionUint24 a = LibOptionUint24.None();
        OptionUint24 b = LibOptionUint24.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionUint24 a = LibOptionUint24.None();
        OptionUint24 b = LibOptionUint24.Some(A);

        assertEq(a.map(other) == LibOptionUint24.None(), true);
        assertEq(b.map(other) == LibOptionUint24.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, uint24 a, uint24 b) public {
        OptionUint24 aMaybe = aIsSome ? LibOptionUint24.Some(a) : LibOptionUint24.None();
        OptionUint24 bMaybe = bIsSome ? LibOptionUint24.Some(b) : LibOptionUint24.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, uint24 a, uint24 b) public {
        OptionUint24 aMaybe = aIsSome ? LibOptionUint24.Some(a) : LibOptionUint24.None();
        OptionUint24 bMaybe = bIsSome ? LibOptionUint24.Some(b) : LibOptionUint24.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, uint24 a, uint24 b) public {
        OptionUint24 aMaybe = aIsSome ? LibOptionUint24.Some(a) : LibOptionUint24.None();
        OptionUint24 bMaybe = bIsSome ? LibOptionUint24.Some(b) : LibOptionUint24.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, uint24 a, uint24 b) public {
        OptionUint24 aMaybe = aIsSome ? LibOptionUint24.Some(a) : LibOptionUint24.None();
        OptionUint24 bMaybe = bIsSome ? LibOptionUint24.Some(b) : LibOptionUint24.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, uint24 a, uint24 b) public {
        OptionUint24 aMaybe = aIsSome ? LibOptionUint24.Some(a) : LibOptionUint24.None();
        OptionUint24 bMaybe = bIsSome ? LibOptionUint24.Some(b) : LibOptionUint24.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, uint24 a, uint24 b) public {
        OptionUint24 aMaybe = aIsSome ? LibOptionUint24.Some(a) : LibOptionUint24.None();
        OptionUint24 bMaybe = bIsSome ? LibOptionUint24.Some(b) : LibOptionUint24.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(uint24 a) public {
        OptionUint24 aMaybe = LibOptionUint24.None();
        OptionUint24 bMaybe = LibOptionUint24.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(uint24 a) public {
        OptionUint24 aMaybe = LibOptionUint24.None();
        OptionUint24 bMaybe = LibOptionUint24.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(uint24 a) public {
        OptionUint24 aMaybe = LibOptionUint24.None();
        OptionUint24 bMaybe = LibOptionUint24.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(uint24 a, string calldata message) public {
        OptionUint24 aMaybe = LibOptionUint24.None();
        OptionUint24 bMaybe = LibOptionUint24.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(uint24 a) public {
        OptionUint24 aMaybe = LibOptionUint24.None();
        OptionUint24 bMaybe = LibOptionUint24.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(uint24 a, uint24 b) public {
        OptionUint24 aMaybe = LibOptionUint24.None();
        OptionUint24 bMaybe = LibOptionUint24.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(uint24 a) public {
        OptionUint24 aMaybe = LibOptionUint24.None();
        OptionUint24 bMaybe = LibOptionUint24.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(uint24 a) public {
        OptionUint24 aMaybe = LibOptionUint24.None();
        OptionUint24 bMaybe = LibOptionUint24.Some(a);

        assertEq(aMaybe.map(other) == LibOptionUint24.None(), true);
        assertEq(bMaybe.map(other) == LibOptionUint24.Some(other(a)), true);
    }
}
