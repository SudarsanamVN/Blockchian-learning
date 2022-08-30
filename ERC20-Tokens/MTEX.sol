// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ERC20Basic.sol";

contract MTEX {
    IERC20 public token;

    event Bought(uint256 amount);
    event Sold(uint256 amount);

    constructor() {
        token = new ERC20Basic();
    }

    function buy(uint256 amount) payable public {
        uint256 amountTobuy = amount;
        uint256 mtexBalance = token.balanceOf(address(this));
        require(amountTobuy > 0, "You need to send some ether");
        require(amountTobuy <= mtexBalance, "Not enough tokens in the reserve");
        token.transfer(msg.sender, amountTobuy);
        emit Bought(amountTobuy);
    }

    function sell(uint256 amount) public {
        require(amount > 0, "You need to sell at least some tokens");
        uint256 allowance = token.allowance(msg.sender, address(this));
        require(allowance >= amount, "Check the token allowance");
        token.transferFrom(msg.sender, address(this), amount);
        //payable(msg.sender).transfer(amount);
        emit Sold(amount);
    }

}
