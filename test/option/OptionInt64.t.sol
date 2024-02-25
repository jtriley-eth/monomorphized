// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import { OptionInt64, LibOptionInt64 } from "../../src/option/OptionInt64.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

int64 constant A = int64(1);
int64 constant B = int64(2);

function initial() pure returns (int64 res) {
    return A;
}

function other(int64 self) pure returns (int64) {
    return self == A ? B : A;
}

contract OptionInt64Test is Test {
    using LibOptionInt64 for *;

    function testEq() public {
        OptionInt64 a = LibOptionInt64.None();
        OptionInt64 b = LibOptionInt64.None();
        OptionInt64 c = LibOptionInt64.Some(A);
        OptionInt64 d = LibOptionInt64.Some(A);
        OptionInt64 e = LibOptionInt64.Some(B);
        OptionInt64 f = LibOptionInt64.Some(B);

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
        OptionInt64 a = LibOptionInt64.None();
        OptionInt64 b = LibOptionInt64.None();
        OptionInt64 c = LibOptionInt64.Some(A);
        OptionInt64 d = LibOptionInt64.Some(A);
        OptionInt64 e = LibOptionInt64.Some(B);
        OptionInt64 f = LibOptionInt64.Some(B);

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
        OptionInt64 a = LibOptionInt64.None();
        OptionInt64 b = LibOptionInt64.None();
        OptionInt64 c = LibOptionInt64.Some(A);
        OptionInt64 d = LibOptionInt64.Some(A);
        OptionInt64 e = LibOptionInt64.Some(B);
        OptionInt64 f = LibOptionInt64.Some(B);

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
        OptionInt64 a = LibOptionInt64.None();
        OptionInt64 b = LibOptionInt64.None();
        OptionInt64 c = LibOptionInt64.Some(A);
        OptionInt64 d = LibOptionInt64.Some(A);
        OptionInt64 e = LibOptionInt64.Some(B);
        OptionInt64 f = LibOptionInt64.Some(B);

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
        OptionInt64 a = LibOptionInt64.None();
        OptionInt64 b = LibOptionInt64.None();
        OptionInt64 c = LibOptionInt64.Some(A);
        OptionInt64 d = LibOptionInt64.Some(A);
        OptionInt64 e = LibOptionInt64.Some(B);
        OptionInt64 f = LibOptionInt64.Some(B);

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
        OptionInt64 a = LibOptionInt64.None();
        OptionInt64 b = LibOptionInt64.None();
        OptionInt64 c = LibOptionInt64.Some(A);
        OptionInt64 d = LibOptionInt64.Some(A);
        OptionInt64 e = LibOptionInt64.Some(B);
        OptionInt64 f = LibOptionInt64.Some(B);

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
        OptionInt64 a = LibOptionInt64.None();
        OptionInt64 b = LibOptionInt64.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionInt64 a = LibOptionInt64.None();
        OptionInt64 b = LibOptionInt64.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionInt64 a = LibOptionInt64.None();
        OptionInt64 b = LibOptionInt64.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionInt64 a = LibOptionInt64.None();
        OptionInt64 b = LibOptionInt64.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionInt64 a = LibOptionInt64.None();
        OptionInt64 b = LibOptionInt64.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionInt64 a = LibOptionInt64.None();
        OptionInt64 b = LibOptionInt64.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionInt64 a = LibOptionInt64.None();
        OptionInt64 b = LibOptionInt64.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionInt64 a = LibOptionInt64.None();
        OptionInt64 b = LibOptionInt64.Some(A);

        assertEq(a.map(other) == LibOptionInt64.None(), true);
        assertEq(b.map(other) == LibOptionInt64.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, int64 a, int64 b) public {
        OptionInt64 aMaybe = aIsSome ? LibOptionInt64.Some(a) : LibOptionInt64.None();
        OptionInt64 bMaybe = bIsSome ? LibOptionInt64.Some(b) : LibOptionInt64.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, int64 a, int64 b) public {
        OptionInt64 aMaybe = aIsSome ? LibOptionInt64.Some(a) : LibOptionInt64.None();
        OptionInt64 bMaybe = bIsSome ? LibOptionInt64.Some(b) : LibOptionInt64.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, int64 a, int64 b) public {
        OptionInt64 aMaybe = aIsSome ? LibOptionInt64.Some(a) : LibOptionInt64.None();
        OptionInt64 bMaybe = bIsSome ? LibOptionInt64.Some(b) : LibOptionInt64.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, int64 a, int64 b) public {
        OptionInt64 aMaybe = aIsSome ? LibOptionInt64.Some(a) : LibOptionInt64.None();
        OptionInt64 bMaybe = bIsSome ? LibOptionInt64.Some(b) : LibOptionInt64.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, int64 a, int64 b) public {
        OptionInt64 aMaybe = aIsSome ? LibOptionInt64.Some(a) : LibOptionInt64.None();
        OptionInt64 bMaybe = bIsSome ? LibOptionInt64.Some(b) : LibOptionInt64.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, int64 a, int64 b) public {
        OptionInt64 aMaybe = aIsSome ? LibOptionInt64.Some(a) : LibOptionInt64.None();
        OptionInt64 bMaybe = bIsSome ? LibOptionInt64.Some(b) : LibOptionInt64.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(int64 a) public {
        OptionInt64 aMaybe = LibOptionInt64.None();
        OptionInt64 bMaybe = LibOptionInt64.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(int64 a) public {
        OptionInt64 aMaybe = LibOptionInt64.None();
        OptionInt64 bMaybe = LibOptionInt64.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(int64 a) public {
        OptionInt64 aMaybe = LibOptionInt64.None();
        OptionInt64 bMaybe = LibOptionInt64.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(int64 a, string calldata message) public {
        OptionInt64 aMaybe = LibOptionInt64.None();
        OptionInt64 bMaybe = LibOptionInt64.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(int64 a) public {
        OptionInt64 aMaybe = LibOptionInt64.None();
        OptionInt64 bMaybe = LibOptionInt64.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(int64 a, int64 b) public {
        OptionInt64 aMaybe = LibOptionInt64.None();
        OptionInt64 bMaybe = LibOptionInt64.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(int64 a) public {
        OptionInt64 aMaybe = LibOptionInt64.None();
        OptionInt64 bMaybe = LibOptionInt64.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(int64 a) public {
        OptionInt64 aMaybe = LibOptionInt64.None();
        OptionInt64 bMaybe = LibOptionInt64.Some(a);

        assertEq(aMaybe.map(other) == LibOptionInt64.None(), true);
        assertEq(bMaybe.map(other) == LibOptionInt64.Some(other(a)), true);
    }
}
