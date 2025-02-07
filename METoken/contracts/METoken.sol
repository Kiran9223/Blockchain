// SPDX-License-Identifier: UNLICENSED 
pragma solidity ^0.7.6;

import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';

contract METoken is ERC20 {
    mapping(address => uint256) public balances;
    string public constant _name = 'Mastering Ethereum Token';
    string public constant _symbol = 'MET';
    uint8 public constant _decimals = 2;
    uint constant _initial_supply = 2100000000;

    constructor() ERC20(_name, _symbol) {
        balances[msg.sender] = _initial_supply;
        emit Transfer(address(0), msg.sender, _initial_supply);
    }

}