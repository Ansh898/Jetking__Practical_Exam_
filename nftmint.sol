//SPDX-Licence-Itendifier: MIT
pragma solidity ^0.8.0;

import "openzepplin/contracts/token/ERC721/ERC721.sol";
import "openzepplin/contracts/utils/counters.sol";
import "openzepplin/contracts/access/ownable.sol";

contract MyNft is ERC721, ownable {
    using counters for counters.counter;
    counters.counter private _tokenIdcounter;

    uint256 public maxsupply;
    mapping(address => bool) public is Whitelisted;

    constructor memoryname, string memory symbol, uint256 _maxsupply) ERC721(name,symbol){
        maxsupply =_maxsupply;
    }
} 

