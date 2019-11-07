pragma solidity ^0.5.11;

import "./Context.sol";
import "./ERC20.sol";
import "./ERC20Detailed.sol";

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract SimpleToken is Context, ERC20, ERC20Detailed {

    /**
     * @dev Constructor that gives _msgSender() all of existing tokens.
     */
    constructor () public ERC20Detailed("SimpleToken", "SMPL", 18) {
    /**
     * @dev Create 10.000 Tokens.
     */
        _mint(_msgSender(), 10000 * (10 ** uint256(decimals())));
    }
}
