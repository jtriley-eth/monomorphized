// SPDX-License-Identifier: AGPL-3.0-only OR MIT
pragma solidity 0.8.24;

import { OptionBool, LibOptionBool } from "../../src/option/OptionBool.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

bool constant A = false;
bool constant B = true;

function initial() pure returns (bool res) {
    return A;
}

function other(bool self) pure returns (bool) {
    return self == A ? B : A;
}

contract OptionBoolTest is Test {
    using LibOptionBool for *;

    function testEq() public {
        OptionBool a = LibOptionBool.None();
        OptionBool b = LibOptionBool.None();
        OptionBool c = LibOptionBool.Some(A);
        OptionBool d = LibOptionBool.Some(A);
        OptionBool e = LibOptionBool.Some(B);
        OptionBool f = LibOptionBool.Some(B);

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
        OptionBool a = LibOptionBool.None();
        OptionBool b = LibOptionBool.None();
        OptionBool c = LibOptionBool.Some(A);
        OptionBool d = LibOptionBool.Some(A);
        OptionBool e = LibOptionBool.Some(B);
        OptionBool f = LibOptionBool.Some(B);

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
        OptionBool a = LibOptionBool.None();
        OptionBool b = LibOptionBool.None();
        OptionBool c = LibOptionBool.Some(A);
        OptionBool d = LibOptionBool.Some(A);
        OptionBool e = LibOptionBool.Some(B);
        OptionBool f = LibOptionBool.Some(B);

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
        OptionBool a = LibOptionBool.None();
        OptionBool b = LibOptionBool.None();
        OptionBool c = LibOptionBool.Some(A);
        OptionBool d = LibOptionBool.Some(A);
        OptionBool e = LibOptionBool.Some(B);
        OptionBool f = LibOptionBool.Some(B);

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
        OptionBool a = LibOptionBool.None();
        OptionBool b = LibOptionBool.None();
        OptionBool c = LibOptionBool.Some(A);
        OptionBool d = LibOptionBool.Some(A);
        OptionBool e = LibOptionBool.Some(B);
        OptionBool f = LibOptionBool.Some(B);

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
        OptionBool a = LibOptionBool.None();
        OptionBool b = LibOptionBool.None();
        OptionBool c = LibOptionBool.Some(A);
        OptionBool d = LibOptionBool.Some(A);
        OptionBool e = LibOptionBool.Some(B);
        OptionBool f = LibOptionBool.Some(B);

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
        OptionBool a = LibOptionBool.None();
        OptionBool b = LibOptionBool.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        OptionBool a = LibOptionBool.None();
        OptionBool b = LibOptionBool.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        OptionBool a = LibOptionBool.None();
        OptionBool b = LibOptionBool.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        OptionBool a = LibOptionBool.None();
        OptionBool b = LibOptionBool.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        OptionBool a = LibOptionBool.None();
        OptionBool b = LibOptionBool.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        OptionBool a = LibOptionBool.None();
        OptionBool b = LibOptionBool.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        OptionBool a = LibOptionBool.None();
        OptionBool b = LibOptionBool.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        OptionBool a = LibOptionBool.None();
        OptionBool b = LibOptionBool.Some(A);

        assertEq(a.map(other) == LibOptionBool.None(), true);
        assertEq(b.map(other) == LibOptionBool.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, bool a, bool b) public {
        OptionBool aMaybe = aIsSome ? LibOptionBool.Some(a) : LibOptionBool.None();
        OptionBool bMaybe = bIsSome ? LibOptionBool.Some(b) : LibOptionBool.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, bool a, bool b) public {
        OptionBool aMaybe = aIsSome ? LibOptionBool.Some(a) : LibOptionBool.None();
        OptionBool bMaybe = bIsSome ? LibOptionBool.Some(b) : LibOptionBool.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, bool a, bool b) public {
        OptionBool aMaybe = aIsSome ? LibOptionBool.Some(a) : LibOptionBool.None();
        OptionBool bMaybe = bIsSome ? LibOptionBool.Some(b) : LibOptionBool.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, bool a, bool b) public {
        OptionBool aMaybe = aIsSome ? LibOptionBool.Some(a) : LibOptionBool.None();
        OptionBool bMaybe = bIsSome ? LibOptionBool.Some(b) : LibOptionBool.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, bool a, bool b) public {
        OptionBool aMaybe = aIsSome ? LibOptionBool.Some(a) : LibOptionBool.None();
        OptionBool bMaybe = bIsSome ? LibOptionBool.Some(b) : LibOptionBool.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, bool a, bool b) public {
        OptionBool aMaybe = aIsSome ? LibOptionBool.Some(a) : LibOptionBool.None();
        OptionBool bMaybe = bIsSome ? LibOptionBool.Some(b) : LibOptionBool.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(bool a) public {
        OptionBool aMaybe = LibOptionBool.None();
        OptionBool bMaybe = LibOptionBool.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(bool a) public {
        OptionBool aMaybe = LibOptionBool.None();
        OptionBool bMaybe = LibOptionBool.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(bool a) public {
        OptionBool aMaybe = LibOptionBool.None();
        OptionBool bMaybe = LibOptionBool.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(bool a, string calldata message) public {
        OptionBool aMaybe = LibOptionBool.None();
        OptionBool bMaybe = LibOptionBool.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(bool a) public {
        OptionBool aMaybe = LibOptionBool.None();
        OptionBool bMaybe = LibOptionBool.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(bool a, bool b) public {
        OptionBool aMaybe = LibOptionBool.None();
        OptionBool bMaybe = LibOptionBool.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(bool a) public {
        OptionBool aMaybe = LibOptionBool.None();
        OptionBool bMaybe = LibOptionBool.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(bool a) public {
        OptionBool aMaybe = LibOptionBool.None();
        OptionBool bMaybe = LibOptionBool.Some(a);

        assertEq(aMaybe.map(other) == LibOptionBool.None(), true);
        assertEq(bMaybe.map(other) == LibOptionBool.Some(other(a)), true);
    }
}
