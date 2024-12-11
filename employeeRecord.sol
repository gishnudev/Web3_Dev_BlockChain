// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract employeeRecord {
    string public name;
    string public department;
    string public designation;
    uint16 public salary;

    function setEmpDetails(string memory _name,string memory _department,string memory _designation,uint16 _salary) public {
        name = _name;
        department = _department;
        designation = _designation;
        salary = _salary;
    }

    function getEmpDetails()public view returns (string memory,string memory,string memory,uint16)   {
        return (name,department,designation,salary);
    }

}

