// SPDX-License-Identifier: MIT
import "./Inherritance.sol";
pragma solidity 0.8.28;

contract Employee is Person {
    uint empID;

    function setEmployeeDtls(string memory _name,uint _age,uint _empID) public  {
        setPerson(_name,_age);
        empID=_empID;
    }

    function getPersonDtls() public override view returns (string memory,uint) {
        return (name,age);
        super.getPersonDtls();
    }
    
}