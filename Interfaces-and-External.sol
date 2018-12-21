pragma solidity 0.5.1;

contract DogContract{

    function addDog(string memory _name, uint _age) public payable returns (uint);

    function getBalance() public view returns (uint);
}

contract ExternalContract {

    DogContract dc = DogContract(0x76A846CD2aC2E028626A3d1f5ddf32d3a468423D);

    function addExternalDog(string memory _name, uint _age) public payable returns (uint){
        return dc.addDog.value(msg.value)(_name, _age);
    }
}
