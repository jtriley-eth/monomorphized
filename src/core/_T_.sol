// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

type _T_ is uint256;

using {
    add as +,
    sub as -,
    mul as *,
    div as /,
    mod as %,
    lt as <,
    lte as <=,
    gt as >,
    gte as >=,
    eq as ==,
    neq as !=
} for _T_ global;

function add(_T_ lhs, _T_ rhs) pure returns (_T_ res) {
    return _T_.wrap(_T_.unwrap(lhs) + _T_.unwrap(rhs));
}

function sub(_T_ lhs, _T_ rhs) pure returns (_T_ res) {
    return _T_.wrap(_T_.unwrap(lhs) - _T_.unwrap(rhs));
}

function mul(_T_ lhs, _T_ rhs) pure returns (_T_ res) {
    return _T_.wrap(_T_.unwrap(lhs) * _T_.unwrap(rhs));
}

function div(_T_ lhs, _T_ rhs) pure returns (_T_ res) {
    return _T_.wrap(_T_.unwrap(lhs) / _T_.unwrap(rhs));
}

function mod(_T_ lhs, _T_ rhs) pure returns (_T_ res) {
    return _T_.wrap(_T_.unwrap(lhs) % _T_.unwrap(rhs));
}

function lt(_T_ lhs, _T_ rhs) pure returns (bool) {
    return _T_.unwrap(lhs) < _T_.unwrap(rhs);
}

function lte(_T_ lhs, _T_ rhs) pure returns (bool) {
    return _T_.unwrap(lhs) <= _T_.unwrap(rhs);
}

function gt(_T_ lhs, _T_ rhs) pure returns (bool) {
    return _T_.unwrap(lhs) > _T_.unwrap(rhs);
}

function gte(_T_ lhs, _T_ rhs) pure returns (bool) {
    return _T_.unwrap(lhs) >= _T_.unwrap(rhs);
}

function eq(_T_ lhs, _T_ rhs) pure returns (bool) {
    return _T_.unwrap(lhs) == _T_.unwrap(rhs);
}

function neq(_T_ lhs, _T_ rhs) pure returns (bool res) {
    return _T_.unwrap(lhs) != _T_.unwrap(rhs);
}
