// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { OptionUint152, LibOptionUint152 } from "../../src/option/OptionUint152.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

uint152 constant A = uint152(1);
uint152 constant B = uint152(2);

function initial() pure returns (uint152 res) {
    return A;
}

function other(uint152 self) pure returns (uint152) {
    return self == A ? B : A;
}

contract OptionUint152Test is Test {
    using LibOptionUint152 for *;

    function testEq() public {
        OptionUint152 a = LibOptionUint152.None();
        OptionUint152 b = LibOptionUint152.None();
        OptionUint152 c = LibOptionUint152.Some(A);
        OptionUint152 d = LibOptionUint152.Some(A);
        OptionUint152 e = LibOptionUint152.Some(B);
        OptionUint152 f = LibOptionUint152.Some(B);

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
        OptionUint152 a = LibOptionUint152.None();
        OptionUint152 b = LibOptionUint152.None();
        OptionUint152 c = LibOptionUint152.Some(A);
        OptionUint152 d = LibOptionUint152.Some(A);
        OptionUint152 e = LibOptionUint152.Some(B);
        OptionUint152 f = LibOptionUint152.Some(B);

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
        OptionUint152 a = LibOptionUint152.None();
        OptionUint152 b = LibOptionUint152.None();
        OptionUint152 c = LibOptionUint152.Some(A);
        OptionUint152 d = LibOptionUint152.Some(A);
        OptionUint152 e = LibOptionUint152.Some(B);
        OptionUint152 f = LibOptionUint152.Some(B);

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
        OptionUint152 a = LibOptionUint152.None();
        OptionUint152 b = LibOptionUint152.None();
        OptionUint152 c = LibOptionUint152.Some(A);
        OptionUint152 d = LibOptionUint152.Some(A);
        OptionUint152 e = LibOptionUint152.Some(B);
        OptionUint152 f = LibOptionUint152.Some(B);

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
        OptionUint152 a = LibOptionUint152.None();
        OptionUint152 b = LibOptionUint152.None();
        OptionUint152 c = LibOptionUint152.Some(A);
        OptionUint152 d = LibOptionUint152.Some(A);
        OptionUint152 e = LibOptionUint152.Some(B);
        OptionUint152 f = LibOptionUint152.Some(B);

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
        OptionUint152 a = LibOptionUint152.None();
        OptionUint152 b = LibOptionUint152.None();
        OptionUint152 c = LibOptionUint152.Some(A);
        OptionUint152 d = LibOptionUint152.Some(A);
        OptionUint152 e = LibOptionUint152.Some(B);
        OptionUint152 f = LibOptionUint152.Some(B);

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
        OptionUint152 a = LibOptionUint152.None();
        OptionUint152 b = LibOptionUint152.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionUint152 a = LibOptionUint152.None();
        OptionUint152 b = LibOptionUint152.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionUint152 a = LibOptionUint152.None();
        OptionUint152 b = LibOptionUint152.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionUint152 a = LibOptionUint152.None();
        OptionUint152 b = LibOptionUint152.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionUint152 a = LibOptionUint152.None();
        OptionUint152 b = LibOptionUint152.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionUint152 a = LibOptionUint152.None();
        OptionUint152 b = LibOptionUint152.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionUint152 a = LibOptionUint152.None();
        OptionUint152 b = LibOptionUint152.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionUint152 a = LibOptionUint152.None();
        OptionUint152 b = LibOptionUint152.Some(A);

        assertEq(a.map(other) == LibOptionUint152.None(), true);
        assertEq(b.map(other) == LibOptionUint152.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, uint152 a, uint152 b) public {
        OptionUint152 aMaybe = aIsSome ? LibOptionUint152.Some(a) : LibOptionUint152.None();
        OptionUint152 bMaybe = bIsSome ? LibOptionUint152.Some(b) : LibOptionUint152.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, uint152 a, uint152 b) public {
        OptionUint152 aMaybe = aIsSome ? LibOptionUint152.Some(a) : LibOptionUint152.None();
        OptionUint152 bMaybe = bIsSome ? LibOptionUint152.Some(b) : LibOptionUint152.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, uint152 a, uint152 b) public {
        OptionUint152 aMaybe = aIsSome ? LibOptionUint152.Some(a) : LibOptionUint152.None();
        OptionUint152 bMaybe = bIsSome ? LibOptionUint152.Some(b) : LibOptionUint152.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, uint152 a, uint152 b) public {
        OptionUint152 aMaybe = aIsSome ? LibOptionUint152.Some(a) : LibOptionUint152.None();
        OptionUint152 bMaybe = bIsSome ? LibOptionUint152.Some(b) : LibOptionUint152.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, uint152 a, uint152 b) public {
        OptionUint152 aMaybe = aIsSome ? LibOptionUint152.Some(a) : LibOptionUint152.None();
        OptionUint152 bMaybe = bIsSome ? LibOptionUint152.Some(b) : LibOptionUint152.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, uint152 a, uint152 b) public {
        OptionUint152 aMaybe = aIsSome ? LibOptionUint152.Some(a) : LibOptionUint152.None();
        OptionUint152 bMaybe = bIsSome ? LibOptionUint152.Some(b) : LibOptionUint152.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(uint152 a) public {
        OptionUint152 aMaybe = LibOptionUint152.None();
        OptionUint152 bMaybe = LibOptionUint152.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(uint152 a) public {
        OptionUint152 aMaybe = LibOptionUint152.None();
        OptionUint152 bMaybe = LibOptionUint152.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(uint152 a) public {
        OptionUint152 aMaybe = LibOptionUint152.None();
        OptionUint152 bMaybe = LibOptionUint152.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(uint152 a, string calldata message) public {
        OptionUint152 aMaybe = LibOptionUint152.None();
        OptionUint152 bMaybe = LibOptionUint152.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(uint152 a) public {
        OptionUint152 aMaybe = LibOptionUint152.None();
        OptionUint152 bMaybe = LibOptionUint152.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(uint152 a, uint152 b) public {
        OptionUint152 aMaybe = LibOptionUint152.None();
        OptionUint152 bMaybe = LibOptionUint152.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(uint152 a) public {
        OptionUint152 aMaybe = LibOptionUint152.None();
        OptionUint152 bMaybe = LibOptionUint152.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(uint152 a) public {
        OptionUint152 aMaybe = LibOptionUint152.None();
        OptionUint152 bMaybe = LibOptionUint152.Some(a);

        assertEq(aMaybe.map(other) == LibOptionUint152.None(), true);
        assertEq(bMaybe.map(other) == LibOptionUint152.Some(other(a)), true);
    }
}
