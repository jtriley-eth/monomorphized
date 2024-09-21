// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { OptionUint208, LibOptionUint208 } from "../../src/option/OptionUint208.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

uint208 constant A = uint208(1);
uint208 constant B = uint208(2);

function initial() pure returns (uint208 res) {
    return A;
}

function other(uint208 self) pure returns (uint208) {
    return self == A ? B : A;
}

contract OptionUint208Test is Test {
    using LibOptionUint208 for *;

    function testEq() public {
        OptionUint208 a = LibOptionUint208.None();
        OptionUint208 b = LibOptionUint208.None();
        OptionUint208 c = LibOptionUint208.Some(A);
        OptionUint208 d = LibOptionUint208.Some(A);
        OptionUint208 e = LibOptionUint208.Some(B);
        OptionUint208 f = LibOptionUint208.Some(B);

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
        OptionUint208 a = LibOptionUint208.None();
        OptionUint208 b = LibOptionUint208.None();
        OptionUint208 c = LibOptionUint208.Some(A);
        OptionUint208 d = LibOptionUint208.Some(A);
        OptionUint208 e = LibOptionUint208.Some(B);
        OptionUint208 f = LibOptionUint208.Some(B);

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
        OptionUint208 a = LibOptionUint208.None();
        OptionUint208 b = LibOptionUint208.None();
        OptionUint208 c = LibOptionUint208.Some(A);
        OptionUint208 d = LibOptionUint208.Some(A);
        OptionUint208 e = LibOptionUint208.Some(B);
        OptionUint208 f = LibOptionUint208.Some(B);

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
        OptionUint208 a = LibOptionUint208.None();
        OptionUint208 b = LibOptionUint208.None();
        OptionUint208 c = LibOptionUint208.Some(A);
        OptionUint208 d = LibOptionUint208.Some(A);
        OptionUint208 e = LibOptionUint208.Some(B);
        OptionUint208 f = LibOptionUint208.Some(B);

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
        OptionUint208 a = LibOptionUint208.None();
        OptionUint208 b = LibOptionUint208.None();
        OptionUint208 c = LibOptionUint208.Some(A);
        OptionUint208 d = LibOptionUint208.Some(A);
        OptionUint208 e = LibOptionUint208.Some(B);
        OptionUint208 f = LibOptionUint208.Some(B);

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
        OptionUint208 a = LibOptionUint208.None();
        OptionUint208 b = LibOptionUint208.None();
        OptionUint208 c = LibOptionUint208.Some(A);
        OptionUint208 d = LibOptionUint208.Some(A);
        OptionUint208 e = LibOptionUint208.Some(B);
        OptionUint208 f = LibOptionUint208.Some(B);

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
        OptionUint208 a = LibOptionUint208.None();
        OptionUint208 b = LibOptionUint208.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionUint208 a = LibOptionUint208.None();
        OptionUint208 b = LibOptionUint208.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionUint208 a = LibOptionUint208.None();
        OptionUint208 b = LibOptionUint208.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionUint208 a = LibOptionUint208.None();
        OptionUint208 b = LibOptionUint208.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionUint208 a = LibOptionUint208.None();
        OptionUint208 b = LibOptionUint208.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionUint208 a = LibOptionUint208.None();
        OptionUint208 b = LibOptionUint208.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionUint208 a = LibOptionUint208.None();
        OptionUint208 b = LibOptionUint208.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionUint208 a = LibOptionUint208.None();
        OptionUint208 b = LibOptionUint208.Some(A);

        assertEq(a.map(other) == LibOptionUint208.None(), true);
        assertEq(b.map(other) == LibOptionUint208.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, uint208 a, uint208 b) public {
        OptionUint208 aMaybe = aIsSome ? LibOptionUint208.Some(a) : LibOptionUint208.None();
        OptionUint208 bMaybe = bIsSome ? LibOptionUint208.Some(b) : LibOptionUint208.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, uint208 a, uint208 b) public {
        OptionUint208 aMaybe = aIsSome ? LibOptionUint208.Some(a) : LibOptionUint208.None();
        OptionUint208 bMaybe = bIsSome ? LibOptionUint208.Some(b) : LibOptionUint208.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, uint208 a, uint208 b) public {
        OptionUint208 aMaybe = aIsSome ? LibOptionUint208.Some(a) : LibOptionUint208.None();
        OptionUint208 bMaybe = bIsSome ? LibOptionUint208.Some(b) : LibOptionUint208.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, uint208 a, uint208 b) public {
        OptionUint208 aMaybe = aIsSome ? LibOptionUint208.Some(a) : LibOptionUint208.None();
        OptionUint208 bMaybe = bIsSome ? LibOptionUint208.Some(b) : LibOptionUint208.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, uint208 a, uint208 b) public {
        OptionUint208 aMaybe = aIsSome ? LibOptionUint208.Some(a) : LibOptionUint208.None();
        OptionUint208 bMaybe = bIsSome ? LibOptionUint208.Some(b) : LibOptionUint208.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, uint208 a, uint208 b) public {
        OptionUint208 aMaybe = aIsSome ? LibOptionUint208.Some(a) : LibOptionUint208.None();
        OptionUint208 bMaybe = bIsSome ? LibOptionUint208.Some(b) : LibOptionUint208.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(uint208 a) public {
        OptionUint208 aMaybe = LibOptionUint208.None();
        OptionUint208 bMaybe = LibOptionUint208.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(uint208 a) public {
        OptionUint208 aMaybe = LibOptionUint208.None();
        OptionUint208 bMaybe = LibOptionUint208.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(uint208 a) public {
        OptionUint208 aMaybe = LibOptionUint208.None();
        OptionUint208 bMaybe = LibOptionUint208.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(uint208 a, string calldata message) public {
        OptionUint208 aMaybe = LibOptionUint208.None();
        OptionUint208 bMaybe = LibOptionUint208.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(uint208 a) public {
        OptionUint208 aMaybe = LibOptionUint208.None();
        OptionUint208 bMaybe = LibOptionUint208.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(uint208 a, uint208 b) public {
        OptionUint208 aMaybe = LibOptionUint208.None();
        OptionUint208 bMaybe = LibOptionUint208.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(uint208 a) public {
        OptionUint208 aMaybe = LibOptionUint208.None();
        OptionUint208 bMaybe = LibOptionUint208.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(uint208 a) public {
        OptionUint208 aMaybe = LibOptionUint208.None();
        OptionUint208 bMaybe = LibOptionUint208.Some(a);

        assertEq(aMaybe.map(other) == LibOptionUint208.None(), true);
        assertEq(bMaybe.map(other) == LibOptionUint208.Some(other(a)), true);
    }
}
