// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { _T_ } from "../../src/core/_T_.sol";

import { Option_T_, LibOption_T_ } from "../../src/core/Option_T_.sol";

import {Test} from "../../lib/forge-std/src/Test.sol";

_T_ constant A = _T_.wrap(1);
_T_ constant B = _T_.wrap(2);

function initial() pure returns (_T_ res) {
    return A;
}

function other(_T_ self) pure returns (_T_) {
    return self == A ? B : A;
}

contract Option_T_Test is Test {
    using LibOption_T_ for *;

    function testEq() public {
        Option_T_ a = LibOption_T_.None();
        Option_T_ b = LibOption_T_.None();
        Option_T_ c = LibOption_T_.Some(A);
        Option_T_ d = LibOption_T_.Some(A);
        Option_T_ e = LibOption_T_.Some(B);
        Option_T_ f = LibOption_T_.Some(B);

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
        Option_T_ a = LibOption_T_.None();
        Option_T_ b = LibOption_T_.None();
        Option_T_ c = LibOption_T_.Some(A);
        Option_T_ d = LibOption_T_.Some(A);
        Option_T_ e = LibOption_T_.Some(B);
        Option_T_ f = LibOption_T_.Some(B);

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
        Option_T_ a = LibOption_T_.None();
        Option_T_ b = LibOption_T_.None();
        Option_T_ c = LibOption_T_.Some(A);
        Option_T_ d = LibOption_T_.Some(A);
        Option_T_ e = LibOption_T_.Some(B);
        Option_T_ f = LibOption_T_.Some(B);

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
        Option_T_ a = LibOption_T_.None();
        Option_T_ b = LibOption_T_.None();
        Option_T_ c = LibOption_T_.Some(A);
        Option_T_ d = LibOption_T_.Some(A);
        Option_T_ e = LibOption_T_.Some(B);
        Option_T_ f = LibOption_T_.Some(B);

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
        Option_T_ a = LibOption_T_.None();
        Option_T_ b = LibOption_T_.None();
        Option_T_ c = LibOption_T_.Some(A);
        Option_T_ d = LibOption_T_.Some(A);
        Option_T_ e = LibOption_T_.Some(B);
        Option_T_ f = LibOption_T_.Some(B);

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
        Option_T_ a = LibOption_T_.None();
        Option_T_ b = LibOption_T_.None();
        Option_T_ c = LibOption_T_.Some(A);
        Option_T_ d = LibOption_T_.Some(A);
        Option_T_ e = LibOption_T_.Some(B);
        Option_T_ f = LibOption_T_.Some(B);

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
        Option_T_ a = LibOption_T_.None();
        Option_T_ b = LibOption_T_.Some(A);

        assertEq(a == a.clone(), true);
        assertEq(b == b.clone(), true);
    }

    function testIsSome() public {
        Option_T_ a = LibOption_T_.None();
        Option_T_ b = LibOption_T_.Some(A);

        assertEq(a.isSome(), false);
        assertEq(b.isSome(), true);
    }

    function testIsNone() public {
        Option_T_ a = LibOption_T_.None();
        Option_T_ b = LibOption_T_.Some(A);

        assertEq(a.isNone(), true);
        assertEq(b.isNone(), false);
    }

    function testExpect() public {
        string memory message = "testMessage";
        Option_T_ a = LibOption_T_.None();
        Option_T_ b = LibOption_T_.Some(A);

        assertEq(b.expect(message) == A, true);

        vm.expectRevert(bytes(message));
        a.expect(message);
    }

    function testUnwrap() public {
        Option_T_ a = LibOption_T_.None();
        Option_T_ b = LibOption_T_.Some(A);

        assertEq(b.unwrap() == A, true);

        vm.expectRevert();
        a.unwrap();
    }

    function testUnwrapOr() public {
        Option_T_ a = LibOption_T_.None();
        Option_T_ b = LibOption_T_.Some(A);

        assertEq(a.unwrapOr(B) == B, true);
        assertEq(b.unwrapOr(B) == A, true);
    }

    function testUnwrapOrElse() public {
        Option_T_ a = LibOption_T_.None();
        Option_T_ b = LibOption_T_.Some(B);

        assertEq(a.unwrapOrElse(initial) == A, true);
        assertEq(b.unwrapOrElse(initial) == B, true);
    }

    function testMap() public {
        Option_T_ a = LibOption_T_.None();
        Option_T_ b = LibOption_T_.Some(A);

        assertEq(a.map(other) == LibOption_T_.None(), true);
        assertEq(b.map(other) == LibOption_T_.Some(other(A)), true);
    }

    function testFuzzEq(bool aIsSome, bool bIsSome, _T_ a, _T_ b) public {
        Option_T_ aMaybe = aIsSome ? LibOption_T_.Some(a) : LibOption_T_.None();
        Option_T_ bMaybe = bIsSome ? LibOption_T_.Some(b) : LibOption_T_.None();

        bool expected = aIsSome && bIsSome ? a == b : aIsSome == bIsSome;
        bool actual = aMaybe == bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzNeq(bool aIsSome, bool bIsSome, _T_ a, _T_ b) public {
        Option_T_ aMaybe = aIsSome ? LibOption_T_.Some(a) : LibOption_T_.None();
        Option_T_ bMaybe = bIsSome ? LibOption_T_.Some(b) : LibOption_T_.None();

        bool expected = aIsSome && bIsSome ? a != b : aIsSome != bIsSome;
        bool actual = aMaybe != bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGt(bool aIsSome, bool bIsSome, _T_ a, _T_ b) public {
        Option_T_ aMaybe = aIsSome ? LibOption_T_.Some(a) : LibOption_T_.None();
        Option_T_ bMaybe = bIsSome ? LibOption_T_.Some(b) : LibOption_T_.None();

        bool aGtB;
        assembly { aGtB := gt(a, b) }
        bool expected = aIsSome && bIsSome ? aGtB : aIsSome && !bIsSome;
        bool actual = aMaybe > bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzGte(bool aIsSome, bool bIsSome, _T_ a, _T_ b) public {
        Option_T_ aMaybe = aIsSome ? LibOption_T_.Some(a) : LibOption_T_.None();
        Option_T_ bMaybe = bIsSome ? LibOption_T_.Some(b) : LibOption_T_.None();

        bool aGteB;
        assembly { aGteB := iszero(lt(a, b)) }
        bool expected = aIsSome && bIsSome ? aGteB : (aIsSome == bIsSome) || aIsSome;
        bool actual = aMaybe >= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLt(bool aIsSome, bool bIsSome, _T_ a, _T_ b) public {
        Option_T_ aMaybe = aIsSome ? LibOption_T_.Some(a) : LibOption_T_.None();
        Option_T_ bMaybe = bIsSome ? LibOption_T_.Some(b) : LibOption_T_.None();

        bool aLtB;
        assembly { aLtB := lt(a, b) }
        bool expected = aIsSome && bIsSome ? aLtB : bIsSome && !aIsSome;
        bool actual = aMaybe < bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzLte(bool aIsSome, bool bIsSome, _T_ a, _T_ b) public {
        Option_T_ aMaybe = aIsSome ? LibOption_T_.Some(a) : LibOption_T_.None();
        Option_T_ bMaybe = bIsSome ? LibOption_T_.Some(b) : LibOption_T_.None();

        bool aLteB;
        assembly { aLteB := iszero(gt(a, b)) }
        bool expected = aIsSome && bIsSome ? aLteB : (aIsSome == bIsSome) || bIsSome;
        bool actual = aMaybe <= bMaybe;

        assertEq(expected, actual);
    }

    function testFuzzClone(_T_ a) public {
        Option_T_ aMaybe = LibOption_T_.None();
        Option_T_ bMaybe = LibOption_T_.Some(a);

        assertEq(aMaybe == aMaybe.clone(), true);
        assertEq(bMaybe == bMaybe.clone(), true);
    }

    function testFuzzIsSome(_T_ a) public {
        Option_T_ aMaybe = LibOption_T_.None();
        Option_T_ bMaybe = LibOption_T_.Some(a);

        assertEq(aMaybe.isSome(), false);
        assertEq(bMaybe.isSome(), true);
    }

    function testFuzzIsNone(_T_ a) public {
        Option_T_ aMaybe = LibOption_T_.None();
        Option_T_ bMaybe = LibOption_T_.Some(a);

        assertEq(aMaybe.isNone(), true);
        assertEq(bMaybe.isNone(), false);
    }

    function testFuzzExpect(_T_ a, string calldata message) public {
        Option_T_ aMaybe = LibOption_T_.None();
        Option_T_ bMaybe = LibOption_T_.Some(a);

        assertEq(bMaybe.expect(message) == a, true);

        vm.expectRevert(bytes(message));
        aMaybe.expect(message);
    }

    function testFuzzUnwrap(_T_ a) public {
        Option_T_ aMaybe = LibOption_T_.None();
        Option_T_ bMaybe = LibOption_T_.Some(a);

        assertEq(bMaybe.unwrap() == a, true);

        vm.expectRevert();
        aMaybe.unwrap();
    }

    function testFuzzUnwrapOr(_T_ a, _T_ b) public {
        Option_T_ aMaybe = LibOption_T_.None();
        Option_T_ bMaybe = LibOption_T_.Some(a);

        assertEq(aMaybe.unwrapOr(b) == b, true);
        assertEq(bMaybe.unwrapOr(b) == a, true);
    }

    function testFuzzUnwrapOrElse(_T_ a) public {
        Option_T_ aMaybe = LibOption_T_.None();
        Option_T_ bMaybe = LibOption_T_.Some(a);

        assertEq(aMaybe.unwrapOrElse(initial) == A, true);
        assertEq(bMaybe.unwrapOrElse(initial) == a, true);
    }

    function testFuzzMap(_T_ a) public {
        Option_T_ aMaybe = LibOption_T_.None();
        Option_T_ bMaybe = LibOption_T_.Some(a);

        assertEq(aMaybe.map(other) == LibOption_T_.None(), true);
        assertEq(bMaybe.map(other) == LibOption_T_.Some(other(a)), true);
    }
}
