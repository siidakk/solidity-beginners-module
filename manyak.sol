// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

contract CryptoToken {

    // VARIABLES
    string public coinName = "MANYAK";
    string public abbreviation = "MNY";
    uint public coinSupply = 0;

    // MAPPING
    mapping (address => uint) public balances;

    // MINTING
    function mint(address _address, uint _value) public {
      coinSupply += _value;
      balances[_address] += _value;
    }

    // BURNING
    function burn(address _address, uint _value) public {
       if (balances[_address] >= _value) {
          coinSupply -= _value;
         balances[_address] -= _value;
       }
    }
}
