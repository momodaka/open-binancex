// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

import "@openzeppelin/contracts/GSN/Context.sol";
import "./IBEP20.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @dev Implementation of the {IBEP20} interface.
 */
contract BEP20 is Context, ERC20, IBEP20 {
    using SafeMath for uint256;

    address private _owner;

    constructor (
        string memory name_,
        string memory symbol_,
        uint8 memory decimals_,
        uint256 memory totalSupply_
    ) public {
        _name = name_;
        _symbol = symbol_;
        _decimals = decimals_;

        address msgSender = _msgSender();
        _owner = msgSender;
        _mint(msgSender, totalSupply_);
    }

     /**
     * @dev Returns the bep token owner.
     */
    function getOwner() public view virtual override  returns (address){
      return _owner;
    }
}
