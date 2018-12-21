pragma solidity 0.5.1;

import "./Animal.sol";

contract DogContract is AnimalContract{

    function addDog(string memory _name, uint _age) public returns (uint) {
        return _addAnimal(_name, _age, AnimalType.DOG);
    }
}
