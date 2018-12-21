pragma solidity 0.5.1;

import "./Ownable1.sol";

contract AnimalContract is Ownable{

    enum AnimalType {DOG, CAT}

    struct Animal {
        string name;
        uint age;
        AnimalType animalType;
    }

    mapping(address => Animal[]) ownerToAnimals;

    function _addAnimal(string memory _name, uint _age, AnimalType _animalType) internal returns (uint){
        return ownerToAnimals[msg.sender].push(Animal(_name, _age, _animalType)) - 1;
    }

    function getAnimal(uint _id) public view returns (string memory) {
        return ownerToAnimals[msg.sender][_id].name;
    }
}
