//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Whitelist {

  uint8 maxWhitelistedAddress;
  uint8 numAddressWhitelisted;

  mapping (address => bool) public whitelistedAddresses;

  constructor(uint8 _maxWhitelistedAddress) {
    maxWhitelistedAddress = _maxWhitelistedAddress;
  }

  function addAddresstoWhitelist() public {
    require(!whitelistedAddresses[msg.sender], "Sender has already been whitelisted");
    require(numAddressWhitelisted < maxWhitelistedAddress, "More addresses cant be added, limit reached");
    whitelistedAddresses[msg.sender] = true;
    numAddressWhitelisted++;
  }
}
