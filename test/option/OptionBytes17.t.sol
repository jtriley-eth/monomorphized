// SPDX-License-Identifier: AGPL-3.0-only OR MIT
pragma solidity 0.8.24;

import { OptionBytes17, LibOptionBytes17 } from "../../src/option/OptionBytes17.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

bytes17 constant A = bytes17(uint136(1));
bytes17 constant B = bytes17(uint136(2));

function initial() pure returns (bytes17 res) {
    return A;
}

function other(bytes17 self) pure returns (bytes17) {
    return self == A ? B : A;
}

contract OptionBytes17Test is Test {
    using LibOptionBytes17 for *;

    function testEq() public {
        OptionBytes17 a = LibOptionBytes17.None();
        OptionBytes17 b = LibOptionBytes17.None();
        OptionBytes17 c = LibOptionBytes17.Some(A);
        OptionBytes17 d = LibOptionBytes17.Some(A);
        OptionBytes17 e = LibOptionBytes17.Some(B);
        OptionBytes17 f = LibOptionBytes17.Some(B);

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
        OptionBytes17 a = LibOptionBytes17.None();
        OptionBytes17 b = LibOptionBytes17.None();
        OptionBytes17 c = LibOptionBytes17.Some(A);
        OptionBytes17 d = LibOptionBytes17.Some(A);
        OptionBytes17 e = LibOptionBytes17.Some(B);
        OptionBytes17 f = LibOptionBytes17.Some(B);

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
        OptionBytes17 a = LibOptionBytes17.None();
        OptionBytes17 b = LibOptionBytes17.None();
        OptionBytes17 c = LibOptionBytes17.Some(A);
        OptionBytes17 d = LibOptionBytes17.Some(A);
        OptionBytes17 e = LibOptionBytes17.Some(B);
        OptionBytes17 f = LibOptionBytes17.Some(B);

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
        OptionBytes17 a = LibOptionBytes17.None();
        OptionBytes17 b = LibOptionBytes17.None();
        OptionBytes17 c = LibOptionBytes17.Some(A);
        OptionBytes17 d = LibOptionBytes17.Some(A);
        OptionBytes17 e = LibOptionBytes17.Some(B);
        OptionBytes17 f = LibOptionBytes17.Some(B);

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
        OptionBytes17 a = LibOptionBytes17.None();
        OptionBytes17 b = LibOptionBytes17.None();
        OptionBytes17 c = LibOptionBytes17.Some(A);
        OptionBytes17 d = LibOptionBytes17.Some(A);
        OptionBytes17 e = LibOptionBytes17.Some(B);
        OptionBytes17 f = LibOptionBytes17.Some(B);

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
        OptionBytes17 a = LibOptionBytes17.None();
        OptionBytes17 b = LibOptionBytes17.None();
        OptionBytes17 c = LibOptionBytes17.Some(A);
        OptionBytes17 d = LibOptionBytes17.Some(A);
        OptionBytes17 e = LibOptionBytes17.Some(B);
        OptionBytes17 f = LibOptionBytes17.Some(B);

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
        OptionBytes17 a = LibOptionBytes17.None();
        OptionBytes17 b = LibOptionBytes17.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionBytes17 a = LibOptionBytes17.None();
        OptionBytes17 b = LibOptionBytes17.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionBytes17 a = LibOptionBytes17.None();
        OptionBytes17 b = LibOptionBytes17.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionBytes17 a = LibOptionBytes17.None();
        OptionBytes17 b = LibOptionBytes17.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionBytes17 a = LibOptionBytes17.None();
        OptionBytes17 b = LibOptionBytes17.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionBytes17 a = LibOptionBytes17.None();
        OptionBytes17 b = LibOptionBytes17.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionBytes17 a = LibOptionBytes17.None();
        OptionBytes17 b = LibOptionBytes17.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionBytes17 a = LibOptionBytes17.None();
        OptionBytes17 b = LibOptionBytes17.Some(A);

        assertEq(a.map(other) == LibOptionBytes17.None(), true);
        assertEq(b.map(other) == LibOptionBytes17.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, bytes17 a, bytes17 b) public {
        OptionBytes17 aMaybe = aIsSome ? LibOptionBytes17.Some(a) : LibOptionBytes17.None();
        OptionBytes17 bMaybe = bIsSome ? LibOptionBytes17.Some(b) : LibOptionBytes17.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, bytes17 a, bytes17 b) public {
        OptionBytes17 aMaybe = aIsSome ? LibOptionBytes17.Some(a) : LibOptionBytes17.None();
        OptionBytes17 bMaybe = bIsSome ? LibOptionBytes17.Some(b) : LibOptionBytes17.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, bytes17 a, bytes17 b) public {
        OptionBytes17 aMaybe = aIsSome ? LibOptionBytes17.Some(a) : LibOptionBytes17.None();
        OptionBytes17 bMaybe = bIsSome ? LibOptionBytes17.Some(b) : LibOptionBytes17.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, bytes17 a, bytes17 b) public {
        OptionBytes17 aMaybe = aIsSome ? LibOptionBytes17.Some(a) : LibOptionBytes17.None();
        OptionBytes17 bMaybe = bIsSome ? LibOptionBytes17.Some(b) : LibOptionBytes17.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, bytes17 a, bytes17 b) public {
        OptionBytes17 aMaybe = aIsSome ? LibOptionBytes17.Some(a) : LibOptionBytes17.None();
        OptionBytes17 bMaybe = bIsSome ? LibOptionBytes17.Some(b) : LibOptionBytes17.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, bytes17 a, bytes17 b) public {
        OptionBytes17 aMaybe = aIsSome ? LibOptionBytes17.Some(a) : LibOptionBytes17.None();
        OptionBytes17 bMaybe = bIsSome ? LibOptionBytes17.Some(b) : LibOptionBytes17.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(bytes17 a) public {
        OptionBytes17 aMaybe = LibOptionBytes17.None();
        OptionBytes17 bMaybe = LibOptionBytes17.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(bytes17 a) public {
        OptionBytes17 aMaybe = LibOptionBytes17.None();
        OptionBytes17 bMaybe = LibOptionBytes17.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(bytes17 a) public {
        OptionBytes17 aMaybe = LibOptionBytes17.None();
        OptionBytes17 bMaybe = LibOptionBytes17.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(bytes17 a, string calldata message) public {
        OptionBytes17 aMaybe = LibOptionBytes17.None();
        OptionBytes17 bMaybe = LibOptionBytes17.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(bytes17 a) public {
        OptionBytes17 aMaybe = LibOptionBytes17.None();
        OptionBytes17 bMaybe = LibOptionBytes17.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(bytes17 a, bytes17 b) public {
        OptionBytes17 aMaybe = LibOptionBytes17.None();
        OptionBytes17 bMaybe = LibOptionBytes17.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(bytes17 a) public {
        OptionBytes17 aMaybe = LibOptionBytes17.None();
        OptionBytes17 bMaybe = LibOptionBytes17.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(bytes17 a) public {
        OptionBytes17 aMaybe = LibOptionBytes17.None();
        OptionBytes17 bMaybe = LibOptionBytes17.Some(a);

        assertEq(aMaybe.map(other) == LibOptionBytes17.None(), true);
        assertEq(bMaybe.map(other) == LibOptionBytes17.Some(other(a)), true);
    }
}
