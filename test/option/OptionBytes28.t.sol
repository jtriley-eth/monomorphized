// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import { OptionBytes28, LibOptionBytes28 } from "../../src/option/OptionBytes28.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

bytes28 constant A = bytes28(uint224(1));
bytes28 constant B = bytes28(uint224(2));

function initial() pure returns (bytes28 res) {
    return A;
}

function other(bytes28 self) pure returns (bytes28) {
    return self == A ? B : A;
}

contract OptionBytes28Test is Test {
    using LibOptionBytes28 for *;

    function testEq() public {
        OptionBytes28 a = LibOptionBytes28.None();
        OptionBytes28 b = LibOptionBytes28.None();
        OptionBytes28 c = LibOptionBytes28.Some(A);
        OptionBytes28 d = LibOptionBytes28.Some(A);
        OptionBytes28 e = LibOptionBytes28.Some(B);
        OptionBytes28 f = LibOptionBytes28.Some(B);

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
        OptionBytes28 a = LibOptionBytes28.None();
        OptionBytes28 b = LibOptionBytes28.None();
        OptionBytes28 c = LibOptionBytes28.Some(A);
        OptionBytes28 d = LibOptionBytes28.Some(A);
        OptionBytes28 e = LibOptionBytes28.Some(B);
        OptionBytes28 f = LibOptionBytes28.Some(B);

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
        OptionBytes28 a = LibOptionBytes28.None();
        OptionBytes28 b = LibOptionBytes28.None();
        OptionBytes28 c = LibOptionBytes28.Some(A);
        OptionBytes28 d = LibOptionBytes28.Some(A);
        OptionBytes28 e = LibOptionBytes28.Some(B);
        OptionBytes28 f = LibOptionBytes28.Some(B);

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
        OptionBytes28 a = LibOptionBytes28.None();
        OptionBytes28 b = LibOptionBytes28.None();
        OptionBytes28 c = LibOptionBytes28.Some(A);
        OptionBytes28 d = LibOptionBytes28.Some(A);
        OptionBytes28 e = LibOptionBytes28.Some(B);
        OptionBytes28 f = LibOptionBytes28.Some(B);

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
        OptionBytes28 a = LibOptionBytes28.None();
        OptionBytes28 b = LibOptionBytes28.None();
        OptionBytes28 c = LibOptionBytes28.Some(A);
        OptionBytes28 d = LibOptionBytes28.Some(A);
        OptionBytes28 e = LibOptionBytes28.Some(B);
        OptionBytes28 f = LibOptionBytes28.Some(B);

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
        OptionBytes28 a = LibOptionBytes28.None();
        OptionBytes28 b = LibOptionBytes28.None();
        OptionBytes28 c = LibOptionBytes28.Some(A);
        OptionBytes28 d = LibOptionBytes28.Some(A);
        OptionBytes28 e = LibOptionBytes28.Some(B);
        OptionBytes28 f = LibOptionBytes28.Some(B);

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
        OptionBytes28 a = LibOptionBytes28.None();
        OptionBytes28 b = LibOptionBytes28.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionBytes28 a = LibOptionBytes28.None();
        OptionBytes28 b = LibOptionBytes28.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionBytes28 a = LibOptionBytes28.None();
        OptionBytes28 b = LibOptionBytes28.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionBytes28 a = LibOptionBytes28.None();
        OptionBytes28 b = LibOptionBytes28.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionBytes28 a = LibOptionBytes28.None();
        OptionBytes28 b = LibOptionBytes28.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionBytes28 a = LibOptionBytes28.None();
        OptionBytes28 b = LibOptionBytes28.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionBytes28 a = LibOptionBytes28.None();
        OptionBytes28 b = LibOptionBytes28.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionBytes28 a = LibOptionBytes28.None();
        OptionBytes28 b = LibOptionBytes28.Some(A);

        assertEq(a.map(other) == LibOptionBytes28.None(), true);
        assertEq(b.map(other) == LibOptionBytes28.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, bytes28 a, bytes28 b) public {
        OptionBytes28 aMaybe = aIsSome ? LibOptionBytes28.Some(a) : LibOptionBytes28.None();
        OptionBytes28 bMaybe = bIsSome ? LibOptionBytes28.Some(b) : LibOptionBytes28.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, bytes28 a, bytes28 b) public {
        OptionBytes28 aMaybe = aIsSome ? LibOptionBytes28.Some(a) : LibOptionBytes28.None();
        OptionBytes28 bMaybe = bIsSome ? LibOptionBytes28.Some(b) : LibOptionBytes28.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, bytes28 a, bytes28 b) public {
        OptionBytes28 aMaybe = aIsSome ? LibOptionBytes28.Some(a) : LibOptionBytes28.None();
        OptionBytes28 bMaybe = bIsSome ? LibOptionBytes28.Some(b) : LibOptionBytes28.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, bytes28 a, bytes28 b) public {
        OptionBytes28 aMaybe = aIsSome ? LibOptionBytes28.Some(a) : LibOptionBytes28.None();
        OptionBytes28 bMaybe = bIsSome ? LibOptionBytes28.Some(b) : LibOptionBytes28.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, bytes28 a, bytes28 b) public {
        OptionBytes28 aMaybe = aIsSome ? LibOptionBytes28.Some(a) : LibOptionBytes28.None();
        OptionBytes28 bMaybe = bIsSome ? LibOptionBytes28.Some(b) : LibOptionBytes28.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, bytes28 a, bytes28 b) public {
        OptionBytes28 aMaybe = aIsSome ? LibOptionBytes28.Some(a) : LibOptionBytes28.None();
        OptionBytes28 bMaybe = bIsSome ? LibOptionBytes28.Some(b) : LibOptionBytes28.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(bytes28 a) public {
        OptionBytes28 aMaybe = LibOptionBytes28.None();
        OptionBytes28 bMaybe = LibOptionBytes28.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(bytes28 a) public {
        OptionBytes28 aMaybe = LibOptionBytes28.None();
        OptionBytes28 bMaybe = LibOptionBytes28.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(bytes28 a) public {
        OptionBytes28 aMaybe = LibOptionBytes28.None();
        OptionBytes28 bMaybe = LibOptionBytes28.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(bytes28 a, string calldata message) public {
        OptionBytes28 aMaybe = LibOptionBytes28.None();
        OptionBytes28 bMaybe = LibOptionBytes28.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(bytes28 a) public {
        OptionBytes28 aMaybe = LibOptionBytes28.None();
        OptionBytes28 bMaybe = LibOptionBytes28.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(bytes28 a, bytes28 b) public {
        OptionBytes28 aMaybe = LibOptionBytes28.None();
        OptionBytes28 bMaybe = LibOptionBytes28.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(bytes28 a) public {
        OptionBytes28 aMaybe = LibOptionBytes28.None();
        OptionBytes28 bMaybe = LibOptionBytes28.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(bytes28 a) public {
        OptionBytes28 aMaybe = LibOptionBytes28.None();
        OptionBytes28 bMaybe = LibOptionBytes28.Some(a);

        assertEq(aMaybe.map(other) == LibOptionBytes28.None(), true);
        assertEq(bMaybe.map(other) == LibOptionBytes28.Some(other(a)), true);
    }
}
