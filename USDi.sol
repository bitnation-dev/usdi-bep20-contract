pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Snapshot.sol";

contract InverteToken is ERC20, ERC20Burnable, ERC20Pausable, ERC20Snapshot {

    address private _owner;

    constructor() ERC20("Inverte USD", "USDI") public {
        _owner = msg.sender; 
        _mint(_owner, 100000 * 1e18);
    }

    function mint(address account, uint256 amount) public {
        require(msg.sender == _owner, "ERC20: mint from owner");
        _mint(account, amount);
    }

}