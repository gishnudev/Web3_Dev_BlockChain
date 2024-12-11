// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank {
    mapping (address=>uint) balanceLedger;
    address public admin;
    constructor(){
        admin = msg.sender;
    }

    modifier balaceCheck(uint amt){
        require(balanceLedger[msg.sender]>=amt,"Insufficient Balance");
        _;
    }

    function deposit() public  payable {
        balanceLedger[msg.sender] = balanceLedger[msg.sender]+msg.value;
    }

    function getBalance()public view returns (uint) {
        return balanceLedger[msg.sender];
    }

    function widrow(uint amt) public balaceCheck(amt) {
        require(balanceLedger[msg.sender]>=amt,"Insufficient Balance");
            balanceLedger[msg.sender] = balanceLedger[msg.sender]- amt;
            payable (msg.sender).transfer(amt);
    }

    function transfer(uint amt, address recepient)public balaceCheck(amt){
        // require(balanceLedger[msg.sender]>=amt,"Insufficient Balance");
            balanceLedger[msg.sender] = balanceLedger[msg.sender]- amt;
            payable (recepient).transfer(amt);
    }
}