pragma solidity 0.5.1;

contract DogContract{

    struct Dog {
        string name;
        uint age;
    }

    mapping(address => Dog) ownerToDog;

    function addDog(string memory _name, uint _age) public {
        require(ownerToDog[msg.sender].age == 0);

        Dog memory currentDog = Dog(_name, _age);
        ownerToDog[msg.sender] = currentDog;

        assert(ownerToDog[msg.sender].age == _age);
    }

    function getDog() public view returns (string memory) {
        address owner = msg.sender;
        return ownerToDog[owner].name;
    }

}
