pragma solidity ^0.4.19;
contract PaytoFee{
    address private Owner;
    function PaytoFee() public
    {
        Owner = msg.sender;
    }
    
    function Payto(address _receiver) public payable
    {
        uint256 amount = msg.value / 10;
        address(_receiver).transfer(msg.value - amount);
        address(Owner).transfer(amount);
    }
}