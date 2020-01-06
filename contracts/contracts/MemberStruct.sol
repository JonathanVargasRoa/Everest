pragma solidity ^0.5.8;

/*
 The delegate address can execute voting on behalf of the owner of the
 member project.
 The delegate and owner are stored in ERC-1056s registry
*/

// MemberStruct is here so that both Everest and Registry can inherit, and stay seperate contracts
contract MemberStruct {
    struct Member {
        uint256 challengeID;    // Is 0 if it is not challenged
        // Used for reputation: (now - membershipStartTime) = voteWeight
        // Used to determine membership as well: membershipStartTime > now
        uint256 membershipStartTime;
    }
}