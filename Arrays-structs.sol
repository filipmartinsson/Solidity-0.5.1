pragma solidity 0.5.1;

contract DogContract{

    struct Dog {
        string name;
        uint age;
    }

    Dog[] dogs;

    function addDog(string memory _name, uint _age) public returns (uint) {
        return dogs.push(Dog(_name, _age)) - 1;
    }

    function getDog(uint _id) public view returns (string memory) {
        return dogs[_id].name;
    }

}
