# open-binancex

Reuseable BEP20 Token contract

## base
BEP20.sol

```solidity
contract TestToken is BEP20 {
    constructor() public BEP20("TestToken", "TEST", 18) {
        _mint(msg.sender, 1000000000000000000);
    }
}
```

## Extensions

BEP20Burnable.sol

BEP20OwnerTransferable.sol

ERC20Pausable.sol


```solidity
contract MyToken is BEP20, BEP20OwnerTransferable, BEP20Burnable {
    constructor (string memory name, string memory symbol)
        BEP20(name, symbol, 18)
        public
    {
        _mint(msg.sender, 1000000000000000000);
    }
}
```