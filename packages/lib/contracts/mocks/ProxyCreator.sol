pragma solidity ^0.6.0;
// SPDX-License-Identifier: MIT

import "../application/App.sol";
import "../Initializable.sol";

contract ProxyCreator is Initializable {

  address public created;

  function initialize(App app, string memory packageName, string memory contractName, address admin, bytes memory data) public initializer {
    created = address(app.create(packageName, contractName, admin, data));
  }

  function name() public pure returns (string memory) {
    return "ProxyCreator";
  }

}
