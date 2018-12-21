pragma solidity 0.5.1;

contract DogContract{

    struct Dog {
        string name;
        uint age;
    }

    mapping(address => Dog) ownerToDog;

    function addDog(string memory _name, uint _age) public {
        Dog memory currentDog = Dog(_name, _age);
        ownerToDog[msg.sender] = currentDog;
    }

    function getDog() public view returns (string memory) {
        address owner = msg.sender;
        return ownerToDog[owner].name;
    }

}
