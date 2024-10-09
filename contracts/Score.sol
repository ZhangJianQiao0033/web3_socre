// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;
import "./IScore.sol";

contract Score {

    mapping(address => uint256) public studentScores;
    address public teacher;

    constructor(){
      teacher = msg.sender;
    }

    modifier onlyTeacher() {
        require(msg.sender == teacher ,"Only the teacher can perform this action");
        _;
    }

    function setScore(address student, uint256 _score) public onlyTeacher {
        require(_score < 100,"Score must be less than 100");
        studentScores[student] = _score;
    } 


}