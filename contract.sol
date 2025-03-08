// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ThanosToken is ERC20, Ownable {
    uint256 public burnRate; // Burn rate in percentage (e.g., 2 means 2%)

    constructor(uint256 _initialSupply, uint256 _burnRate) ERC20("ThanosToken", "THN") {
        require(_burnRate <= 100, "Burn rate must be between 0 and 100");
        _mint(msg.sender, _initialSupply * 10 ** decimals());
        burnRate = _burnRate;
    }

    function setBurnRate(uint256 _burnRate) external onlyOwner {
        require(_burnRate <= 100, "Burn rate must be between 0 and 100");
        burnRate = _burnRate;
    }

    function _transfer(address sender, address recipient, uint256 amount) internal override {
        uint256 burnAmount = (amount * burnRate) / 100;
        uint256 sendAmount = amount - burnAmount;
        
        super._transfer(sender, recipient, sendAmount);
        if (burnAmount > 0) {
            _burn(sender, burnAmount);
        }
    }
}
