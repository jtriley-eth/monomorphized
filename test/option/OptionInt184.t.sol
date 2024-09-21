// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { OptionInt184, LibOptionInt184 } from "../../src/option/OptionInt184.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

int184 constant A = int184(1);
int184 constant B = int184(2);

function initial() pure returns (int184 res) {
    return A;
}

function other(int184 self) pure returns (int184) {
    return self == A ? B : A;
}

contract OptionInt184Test is Test {
    using LibOptionInt184 for *;

    function testEq() public {
        OptionInt184 a = LibOptionInt184.None();
        OptionInt184 b = LibOptionInt184.None();
        OptionInt184 c = LibOptionInt184.Some(A);
        OptionInt184 d = LibOptionInt184.Some(A);
        OptionInt184 e = LibOptionInt184.Some(B);
        OptionInt184 f = LibOptionInt184.Some(B);

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
        OptionInt184 a = LibOptionInt184.None();
        OptionInt184 b = LibOptionInt184.None();
        OptionInt184 c = LibOptionInt184.Some(A);
        OptionInt184 d = LibOptionInt184.Some(A);
        OptionInt184 e = LibOptionInt184.Some(B);
        OptionInt184 f = LibOptionInt184.Some(B);

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
        OptionInt184 a = LibOptionInt184.None();
        OptionInt184 b = LibOptionInt184.None();
        OptionInt184 c = LibOptionInt184.Some(A);
        OptionInt184 d = LibOptionInt184.Some(A);
        OptionInt184 e = LibOptionInt184.Some(B);
        OptionInt184 f = LibOptionInt184.Some(B);

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
        OptionInt184 a = LibOptionInt184.None();
        OptionInt184 b = LibOptionInt184.None();
        OptionInt184 c = LibOptionInt184.Some(A);
        OptionInt184 d = LibOptionInt184.Some(A);
        OptionInt184 e = LibOptionInt184.Some(B);
        OptionInt184 f = LibOptionInt184.Some(B);

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
        OptionInt184 a = LibOptionInt184.None();
        OptionInt184 b = LibOptionInt184.None();
        OptionInt184 c = LibOptionInt184.Some(A);
        OptionInt184 d = LibOptionInt184.Some(A);
        OptionInt184 e = LibOptionInt184.Some(B);
        OptionInt184 f = LibOptionInt184.Some(B);

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
        OptionInt184 a = LibOptionInt184.None();
        OptionInt184 b = LibOptionInt184.None();
        OptionInt184 c = LibOptionInt184.Some(A);
        OptionInt184 d = LibOptionInt184.Some(A);
        OptionInt184 e = LibOptionInt184.Some(B);
        OptionInt184 f = LibOptionInt184.Some(B);

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
        OptionInt184 a = LibOptionInt184.None();
        OptionInt184 b = LibOptionInt184.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionInt184 a = LibOptionInt184.None();
        OptionInt184 b = LibOptionInt184.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionInt184 a = LibOptionInt184.None();
        OptionInt184 b = LibOptionInt184.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionInt184 a = LibOptionInt184.None();
        OptionInt184 b = LibOptionInt184.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionInt184 a = LibOptionInt184.None();
        OptionInt184 b = LibOptionInt184.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionInt184 a = LibOptionInt184.None();
        OptionInt184 b = LibOptionInt184.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionInt184 a = LibOptionInt184.None();
        OptionInt184 b = LibOptionInt184.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionInt184 a = LibOptionInt184.None();
        OptionInt184 b = LibOptionInt184.Some(A);

        assertEq(a.map(other) == LibOptionInt184.None(), true);
        assertEq(b.map(other) == LibOptionInt184.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, int184 a, int184 b) public {
        OptionInt184 aMaybe = aIsSome ? LibOptionInt184.Some(a) : LibOptionInt184.None();
        OptionInt184 bMaybe = bIsSome ? LibOptionInt184.Some(b) : LibOptionInt184.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, int184 a, int184 b) public {
        OptionInt184 aMaybe = aIsSome ? LibOptionInt184.Some(a) : LibOptionInt184.None();
        OptionInt184 bMaybe = bIsSome ? LibOptionInt184.Some(b) : LibOptionInt184.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, int184 a, int184 b) public {
        OptionInt184 aMaybe = aIsSome ? LibOptionInt184.Some(a) : LibOptionInt184.None();
        OptionInt184 bMaybe = bIsSome ? LibOptionInt184.Some(b) : LibOptionInt184.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, int184 a, int184 b) public {
        OptionInt184 aMaybe = aIsSome ? LibOptionInt184.Some(a) : LibOptionInt184.None();
        OptionInt184 bMaybe = bIsSome ? LibOptionInt184.Some(b) : LibOptionInt184.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, int184 a, int184 b) public {
        OptionInt184 aMaybe = aIsSome ? LibOptionInt184.Some(a) : LibOptionInt184.None();
        OptionInt184 bMaybe = bIsSome ? LibOptionInt184.Some(b) : LibOptionInt184.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, int184 a, int184 b) public {
        OptionInt184 aMaybe = aIsSome ? LibOptionInt184.Some(a) : LibOptionInt184.None();
        OptionInt184 bMaybe = bIsSome ? LibOptionInt184.Some(b) : LibOptionInt184.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(int184 a) public {
        OptionInt184 aMaybe = LibOptionInt184.None();
        OptionInt184 bMaybe = LibOptionInt184.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(int184 a) public {
        OptionInt184 aMaybe = LibOptionInt184.None();
        OptionInt184 bMaybe = LibOptionInt184.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(int184 a) public {
        OptionInt184 aMaybe = LibOptionInt184.None();
        OptionInt184 bMaybe = LibOptionInt184.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(int184 a, string calldata message) public {
        OptionInt184 aMaybe = LibOptionInt184.None();
        OptionInt184 bMaybe = LibOptionInt184.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(int184 a) public {
        OptionInt184 aMaybe = LibOptionInt184.None();
        OptionInt184 bMaybe = LibOptionInt184.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(int184 a, int184 b) public {
        OptionInt184 aMaybe = LibOptionInt184.None();
        OptionInt184 bMaybe = LibOptionInt184.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(int184 a) public {
        OptionInt184 aMaybe = LibOptionInt184.None();
        OptionInt184 bMaybe = LibOptionInt184.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(int184 a) public {
        OptionInt184 aMaybe = LibOptionInt184.None();
        OptionInt184 bMaybe = LibOptionInt184.Some(a);

        assertEq(aMaybe.map(other) == LibOptionInt184.None(), true);
        assertEq(bMaybe.map(other) == LibOptionInt184.Some(other(a)), true);
    }
}
