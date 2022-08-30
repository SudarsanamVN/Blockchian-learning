// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./OTEX.sol";

contract OTEXFactory {

    OTEX public otexContract;

    function createOTEXContract() public {
        otexContract = new OTEX();
    }

    function callBuy(uint256 value) public {
        otexContract.buy(value);
    }

    function callApprove(uint256 value) public {
        IERC20 token = otexContract.token(); 
        token.approve(address(otexContract), value);
    }

    function callSell(uint256 amount) public {
        otexContract.sell(amount);
    }

}