// SPDX-License-Identifier: AGPL-3.0-only OR MIT
pragma solidity 0.8.24;

import { OptionBytes27, LibOptionBytes27 } from "../../src/option/OptionBytes27.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

bytes27 constant A = bytes27(uint216(1));
bytes27 constant B = bytes27(uint216(2));

function initial() pure returns (bytes27 res) {
    return A;
}

function other(bytes27 self) pure returns (bytes27) {
    return self == A ? B : A;
}

contract OptionBytes27Test is Test {
    using LibOptionBytes27 for *;

    function testEq() public {
        OptionBytes27 a = LibOptionBytes27.None();
        OptionBytes27 b = LibOptionBytes27.None();
        OptionBytes27 c = LibOptionBytes27.Some(A);
        OptionBytes27 d = LibOptionBytes27.Some(A);
        OptionBytes27 e = LibOptionBytes27.Some(B);
        OptionBytes27 f = LibOptionBytes27.Some(B);

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
        OptionBytes27 a = LibOptionBytes27.None();
        OptionBytes27 b = LibOptionBytes27.None();
        OptionBytes27 c = LibOptionBytes27.Some(A);
        OptionBytes27 d = LibOptionBytes27.Some(A);
        OptionBytes27 e = LibOptionBytes27.Some(B);
        OptionBytes27 f = LibOptionBytes27.Some(B);

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
        OptionBytes27 a = LibOptionBytes27.None();
        OptionBytes27 b = LibOptionBytes27.None();
        OptionBytes27 c = LibOptionBytes27.Some(A);
        OptionBytes27 d = LibOptionBytes27.Some(A);
        OptionBytes27 e = LibOptionBytes27.Some(B);
        OptionBytes27 f = LibOptionBytes27.Some(B);

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
        OptionBytes27 a = LibOptionBytes27.None();
        OptionBytes27 b = LibOptionBytes27.None();
        OptionBytes27 c = LibOptionBytes27.Some(A);
        OptionBytes27 d = LibOptionBytes27.Some(A);
        OptionBytes27 e = LibOptionBytes27.Some(B);
        OptionBytes27 f = LibOptionBytes27.Some(B);

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
        OptionBytes27 a = LibOptionBytes27.None();
        OptionBytes27 b = LibOptionBytes27.None();
        OptionBytes27 c = LibOptionBytes27.Some(A);
        OptionBytes27 d = LibOptionBytes27.Some(A);
        OptionBytes27 e = LibOptionBytes27.Some(B);
        OptionBytes27 f = LibOptionBytes27.Some(B);

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
        OptionBytes27 a = LibOptionBytes27.None();
        OptionBytes27 b = LibOptionBytes27.None();
        OptionBytes27 c = LibOptionBytes27.Some(A);
        OptionBytes27 d = LibOptionBytes27.Some(A);
        OptionBytes27 e = LibOptionBytes27.Some(B);
        OptionBytes27 f = LibOptionBytes27.Some(B);

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
        OptionBytes27 a = LibOptionBytes27.None();
        OptionBytes27 b = LibOptionBytes27.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionBytes27 a = LibOptionBytes27.None();
        OptionBytes27 b = LibOptionBytes27.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionBytes27 a = LibOptionBytes27.None();
        OptionBytes27 b = LibOptionBytes27.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionBytes27 a = LibOptionBytes27.None();
        OptionBytes27 b = LibOptionBytes27.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionBytes27 a = LibOptionBytes27.None();
        OptionBytes27 b = LibOptionBytes27.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionBytes27 a = LibOptionBytes27.None();
        OptionBytes27 b = LibOptionBytes27.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionBytes27 a = LibOptionBytes27.None();
        OptionBytes27 b = LibOptionBytes27.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionBytes27 a = LibOptionBytes27.None();
        OptionBytes27 b = LibOptionBytes27.Some(A);

        assertEq(a.map(other) == LibOptionBytes27.None(), true);
        assertEq(b.map(other) == LibOptionBytes27.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, bytes27 a, bytes27 b) public {
        OptionBytes27 aMaybe = aIsSome ? LibOptionBytes27.Some(a) : LibOptionBytes27.None();
        OptionBytes27 bMaybe = bIsSome ? LibOptionBytes27.Some(b) : LibOptionBytes27.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, bytes27 a, bytes27 b) public {
        OptionBytes27 aMaybe = aIsSome ? LibOptionBytes27.Some(a) : LibOptionBytes27.None();
        OptionBytes27 bMaybe = bIsSome ? LibOptionBytes27.Some(b) : LibOptionBytes27.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, bytes27 a, bytes27 b) public {
        OptionBytes27 aMaybe = aIsSome ? LibOptionBytes27.Some(a) : LibOptionBytes27.None();
        OptionBytes27 bMaybe = bIsSome ? LibOptionBytes27.Some(b) : LibOptionBytes27.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, bytes27 a, bytes27 b) public {
        OptionBytes27 aMaybe = aIsSome ? LibOptionBytes27.Some(a) : LibOptionBytes27.None();
        OptionBytes27 bMaybe = bIsSome ? LibOptionBytes27.Some(b) : LibOptionBytes27.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, bytes27 a, bytes27 b) public {
        OptionBytes27 aMaybe = aIsSome ? LibOptionBytes27.Some(a) : LibOptionBytes27.None();
        OptionBytes27 bMaybe = bIsSome ? LibOptionBytes27.Some(b) : LibOptionBytes27.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, bytes27 a, bytes27 b) public {
        OptionBytes27 aMaybe = aIsSome ? LibOptionBytes27.Some(a) : LibOptionBytes27.None();
        OptionBytes27 bMaybe = bIsSome ? LibOptionBytes27.Some(b) : LibOptionBytes27.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(bytes27 a) public {
        OptionBytes27 aMaybe = LibOptionBytes27.None();
        OptionBytes27 bMaybe = LibOptionBytes27.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(bytes27 a) public {
        OptionBytes27 aMaybe = LibOptionBytes27.None();
        OptionBytes27 bMaybe = LibOptionBytes27.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(bytes27 a) public {
        OptionBytes27 aMaybe = LibOptionBytes27.None();
        OptionBytes27 bMaybe = LibOptionBytes27.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(bytes27 a, string calldata message) public {
        OptionBytes27 aMaybe = LibOptionBytes27.None();
        OptionBytes27 bMaybe = LibOptionBytes27.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(bytes27 a) public {
        OptionBytes27 aMaybe = LibOptionBytes27.None();
        OptionBytes27 bMaybe = LibOptionBytes27.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(bytes27 a, bytes27 b) public {
        OptionBytes27 aMaybe = LibOptionBytes27.None();
        OptionBytes27 bMaybe = LibOptionBytes27.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(bytes27 a) public {
        OptionBytes27 aMaybe = LibOptionBytes27.None();
        OptionBytes27 bMaybe = LibOptionBytes27.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(bytes27 a) public {
        OptionBytes27 aMaybe = LibOptionBytes27.None();
        OptionBytes27 bMaybe = LibOptionBytes27.Some(a);

        assertEq(aMaybe.map(other) == LibOptionBytes27.None(), true);
        assertEq(bMaybe.map(other) == LibOptionBytes27.Some(other(a)), true);
    }
}
