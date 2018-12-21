pragma solidity 0.5.1;

contract Ownable{

    address public owner;

    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

    constructor() public{
        owner = msg.sender;
    }
}
