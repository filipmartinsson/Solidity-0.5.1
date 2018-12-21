pragma solidity 0.5.1;

contract DogContract{

    struct Dog {
        string name;
        uint age;
    }

    address owner;

    mapping(address => Dog) ownerToDog;

    modifier onlyNewOwners(){
        require(ownerToDog[msg.sender].age == 0);
        _;
    }

    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

    constructor() public{
        owner = msg.sender;
    }

    function addDog(string memory _name, uint _age) public onlyNewOwners{
        Dog memory currentDog =  Dog(_name, _age);
        ownerToDog[msg.sender] = currentDog;
    }

    function getDog() public view returns (string memory) {
        address owner = msg.sender;
        return ownerToDog[owner].name;
    }

    function deleteDog(address _address) public onlyOwner {
        delete ownerToDog[_address];
    }

}
