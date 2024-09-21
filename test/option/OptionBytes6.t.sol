// SPDX-License-Identifier: AGPL-3.0-only OR MIT
pragma solidity 0.8.24;

import { OptionBytes6, LibOptionBytes6 } from "../../src/option/OptionBytes6.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

bytes6 constant A = bytes6(uint48(1));
bytes6 constant B = bytes6(uint48(2));

function initial() pure returns (bytes6 res) {
    return A;
}

function other(bytes6 self) pure returns (bytes6) {
    return self == A ? B : A;
}

contract OptionBytes6Test is Test {
    using LibOptionBytes6 for *;

    function testEq() public {
        OptionBytes6 a = LibOptionBytes6.None();
        OptionBytes6 b = LibOptionBytes6.None();
        OptionBytes6 c = LibOptionBytes6.Some(A);
        OptionBytes6 d = LibOptionBytes6.Some(A);
        OptionBytes6 e = LibOptionBytes6.Some(B);
        OptionBytes6 f = LibOptionBytes6.Some(B);

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
        OptionBytes6 a = LibOptionBytes6.None();
        OptionBytes6 b = LibOptionBytes6.None();
        OptionBytes6 c = LibOptionBytes6.Some(A);
        OptionBytes6 d = LibOptionBytes6.Some(A);
        OptionBytes6 e = LibOptionBytes6.Some(B);
        OptionBytes6 f = LibOptionBytes6.Some(B);

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
        OptionBytes6 a = LibOptionBytes6.None();
        OptionBytes6 b = LibOptionBytes6.None();
        OptionBytes6 c = LibOptionBytes6.Some(A);
        OptionBytes6 d = LibOptionBytes6.Some(A);
        OptionBytes6 e = LibOptionBytes6.Some(B);
        OptionBytes6 f = LibOptionBytes6.Some(B);

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
        OptionBytes6 a = LibOptionBytes6.None();
        OptionBytes6 b = LibOptionBytes6.None();
        OptionBytes6 c = LibOptionBytes6.Some(A);
        OptionBytes6 d = LibOptionBytes6.Some(A);
        OptionBytes6 e = LibOptionBytes6.Some(B);
        OptionBytes6 f = LibOptionBytes6.Some(B);

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
        OptionBytes6 a = LibOptionBytes6.None();
        OptionBytes6 b = LibOptionBytes6.None();
        OptionBytes6 c = LibOptionBytes6.Some(A);
        OptionBytes6 d = LibOptionBytes6.Some(A);
        OptionBytes6 e = LibOptionBytes6.Some(B);
        OptionBytes6 f = LibOptionBytes6.Some(B);

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
        OptionBytes6 a = LibOptionBytes6.None();
        OptionBytes6 b = LibOptionBytes6.None();
        OptionBytes6 c = LibOptionBytes6.Some(A);
        OptionBytes6 d = LibOptionBytes6.Some(A);
        OptionBytes6 e = LibOptionBytes6.Some(B);
        OptionBytes6 f = LibOptionBytes6.Some(B);

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
        OptionBytes6 a = LibOptionBytes6.None();
        OptionBytes6 b = LibOptionBytes6.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionBytes6 a = LibOptionBytes6.None();
        OptionBytes6 b = LibOptionBytes6.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionBytes6 a = LibOptionBytes6.None();
        OptionBytes6 b = LibOptionBytes6.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionBytes6 a = LibOptionBytes6.None();
        OptionBytes6 b = LibOptionBytes6.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionBytes6 a = LibOptionBytes6.None();
        OptionBytes6 b = LibOptionBytes6.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionBytes6 a = LibOptionBytes6.None();
        OptionBytes6 b = LibOptionBytes6.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionBytes6 a = LibOptionBytes6.None();
        OptionBytes6 b = LibOptionBytes6.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionBytes6 a = LibOptionBytes6.None();
        OptionBytes6 b = LibOptionBytes6.Some(A);

        assertEq(a.map(other) == LibOptionBytes6.None(), true);
        assertEq(b.map(other) == LibOptionBytes6.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, bytes6 a, bytes6 b) public {
        OptionBytes6 aMaybe = aIsSome ? LibOptionBytes6.Some(a) : LibOptionBytes6.None();
        OptionBytes6 bMaybe = bIsSome ? LibOptionBytes6.Some(b) : LibOptionBytes6.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, bytes6 a, bytes6 b) public {
        OptionBytes6 aMaybe = aIsSome ? LibOptionBytes6.Some(a) : LibOptionBytes6.None();
        OptionBytes6 bMaybe = bIsSome ? LibOptionBytes6.Some(b) : LibOptionBytes6.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, bytes6 a, bytes6 b) public {
        OptionBytes6 aMaybe = aIsSome ? LibOptionBytes6.Some(a) : LibOptionBytes6.None();
        OptionBytes6 bMaybe = bIsSome ? LibOptionBytes6.Some(b) : LibOptionBytes6.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, bytes6 a, bytes6 b) public {
        OptionBytes6 aMaybe = aIsSome ? LibOptionBytes6.Some(a) : LibOptionBytes6.None();
        OptionBytes6 bMaybe = bIsSome ? LibOptionBytes6.Some(b) : LibOptionBytes6.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, bytes6 a, bytes6 b) public {
        OptionBytes6 aMaybe = aIsSome ? LibOptionBytes6.Some(a) : LibOptionBytes6.None();
        OptionBytes6 bMaybe = bIsSome ? LibOptionBytes6.Some(b) : LibOptionBytes6.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, bytes6 a, bytes6 b) public {
        OptionBytes6 aMaybe = aIsSome ? LibOptionBytes6.Some(a) : LibOptionBytes6.None();
        OptionBytes6 bMaybe = bIsSome ? LibOptionBytes6.Some(b) : LibOptionBytes6.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(bytes6 a) public {
        OptionBytes6 aMaybe = LibOptionBytes6.None();
        OptionBytes6 bMaybe = LibOptionBytes6.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(bytes6 a) public {
        OptionBytes6 aMaybe = LibOptionBytes6.None();
        OptionBytes6 bMaybe = LibOptionBytes6.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(bytes6 a) public {
        OptionBytes6 aMaybe = LibOptionBytes6.None();
        OptionBytes6 bMaybe = LibOptionBytes6.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(bytes6 a, string calldata message) public {
        OptionBytes6 aMaybe = LibOptionBytes6.None();
        OptionBytes6 bMaybe = LibOptionBytes6.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(bytes6 a) public {
        OptionBytes6 aMaybe = LibOptionBytes6.None();
        OptionBytes6 bMaybe = LibOptionBytes6.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(bytes6 a, bytes6 b) public {
        OptionBytes6 aMaybe = LibOptionBytes6.None();
        OptionBytes6 bMaybe = LibOptionBytes6.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(bytes6 a) public {
        OptionBytes6 aMaybe = LibOptionBytes6.None();
        OptionBytes6 bMaybe = LibOptionBytes6.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(bytes6 a) public {
        OptionBytes6 aMaybe = LibOptionBytes6.None();
        OptionBytes6 bMaybe = LibOptionBytes6.Some(a);

        assertEq(aMaybe.map(other) == LibOptionBytes6.None(), true);
        assertEq(bMaybe.map(other) == LibOptionBytes6.Some(other(a)), true);
    }
}
