pragma solidity 0.8.14;

contract PinController {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    mapping(uint8 => bool) public pinStatus;

    function controlPin(uint8 _pin, bool _isActive) public {
        require(msg.sender == owner);
        pinStatus[_pin] = _isActive;
    }
}
