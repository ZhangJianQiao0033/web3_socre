// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;
import "./IScore.sol";
contract Teacher {
    IScore public scoreContract;

    constructor(address _scoreContractAddress){
        scoreContract = IScore(_scoreContractAddress);
    }
    function updateScore(address student, uint256 newScore) external {
        scoreContract.setScore(student,newScore);
    }
}