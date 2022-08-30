// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./MTEX.sol";

contract MTEXFactory {

    MTEX public mtexContract;

    function createMTEXContract() public {
        mtexContract = new MTEX();
    }

    function callBuy(uint256 amount) public {
        mtexContract.buy(amount);
    }

    function callApprove(uint256 value) public {
        IERC20 token = mtexContract.token(); 
        token.approve(address(mtexContract), value);
    }

    function callSell(uint256 value) public {
        mtexContract.sell(value);
    }

}