// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { OptionInt40, LibOptionInt40 } from "../../src/option/OptionInt40.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

int40 constant A = int40(1);
int40 constant B = int40(2);

function initial() pure returns (int40 res) {
    return A;
}

function other(int40 self) pure returns (int40) {
    return self == A ? B : A;
}

contract OptionInt40Test is Test {
    using LibOptionInt40 for *;

    function testEq() public {
        OptionInt40 a = LibOptionInt40.None();
        OptionInt40 b = LibOptionInt40.None();
        OptionInt40 c = LibOptionInt40.Some(A);
        OptionInt40 d = LibOptionInt40.Some(A);
        OptionInt40 e = LibOptionInt40.Some(B);
        OptionInt40 f = LibOptionInt40.Some(B);

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
        OptionInt40 a = LibOptionInt40.None();
        OptionInt40 b = LibOptionInt40.None();
        OptionInt40 c = LibOptionInt40.Some(A);
        OptionInt40 d = LibOptionInt40.Some(A);
        OptionInt40 e = LibOptionInt40.Some(B);
        OptionInt40 f = LibOptionInt40.Some(B);

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
        OptionInt40 a = LibOptionInt40.None();
        OptionInt40 b = LibOptionInt40.None();
        OptionInt40 c = LibOptionInt40.Some(A);
        OptionInt40 d = LibOptionInt40.Some(A);
        OptionInt40 e = LibOptionInt40.Some(B);
        OptionInt40 f = LibOptionInt40.Some(B);

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
        OptionInt40 a = LibOptionInt40.None();
        OptionInt40 b = LibOptionInt40.None();
        OptionInt40 c = LibOptionInt40.Some(A);
        OptionInt40 d = LibOptionInt40.Some(A);
        OptionInt40 e = LibOptionInt40.Some(B);
        OptionInt40 f = LibOptionInt40.Some(B);

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
        OptionInt40 a = LibOptionInt40.None();
        OptionInt40 b = LibOptionInt40.None();
        OptionInt40 c = LibOptionInt40.Some(A);
        OptionInt40 d = LibOptionInt40.Some(A);
        OptionInt40 e = LibOptionInt40.Some(B);
        OptionInt40 f = LibOptionInt40.Some(B);

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
        OptionInt40 a = LibOptionInt40.None();
        OptionInt40 b = LibOptionInt40.None();
        OptionInt40 c = LibOptionInt40.Some(A);
        OptionInt40 d = LibOptionInt40.Some(A);
        OptionInt40 e = LibOptionInt40.Some(B);
        OptionInt40 f = LibOptionInt40.Some(B);

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
        OptionInt40 a = LibOptionInt40.None();
        OptionInt40 b = LibOptionInt40.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionInt40 a = LibOptionInt40.None();
        OptionInt40 b = LibOptionInt40.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionInt40 a = LibOptionInt40.None();
        OptionInt40 b = LibOptionInt40.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionInt40 a = LibOptionInt40.None();
        OptionInt40 b = LibOptionInt40.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionInt40 a = LibOptionInt40.None();
        OptionInt40 b = LibOptionInt40.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionInt40 a = LibOptionInt40.None();
        OptionInt40 b = LibOptionInt40.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionInt40 a = LibOptionInt40.None();
        OptionInt40 b = LibOptionInt40.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionInt40 a = LibOptionInt40.None();
        OptionInt40 b = LibOptionInt40.Some(A);

        assertEq(a.map(other) == LibOptionInt40.None(), true);
        assertEq(b.map(other) == LibOptionInt40.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, int40 a, int40 b) public {
        OptionInt40 aMaybe = aIsSome ? LibOptionInt40.Some(a) : LibOptionInt40.None();
        OptionInt40 bMaybe = bIsSome ? LibOptionInt40.Some(b) : LibOptionInt40.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, int40 a, int40 b) public {
        OptionInt40 aMaybe = aIsSome ? LibOptionInt40.Some(a) : LibOptionInt40.None();
        OptionInt40 bMaybe = bIsSome ? LibOptionInt40.Some(b) : LibOptionInt40.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, int40 a, int40 b) public {
        OptionInt40 aMaybe = aIsSome ? LibOptionInt40.Some(a) : LibOptionInt40.None();
        OptionInt40 bMaybe = bIsSome ? LibOptionInt40.Some(b) : LibOptionInt40.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, int40 a, int40 b) public {
        OptionInt40 aMaybe = aIsSome ? LibOptionInt40.Some(a) : LibOptionInt40.None();
        OptionInt40 bMaybe = bIsSome ? LibOptionInt40.Some(b) : LibOptionInt40.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, int40 a, int40 b) public {
        OptionInt40 aMaybe = aIsSome ? LibOptionInt40.Some(a) : LibOptionInt40.None();
        OptionInt40 bMaybe = bIsSome ? LibOptionInt40.Some(b) : LibOptionInt40.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, int40 a, int40 b) public {
        OptionInt40 aMaybe = aIsSome ? LibOptionInt40.Some(a) : LibOptionInt40.None();
        OptionInt40 bMaybe = bIsSome ? LibOptionInt40.Some(b) : LibOptionInt40.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(int40 a) public {
        OptionInt40 aMaybe = LibOptionInt40.None();
        OptionInt40 bMaybe = LibOptionInt40.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(int40 a) public {
        OptionInt40 aMaybe = LibOptionInt40.None();
        OptionInt40 bMaybe = LibOptionInt40.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(int40 a) public {
        OptionInt40 aMaybe = LibOptionInt40.None();
        OptionInt40 bMaybe = LibOptionInt40.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(int40 a, string calldata message) public {
        OptionInt40 aMaybe = LibOptionInt40.None();
        OptionInt40 bMaybe = LibOptionInt40.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(int40 a) public {
        OptionInt40 aMaybe = LibOptionInt40.None();
        OptionInt40 bMaybe = LibOptionInt40.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(int40 a, int40 b) public {
        OptionInt40 aMaybe = LibOptionInt40.None();
        OptionInt40 bMaybe = LibOptionInt40.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(int40 a) public {
        OptionInt40 aMaybe = LibOptionInt40.None();
        OptionInt40 bMaybe = LibOptionInt40.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(int40 a) public {
        OptionInt40 aMaybe = LibOptionInt40.None();
        OptionInt40 bMaybe = LibOptionInt40.Some(a);

        assertEq(aMaybe.map(other) == LibOptionInt40.None(), true);
        assertEq(bMaybe.map(other) == LibOptionInt40.Some(other(a)), true);
    }
}
