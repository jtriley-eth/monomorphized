// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { OptionBytes2, LibOptionBytes2 } from "../../src/option/OptionBytes2.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

bytes2 constant A = bytes2(uint16(1));
bytes2 constant B = bytes2(uint16(2));

function initial() pure returns (bytes2 res) {
    return A;
}

function other(bytes2 self) pure returns (bytes2) {
    return self == A ? B : A;
}

contract OptionBytes2Test is Test {
    using LibOptionBytes2 for *;

    function testEq() public {
        OptionBytes2 a = LibOptionBytes2.None();
        OptionBytes2 b = LibOptionBytes2.None();
        OptionBytes2 c = LibOptionBytes2.Some(A);
        OptionBytes2 d = LibOptionBytes2.Some(A);
        OptionBytes2 e = LibOptionBytes2.Some(B);
        OptionBytes2 f = LibOptionBytes2.Some(B);

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
        OptionBytes2 a = LibOptionBytes2.None();
        OptionBytes2 b = LibOptionBytes2.None();
        OptionBytes2 c = LibOptionBytes2.Some(A);
        OptionBytes2 d = LibOptionBytes2.Some(A);
        OptionBytes2 e = LibOptionBytes2.Some(B);
        OptionBytes2 f = LibOptionBytes2.Some(B);

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
        OptionBytes2 a = LibOptionBytes2.None();
        OptionBytes2 b = LibOptionBytes2.None();
        OptionBytes2 c = LibOptionBytes2.Some(A);
        OptionBytes2 d = LibOptionBytes2.Some(A);
        OptionBytes2 e = LibOptionBytes2.Some(B);
        OptionBytes2 f = LibOptionBytes2.Some(B);

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
        OptionBytes2 a = LibOptionBytes2.None();
        OptionBytes2 b = LibOptionBytes2.None();
        OptionBytes2 c = LibOptionBytes2.Some(A);
        OptionBytes2 d = LibOptionBytes2.Some(A);
        OptionBytes2 e = LibOptionBytes2.Some(B);
        OptionBytes2 f = LibOptionBytes2.Some(B);

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
        OptionBytes2 a = LibOptionBytes2.None();
        OptionBytes2 b = LibOptionBytes2.None();
        OptionBytes2 c = LibOptionBytes2.Some(A);
        OptionBytes2 d = LibOptionBytes2.Some(A);
        OptionBytes2 e = LibOptionBytes2.Some(B);
        OptionBytes2 f = LibOptionBytes2.Some(B);

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
        OptionBytes2 a = LibOptionBytes2.None();
        OptionBytes2 b = LibOptionBytes2.None();
        OptionBytes2 c = LibOptionBytes2.Some(A);
        OptionBytes2 d = LibOptionBytes2.Some(A);
        OptionBytes2 e = LibOptionBytes2.Some(B);
        OptionBytes2 f = LibOptionBytes2.Some(B);

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
        OptionBytes2 a = LibOptionBytes2.None();
        OptionBytes2 b = LibOptionBytes2.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionBytes2 a = LibOptionBytes2.None();
        OptionBytes2 b = LibOptionBytes2.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionBytes2 a = LibOptionBytes2.None();
        OptionBytes2 b = LibOptionBytes2.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionBytes2 a = LibOptionBytes2.None();
        OptionBytes2 b = LibOptionBytes2.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionBytes2 a = LibOptionBytes2.None();
        OptionBytes2 b = LibOptionBytes2.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionBytes2 a = LibOptionBytes2.None();
        OptionBytes2 b = LibOptionBytes2.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionBytes2 a = LibOptionBytes2.None();
        OptionBytes2 b = LibOptionBytes2.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionBytes2 a = LibOptionBytes2.None();
        OptionBytes2 b = LibOptionBytes2.Some(A);

        assertEq(a.map(other) == LibOptionBytes2.None(), true);
        assertEq(b.map(other) == LibOptionBytes2.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, bytes2 a, bytes2 b) public {
        OptionBytes2 aMaybe = aIsSome ? LibOptionBytes2.Some(a) : LibOptionBytes2.None();
        OptionBytes2 bMaybe = bIsSome ? LibOptionBytes2.Some(b) : LibOptionBytes2.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, bytes2 a, bytes2 b) public {
        OptionBytes2 aMaybe = aIsSome ? LibOptionBytes2.Some(a) : LibOptionBytes2.None();
        OptionBytes2 bMaybe = bIsSome ? LibOptionBytes2.Some(b) : LibOptionBytes2.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, bytes2 a, bytes2 b) public {
        OptionBytes2 aMaybe = aIsSome ? LibOptionBytes2.Some(a) : LibOptionBytes2.None();
        OptionBytes2 bMaybe = bIsSome ? LibOptionBytes2.Some(b) : LibOptionBytes2.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, bytes2 a, bytes2 b) public {
        OptionBytes2 aMaybe = aIsSome ? LibOptionBytes2.Some(a) : LibOptionBytes2.None();
        OptionBytes2 bMaybe = bIsSome ? LibOptionBytes2.Some(b) : LibOptionBytes2.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, bytes2 a, bytes2 b) public {
        OptionBytes2 aMaybe = aIsSome ? LibOptionBytes2.Some(a) : LibOptionBytes2.None();
        OptionBytes2 bMaybe = bIsSome ? LibOptionBytes2.Some(b) : LibOptionBytes2.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, bytes2 a, bytes2 b) public {
        OptionBytes2 aMaybe = aIsSome ? LibOptionBytes2.Some(a) : LibOptionBytes2.None();
        OptionBytes2 bMaybe = bIsSome ? LibOptionBytes2.Some(b) : LibOptionBytes2.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(bytes2 a) public {
        OptionBytes2 aMaybe = LibOptionBytes2.None();
        OptionBytes2 bMaybe = LibOptionBytes2.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(bytes2 a) public {
        OptionBytes2 aMaybe = LibOptionBytes2.None();
        OptionBytes2 bMaybe = LibOptionBytes2.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(bytes2 a) public {
        OptionBytes2 aMaybe = LibOptionBytes2.None();
        OptionBytes2 bMaybe = LibOptionBytes2.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(bytes2 a, string calldata message) public {
        OptionBytes2 aMaybe = LibOptionBytes2.None();
        OptionBytes2 bMaybe = LibOptionBytes2.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(bytes2 a) public {
        OptionBytes2 aMaybe = LibOptionBytes2.None();
        OptionBytes2 bMaybe = LibOptionBytes2.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(bytes2 a, bytes2 b) public {
        OptionBytes2 aMaybe = LibOptionBytes2.None();
        OptionBytes2 bMaybe = LibOptionBytes2.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(bytes2 a) public {
        OptionBytes2 aMaybe = LibOptionBytes2.None();
        OptionBytes2 bMaybe = LibOptionBytes2.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(bytes2 a) public {
        OptionBytes2 aMaybe = LibOptionBytes2.None();
        OptionBytes2 bMaybe = LibOptionBytes2.Some(a);

        assertEq(aMaybe.map(other) == LibOptionBytes2.None(), true);
        assertEq(bMaybe.map(other) == LibOptionBytes2.Some(other(a)), true);
    }
}
