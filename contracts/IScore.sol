// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

interface IScore {
    function setScore(address student, uint256 _score) external;
}