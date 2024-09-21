// SPDX-License-Identifier: AGPL-3.0-only OR MIT
pragma solidity 0.8.24;

import { OptionBytes12, LibOptionBytes12 } from "../../src/option/OptionBytes12.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

bytes12 constant A = bytes12(uint96(1));
bytes12 constant B = bytes12(uint96(2));

function initial() pure returns (bytes12 res) {
    return A;
}

function other(bytes12 self) pure returns (bytes12) {
    return self == A ? B : A;
}

contract OptionBytes12Test is Test {
    using LibOptionBytes12 for *;

    function testEq() public {
        OptionBytes12 a = LibOptionBytes12.None();
        OptionBytes12 b = LibOptionBytes12.None();
        OptionBytes12 c = LibOptionBytes12.Some(A);
        OptionBytes12 d = LibOptionBytes12.Some(A);
        OptionBytes12 e = LibOptionBytes12.Some(B);
        OptionBytes12 f = LibOptionBytes12.Some(B);

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
        OptionBytes12 a = LibOptionBytes12.None();
        OptionBytes12 b = LibOptionBytes12.None();
        OptionBytes12 c = LibOptionBytes12.Some(A);
        OptionBytes12 d = LibOptionBytes12.Some(A);
        OptionBytes12 e = LibOptionBytes12.Some(B);
        OptionBytes12 f = LibOptionBytes12.Some(B);

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
        OptionBytes12 a = LibOptionBytes12.None();
        OptionBytes12 b = LibOptionBytes12.None();
        OptionBytes12 c = LibOptionBytes12.Some(A);
        OptionBytes12 d = LibOptionBytes12.Some(A);
        OptionBytes12 e = LibOptionBytes12.Some(B);
        OptionBytes12 f = LibOptionBytes12.Some(B);

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
        OptionBytes12 a = LibOptionBytes12.None();
        OptionBytes12 b = LibOptionBytes12.None();
        OptionBytes12 c = LibOptionBytes12.Some(A);
        OptionBytes12 d = LibOptionBytes12.Some(A);
        OptionBytes12 e = LibOptionBytes12.Some(B);
        OptionBytes12 f = LibOptionBytes12.Some(B);

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
        OptionBytes12 a = LibOptionBytes12.None();
        OptionBytes12 b = LibOptionBytes12.None();
        OptionBytes12 c = LibOptionBytes12.Some(A);
        OptionBytes12 d = LibOptionBytes12.Some(A);
        OptionBytes12 e = LibOptionBytes12.Some(B);
        OptionBytes12 f = LibOptionBytes12.Some(B);

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
        OptionBytes12 a = LibOptionBytes12.None();
        OptionBytes12 b = LibOptionBytes12.None();
        OptionBytes12 c = LibOptionBytes12.Some(A);
        OptionBytes12 d = LibOptionBytes12.Some(A);
        OptionBytes12 e = LibOptionBytes12.Some(B);
        OptionBytes12 f = LibOptionBytes12.Some(B);

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
        OptionBytes12 a = LibOptionBytes12.None();
        OptionBytes12 b = LibOptionBytes12.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionBytes12 a = LibOptionBytes12.None();
        OptionBytes12 b = LibOptionBytes12.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionBytes12 a = LibOptionBytes12.None();
        OptionBytes12 b = LibOptionBytes12.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionBytes12 a = LibOptionBytes12.None();
        OptionBytes12 b = LibOptionBytes12.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionBytes12 a = LibOptionBytes12.None();
        OptionBytes12 b = LibOptionBytes12.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionBytes12 a = LibOptionBytes12.None();
        OptionBytes12 b = LibOptionBytes12.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionBytes12 a = LibOptionBytes12.None();
        OptionBytes12 b = LibOptionBytes12.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionBytes12 a = LibOptionBytes12.None();
        OptionBytes12 b = LibOptionBytes12.Some(A);

        assertEq(a.map(other) == LibOptionBytes12.None(), true);
        assertEq(b.map(other) == LibOptionBytes12.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, bytes12 a, bytes12 b) public {
        OptionBytes12 aMaybe = aIsSome ? LibOptionBytes12.Some(a) : LibOptionBytes12.None();
        OptionBytes12 bMaybe = bIsSome ? LibOptionBytes12.Some(b) : LibOptionBytes12.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, bytes12 a, bytes12 b) public {
        OptionBytes12 aMaybe = aIsSome ? LibOptionBytes12.Some(a) : LibOptionBytes12.None();
        OptionBytes12 bMaybe = bIsSome ? LibOptionBytes12.Some(b) : LibOptionBytes12.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, bytes12 a, bytes12 b) public {
        OptionBytes12 aMaybe = aIsSome ? LibOptionBytes12.Some(a) : LibOptionBytes12.None();
        OptionBytes12 bMaybe = bIsSome ? LibOptionBytes12.Some(b) : LibOptionBytes12.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, bytes12 a, bytes12 b) public {
        OptionBytes12 aMaybe = aIsSome ? LibOptionBytes12.Some(a) : LibOptionBytes12.None();
        OptionBytes12 bMaybe = bIsSome ? LibOptionBytes12.Some(b) : LibOptionBytes12.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, bytes12 a, bytes12 b) public {
        OptionBytes12 aMaybe = aIsSome ? LibOptionBytes12.Some(a) : LibOptionBytes12.None();
        OptionBytes12 bMaybe = bIsSome ? LibOptionBytes12.Some(b) : LibOptionBytes12.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, bytes12 a, bytes12 b) public {
        OptionBytes12 aMaybe = aIsSome ? LibOptionBytes12.Some(a) : LibOptionBytes12.None();
        OptionBytes12 bMaybe = bIsSome ? LibOptionBytes12.Some(b) : LibOptionBytes12.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(bytes12 a) public {
        OptionBytes12 aMaybe = LibOptionBytes12.None();
        OptionBytes12 bMaybe = LibOptionBytes12.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(bytes12 a) public {
        OptionBytes12 aMaybe = LibOptionBytes12.None();
        OptionBytes12 bMaybe = LibOptionBytes12.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(bytes12 a) public {
        OptionBytes12 aMaybe = LibOptionBytes12.None();
        OptionBytes12 bMaybe = LibOptionBytes12.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(bytes12 a, string calldata message) public {
        OptionBytes12 aMaybe = LibOptionBytes12.None();
        OptionBytes12 bMaybe = LibOptionBytes12.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(bytes12 a) public {
        OptionBytes12 aMaybe = LibOptionBytes12.None();
        OptionBytes12 bMaybe = LibOptionBytes12.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(bytes12 a, bytes12 b) public {
        OptionBytes12 aMaybe = LibOptionBytes12.None();
        OptionBytes12 bMaybe = LibOptionBytes12.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(bytes12 a) public {
        OptionBytes12 aMaybe = LibOptionBytes12.None();
        OptionBytes12 bMaybe = LibOptionBytes12.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(bytes12 a) public {
        OptionBytes12 aMaybe = LibOptionBytes12.None();
        OptionBytes12 bMaybe = LibOptionBytes12.Some(a);

        assertEq(aMaybe.map(other) == LibOptionBytes12.None(), true);
        assertEq(bMaybe.map(other) == LibOptionBytes12.Some(other(a)), true);
    }
}
