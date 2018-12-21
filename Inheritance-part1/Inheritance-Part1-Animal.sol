pragma solidity 0.5.1;

contract AnimalContract{

    enum AnimalType {DOG, CAT}

    struct Animal {
        string name;
        uint age;
        AnimalType animalType;
    }

    address owner;

    mapping(address => Animal[]) ownerToAnimals;

    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

    constructor() public{
        owner = msg.sender;
    }

    function _addAnimal(string memory _name, uint _age, AnimalType _animalType) internal returns (uint){
        return ownerToAnimals[msg.sender].push(Animal(_name, _age, _animalType)) - 1;
    }

    function getAnimal(uint _id) public view returns (string memory) {
        return ownerToAnimals[msg.sender][_id].name;
    }
}
