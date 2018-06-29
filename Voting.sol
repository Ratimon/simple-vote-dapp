pragma solidity ^0.4.23;

contract Voting{
    //constructor to initialize candidates
    //vote for candidates
    //get count of vote for each candidate
    bytes32[] public candidateLists;
    mapping (bytes32 => uint8) public votesReceived;
    constructor(bytes32[] candidateNames) public{
        candidateLists = candidateNames;
    }
    function voteForCandidate (bytes32 candidate) public{
        require(validCandidate(candidate));
        votesReceived[candidate] += 1;
    }
    // view modifier will mark as read-only function
    function totalVotesFor (bytes32 candidate) view public returns(uint8){
        require(validCandidate(candidate));
        return votesReceived[candidate];
    }
    function validCandidate(bytes32 candidate) view public returns(bool){
        for(uint i=0; i<candidateLists.length; i++){
            if(candidateLists[i]==candidate){
                return true;
            }
        }
        return false;
    }
}