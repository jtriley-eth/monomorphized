// SPDX-License-Identifier: AGPL-3.0-only OR MIT
pragma solidity 0.8.24;

import { OptionBytes3, LibOptionBytes3 } from "../../src/option/OptionBytes3.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

bytes3 constant A = bytes3(uint24(1));
bytes3 constant B = bytes3(uint24(2));

function initial() pure returns (bytes3 res) {
    return A;
}

function other(bytes3 self) pure returns (bytes3) {
    return self == A ? B : A;
}

contract OptionBytes3Test is Test {
    using LibOptionBytes3 for *;

    function testEq() public {
        OptionBytes3 a = LibOptionBytes3.None();
        OptionBytes3 b = LibOptionBytes3.None();
        OptionBytes3 c = LibOptionBytes3.Some(A);
        OptionBytes3 d = LibOptionBytes3.Some(A);
        OptionBytes3 e = LibOptionBytes3.Some(B);
        OptionBytes3 f = LibOptionBytes3.Some(B);

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
        OptionBytes3 a = LibOptionBytes3.None();
        OptionBytes3 b = LibOptionBytes3.None();
        OptionBytes3 c = LibOptionBytes3.Some(A);
        OptionBytes3 d = LibOptionBytes3.Some(A);
        OptionBytes3 e = LibOptionBytes3.Some(B);
        OptionBytes3 f = LibOptionBytes3.Some(B);

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
        OptionBytes3 a = LibOptionBytes3.None();
        OptionBytes3 b = LibOptionBytes3.None();
        OptionBytes3 c = LibOptionBytes3.Some(A);
        OptionBytes3 d = LibOptionBytes3.Some(A);
        OptionBytes3 e = LibOptionBytes3.Some(B);
        OptionBytes3 f = LibOptionBytes3.Some(B);

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
        OptionBytes3 a = LibOptionBytes3.None();
        OptionBytes3 b = LibOptionBytes3.None();
        OptionBytes3 c = LibOptionBytes3.Some(A);
        OptionBytes3 d = LibOptionBytes3.Some(A);
        OptionBytes3 e = LibOptionBytes3.Some(B);
        OptionBytes3 f = LibOptionBytes3.Some(B);

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
        OptionBytes3 a = LibOptionBytes3.None();
        OptionBytes3 b = LibOptionBytes3.None();
        OptionBytes3 c = LibOptionBytes3.Some(A);
        OptionBytes3 d = LibOptionBytes3.Some(A);
        OptionBytes3 e = LibOptionBytes3.Some(B);
        OptionBytes3 f = LibOptionBytes3.Some(B);

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
        OptionBytes3 a = LibOptionBytes3.None();
        OptionBytes3 b = LibOptionBytes3.None();
        OptionBytes3 c = LibOptionBytes3.Some(A);
        OptionBytes3 d = LibOptionBytes3.Some(A);
        OptionBytes3 e = LibOptionBytes3.Some(B);
        OptionBytes3 f = LibOptionBytes3.Some(B);

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
        OptionBytes3 a = LibOptionBytes3.None();
        OptionBytes3 b = LibOptionBytes3.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionBytes3 a = LibOptionBytes3.None();
        OptionBytes3 b = LibOptionBytes3.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionBytes3 a = LibOptionBytes3.None();
        OptionBytes3 b = LibOptionBytes3.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionBytes3 a = LibOptionBytes3.None();
        OptionBytes3 b = LibOptionBytes3.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionBytes3 a = LibOptionBytes3.None();
        OptionBytes3 b = LibOptionBytes3.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionBytes3 a = LibOptionBytes3.None();
        OptionBytes3 b = LibOptionBytes3.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionBytes3 a = LibOptionBytes3.None();
        OptionBytes3 b = LibOptionBytes3.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionBytes3 a = LibOptionBytes3.None();
        OptionBytes3 b = LibOptionBytes3.Some(A);

        assertEq(a.map(other) == LibOptionBytes3.None(), true);
        assertEq(b.map(other) == LibOptionBytes3.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, bytes3 a, bytes3 b) public {
        OptionBytes3 aMaybe = aIsSome ? LibOptionBytes3.Some(a) : LibOptionBytes3.None();
        OptionBytes3 bMaybe = bIsSome ? LibOptionBytes3.Some(b) : LibOptionBytes3.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, bytes3 a, bytes3 b) public {
        OptionBytes3 aMaybe = aIsSome ? LibOptionBytes3.Some(a) : LibOptionBytes3.None();
        OptionBytes3 bMaybe = bIsSome ? LibOptionBytes3.Some(b) : LibOptionBytes3.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, bytes3 a, bytes3 b) public {
        OptionBytes3 aMaybe = aIsSome ? LibOptionBytes3.Some(a) : LibOptionBytes3.None();
        OptionBytes3 bMaybe = bIsSome ? LibOptionBytes3.Some(b) : LibOptionBytes3.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, bytes3 a, bytes3 b) public {
        OptionBytes3 aMaybe = aIsSome ? LibOptionBytes3.Some(a) : LibOptionBytes3.None();
        OptionBytes3 bMaybe = bIsSome ? LibOptionBytes3.Some(b) : LibOptionBytes3.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, bytes3 a, bytes3 b) public {
        OptionBytes3 aMaybe = aIsSome ? LibOptionBytes3.Some(a) : LibOptionBytes3.None();
        OptionBytes3 bMaybe = bIsSome ? LibOptionBytes3.Some(b) : LibOptionBytes3.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, bytes3 a, bytes3 b) public {
        OptionBytes3 aMaybe = aIsSome ? LibOptionBytes3.Some(a) : LibOptionBytes3.None();
        OptionBytes3 bMaybe = bIsSome ? LibOptionBytes3.Some(b) : LibOptionBytes3.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(bytes3 a) public {
        OptionBytes3 aMaybe = LibOptionBytes3.None();
        OptionBytes3 bMaybe = LibOptionBytes3.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(bytes3 a) public {
        OptionBytes3 aMaybe = LibOptionBytes3.None();
        OptionBytes3 bMaybe = LibOptionBytes3.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(bytes3 a) public {
        OptionBytes3 aMaybe = LibOptionBytes3.None();
        OptionBytes3 bMaybe = LibOptionBytes3.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(bytes3 a, string calldata message) public {
        OptionBytes3 aMaybe = LibOptionBytes3.None();
        OptionBytes3 bMaybe = LibOptionBytes3.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(bytes3 a) public {
        OptionBytes3 aMaybe = LibOptionBytes3.None();
        OptionBytes3 bMaybe = LibOptionBytes3.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(bytes3 a, bytes3 b) public {
        OptionBytes3 aMaybe = LibOptionBytes3.None();
        OptionBytes3 bMaybe = LibOptionBytes3.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(bytes3 a) public {
        OptionBytes3 aMaybe = LibOptionBytes3.None();
        OptionBytes3 bMaybe = LibOptionBytes3.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(bytes3 a) public {
        OptionBytes3 aMaybe = LibOptionBytes3.None();
        OptionBytes3 bMaybe = LibOptionBytes3.Some(a);

        assertEq(aMaybe.map(other) == LibOptionBytes3.None(), true);
        assertEq(bMaybe.map(other) == LibOptionBytes3.Some(other(a)), true);
    }
}
