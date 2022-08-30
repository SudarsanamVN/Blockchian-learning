Reference links

https://ethereum.org/en/developers/docs/standards/tokens/erc-20/
https://eips.ethereum.org/EIPS/eip-20

https://twitter.com/feindura?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor
https://twitter.com/VitalikButerin

https://docs.openzeppelin.com/contracts/3.x/tokens#ERC20
https://github.com/OpenZeppelin/openzeppelin-contracts/blob/9b3710465583284b8c4c5d2245749246bb2e0094/contracts/token/ERC20/ERC20.sol

https://ethereum.org/en/developers/tutorials/understand-the-erc-20-token-smart-contract/
https://ethereum.org/en/developers/tutorials/transfers-and-approval-of-erc-20-tokens-from-a-solidity-smart-contract/


MANUAL TOKEN
============
- ERC20Basic.sol  -- Manually implemented ERC20 token
- MTEX.sol        -- Manual Token EXchange contract to buy and sell tokens
- MTEXFactory.sol -- Manual Token EXchange Factory to execute the buy and sell function of the exchange(MTEX) from remix.


OPENZEPPELIN TOKEN
==================

- OPZLNToken.sol   --  OpenZeppelin token
- OTEX.sol         --  OpenZeppelin Token EXchange contract to buy and sell tokens
- OTEXFactory.sol  --  OpenZeppelin Token EXchange Factory to execute the buy and sell function of the exchange(OTEX) from remix.


Steps in remix:
===============

- Compile the contracts
- Deploy the Factory contract
- Open the deployed contract and call the factory methods