// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import { OptionAddress, LibOptionAddress } from "../../src/option/OptionAddress.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

address constant A = address(1);
address constant B = address(2);

function initial() pure returns (address res) {
    return A;
}

function other(address self) pure returns (address) {
    return self == A ? B : A;
}

contract OptionAddressTest is Test {
    using LibOptionAddress for *;

    function testEq() public {
        OptionAddress a = LibOptionAddress.None();
        OptionAddress b = LibOptionAddress.None();
        OptionAddress c = LibOptionAddress.Some(A);
        OptionAddress d = LibOptionAddress.Some(A);
        OptionAddress e = LibOptionAddress.Some(B);
        OptionAddress f = LibOptionAddress.Some(B);

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
        OptionAddress a = LibOptionAddress.None();
        OptionAddress b = LibOptionAddress.None();
        OptionAddress c = LibOptionAddress.Some(A);
        OptionAddress d = LibOptionAddress.Some(A);
        OptionAddress e = LibOptionAddress.Some(B);
        OptionAddress f = LibOptionAddress.Some(B);

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
        OptionAddress a = LibOptionAddress.None();
        OptionAddress b = LibOptionAddress.None();
        OptionAddress c = LibOptionAddress.Some(A);
        OptionAddress d = LibOptionAddress.Some(A);
        OptionAddress e = LibOptionAddress.Some(B);
        OptionAddress f = LibOptionAddress.Some(B);

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
        OptionAddress a = LibOptionAddress.None();
        OptionAddress b = LibOptionAddress.None();
        OptionAddress c = LibOptionAddress.Some(A);
        OptionAddress d = LibOptionAddress.Some(A);
        OptionAddress e = LibOptionAddress.Some(B);
        OptionAddress f = LibOptionAddress.Some(B);

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
        OptionAddress a = LibOptionAddress.None();
        OptionAddress b = LibOptionAddress.None();
        OptionAddress c = LibOptionAddress.Some(A);
        OptionAddress d = LibOptionAddress.Some(A);
        OptionAddress e = LibOptionAddress.Some(B);
        OptionAddress f = LibOptionAddress.Some(B);

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
        OptionAddress a = LibOptionAddress.None();
        OptionAddress b = LibOptionAddress.None();
        OptionAddress c = LibOptionAddress.Some(A);
        OptionAddress d = LibOptionAddress.Some(A);
        OptionAddress e = LibOptionAddress.Some(B);
        OptionAddress f = LibOptionAddress.Some(B);

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
        OptionAddress a = LibOptionAddress.None();
        OptionAddress b = LibOptionAddress.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionAddress a = LibOptionAddress.None();
        OptionAddress b = LibOptionAddress.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionAddress a = LibOptionAddress.None();
        OptionAddress b = LibOptionAddress.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionAddress a = LibOptionAddress.None();
        OptionAddress b = LibOptionAddress.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionAddress a = LibOptionAddress.None();
        OptionAddress b = LibOptionAddress.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionAddress a = LibOptionAddress.None();
        OptionAddress b = LibOptionAddress.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionAddress a = LibOptionAddress.None();
        OptionAddress b = LibOptionAddress.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionAddress a = LibOptionAddress.None();
        OptionAddress b = LibOptionAddress.Some(A);

        assertEq(a.map(other) == LibOptionAddress.None(), true);
        assertEq(b.map(other) == LibOptionAddress.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, address a, address b) public {
        OptionAddress aMaybe = aIsSome ? LibOptionAddress.Some(a) : LibOptionAddress.None();
        OptionAddress bMaybe = bIsSome ? LibOptionAddress.Some(b) : LibOptionAddress.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, address a, address b) public {
        OptionAddress aMaybe = aIsSome ? LibOptionAddress.Some(a) : LibOptionAddress.None();
        OptionAddress bMaybe = bIsSome ? LibOptionAddress.Some(b) : LibOptionAddress.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, address a, address b) public {
        OptionAddress aMaybe = aIsSome ? LibOptionAddress.Some(a) : LibOptionAddress.None();
        OptionAddress bMaybe = bIsSome ? LibOptionAddress.Some(b) : LibOptionAddress.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, address a, address b) public {
        OptionAddress aMaybe = aIsSome ? LibOptionAddress.Some(a) : LibOptionAddress.None();
        OptionAddress bMaybe = bIsSome ? LibOptionAddress.Some(b) : LibOptionAddress.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, address a, address b) public {
        OptionAddress aMaybe = aIsSome ? LibOptionAddress.Some(a) : LibOptionAddress.None();
        OptionAddress bMaybe = bIsSome ? LibOptionAddress.Some(b) : LibOptionAddress.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, address a, address b) public {
        OptionAddress aMaybe = aIsSome ? LibOptionAddress.Some(a) : LibOptionAddress.None();
        OptionAddress bMaybe = bIsSome ? LibOptionAddress.Some(b) : LibOptionAddress.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(address a) public {
        OptionAddress aMaybe = LibOptionAddress.None();
        OptionAddress bMaybe = LibOptionAddress.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(address a) public {
        OptionAddress aMaybe = LibOptionAddress.None();
        OptionAddress bMaybe = LibOptionAddress.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(address a) public {
        OptionAddress aMaybe = LibOptionAddress.None();
        OptionAddress bMaybe = LibOptionAddress.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(address a, string calldata message) public {
        OptionAddress aMaybe = LibOptionAddress.None();
        OptionAddress bMaybe = LibOptionAddress.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(address a) public {
        OptionAddress aMaybe = LibOptionAddress.None();
        OptionAddress bMaybe = LibOptionAddress.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(address a, address b) public {
        OptionAddress aMaybe = LibOptionAddress.None();
        OptionAddress bMaybe = LibOptionAddress.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(address a) public {
        OptionAddress aMaybe = LibOptionAddress.None();
        OptionAddress bMaybe = LibOptionAddress.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(address a) public {
        OptionAddress aMaybe = LibOptionAddress.None();
        OptionAddress bMaybe = LibOptionAddress.Some(a);

        assertEq(aMaybe.map(other) == LibOptionAddress.None(), true);
        assertEq(bMaybe.map(other) == LibOptionAddress.Some(other(a)), true);
    }
}
