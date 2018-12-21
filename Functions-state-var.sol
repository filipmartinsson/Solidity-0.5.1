pragma solidity 0.5.1;

contract DogContract{
    string output;

    constructor(string memory _output) public {
        output = _output;
    }

    function bark() public view returns (string memory) {
        return output;
    }

    function setOutput(string memory _output) public {
        output = _output;
    }
}
