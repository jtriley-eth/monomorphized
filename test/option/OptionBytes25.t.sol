// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import { OptionBytes25, LibOptionBytes25 } from "../../src/option/OptionBytes25.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

bytes25 constant A = bytes25(uint200(1));
bytes25 constant B = bytes25(uint200(2));

function initial() pure returns (bytes25 res) {
    return A;
}

function other(bytes25 self) pure returns (bytes25) {
    return self == A ? B : A;
}

contract OptionBytes25Test is Test {
    using LibOptionBytes25 for *;

    function testEq() public {
        OptionBytes25 a = LibOptionBytes25.None();
        OptionBytes25 b = LibOptionBytes25.None();
        OptionBytes25 c = LibOptionBytes25.Some(A);
        OptionBytes25 d = LibOptionBytes25.Some(A);
        OptionBytes25 e = LibOptionBytes25.Some(B);
        OptionBytes25 f = LibOptionBytes25.Some(B);

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
        OptionBytes25 a = LibOptionBytes25.None();
        OptionBytes25 b = LibOptionBytes25.None();
        OptionBytes25 c = LibOptionBytes25.Some(A);
        OptionBytes25 d = LibOptionBytes25.Some(A);
        OptionBytes25 e = LibOptionBytes25.Some(B);
        OptionBytes25 f = LibOptionBytes25.Some(B);

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
        OptionBytes25 a = LibOptionBytes25.None();
        OptionBytes25 b = LibOptionBytes25.None();
        OptionBytes25 c = LibOptionBytes25.Some(A);
        OptionBytes25 d = LibOptionBytes25.Some(A);
        OptionBytes25 e = LibOptionBytes25.Some(B);
        OptionBytes25 f = LibOptionBytes25.Some(B);

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
        OptionBytes25 a = LibOptionBytes25.None();
        OptionBytes25 b = LibOptionBytes25.None();
        OptionBytes25 c = LibOptionBytes25.Some(A);
        OptionBytes25 d = LibOptionBytes25.Some(A);
        OptionBytes25 e = LibOptionBytes25.Some(B);
        OptionBytes25 f = LibOptionBytes25.Some(B);

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
        OptionBytes25 a = LibOptionBytes25.None();
        OptionBytes25 b = LibOptionBytes25.None();
        OptionBytes25 c = LibOptionBytes25.Some(A);
        OptionBytes25 d = LibOptionBytes25.Some(A);
        OptionBytes25 e = LibOptionBytes25.Some(B);
        OptionBytes25 f = LibOptionBytes25.Some(B);

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
        OptionBytes25 a = LibOptionBytes25.None();
        OptionBytes25 b = LibOptionBytes25.None();
        OptionBytes25 c = LibOptionBytes25.Some(A);
        OptionBytes25 d = LibOptionBytes25.Some(A);
        OptionBytes25 e = LibOptionBytes25.Some(B);
        OptionBytes25 f = LibOptionBytes25.Some(B);

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
        OptionBytes25 a = LibOptionBytes25.None();
        OptionBytes25 b = LibOptionBytes25.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionBytes25 a = LibOptionBytes25.None();
        OptionBytes25 b = LibOptionBytes25.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionBytes25 a = LibOptionBytes25.None();
        OptionBytes25 b = LibOptionBytes25.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionBytes25 a = LibOptionBytes25.None();
        OptionBytes25 b = LibOptionBytes25.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionBytes25 a = LibOptionBytes25.None();
        OptionBytes25 b = LibOptionBytes25.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionBytes25 a = LibOptionBytes25.None();
        OptionBytes25 b = LibOptionBytes25.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionBytes25 a = LibOptionBytes25.None();
        OptionBytes25 b = LibOptionBytes25.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionBytes25 a = LibOptionBytes25.None();
        OptionBytes25 b = LibOptionBytes25.Some(A);

        assertEq(a.map(other) == LibOptionBytes25.None(), true);
        assertEq(b.map(other) == LibOptionBytes25.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, bytes25 a, bytes25 b) public {
        OptionBytes25 aMaybe = aIsSome ? LibOptionBytes25.Some(a) : LibOptionBytes25.None();
        OptionBytes25 bMaybe = bIsSome ? LibOptionBytes25.Some(b) : LibOptionBytes25.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, bytes25 a, bytes25 b) public {
        OptionBytes25 aMaybe = aIsSome ? LibOptionBytes25.Some(a) : LibOptionBytes25.None();
        OptionBytes25 bMaybe = bIsSome ? LibOptionBytes25.Some(b) : LibOptionBytes25.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, bytes25 a, bytes25 b) public {
        OptionBytes25 aMaybe = aIsSome ? LibOptionBytes25.Some(a) : LibOptionBytes25.None();
        OptionBytes25 bMaybe = bIsSome ? LibOptionBytes25.Some(b) : LibOptionBytes25.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, bytes25 a, bytes25 b) public {
        OptionBytes25 aMaybe = aIsSome ? LibOptionBytes25.Some(a) : LibOptionBytes25.None();
        OptionBytes25 bMaybe = bIsSome ? LibOptionBytes25.Some(b) : LibOptionBytes25.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, bytes25 a, bytes25 b) public {
        OptionBytes25 aMaybe = aIsSome ? LibOptionBytes25.Some(a) : LibOptionBytes25.None();
        OptionBytes25 bMaybe = bIsSome ? LibOptionBytes25.Some(b) : LibOptionBytes25.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, bytes25 a, bytes25 b) public {
        OptionBytes25 aMaybe = aIsSome ? LibOptionBytes25.Some(a) : LibOptionBytes25.None();
        OptionBytes25 bMaybe = bIsSome ? LibOptionBytes25.Some(b) : LibOptionBytes25.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(bytes25 a) public {
        OptionBytes25 aMaybe = LibOptionBytes25.None();
        OptionBytes25 bMaybe = LibOptionBytes25.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(bytes25 a) public {
        OptionBytes25 aMaybe = LibOptionBytes25.None();
        OptionBytes25 bMaybe = LibOptionBytes25.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(bytes25 a) public {
        OptionBytes25 aMaybe = LibOptionBytes25.None();
        OptionBytes25 bMaybe = LibOptionBytes25.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(bytes25 a, string calldata message) public {
        OptionBytes25 aMaybe = LibOptionBytes25.None();
        OptionBytes25 bMaybe = LibOptionBytes25.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(bytes25 a) public {
        OptionBytes25 aMaybe = LibOptionBytes25.None();
        OptionBytes25 bMaybe = LibOptionBytes25.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(bytes25 a, bytes25 b) public {
        OptionBytes25 aMaybe = LibOptionBytes25.None();
        OptionBytes25 bMaybe = LibOptionBytes25.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(bytes25 a) public {
        OptionBytes25 aMaybe = LibOptionBytes25.None();
        OptionBytes25 bMaybe = LibOptionBytes25.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(bytes25 a) public {
        OptionBytes25 aMaybe = LibOptionBytes25.None();
        OptionBytes25 bMaybe = LibOptionBytes25.Some(a);

        assertEq(aMaybe.map(other) == LibOptionBytes25.None(), true);
        assertEq(bMaybe.map(other) == LibOptionBytes25.Some(other(a)), true);
    }
}
