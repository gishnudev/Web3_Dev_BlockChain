// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract leapYear{
    uint16 public  year;

     function setYear(uint16 _year) public {
        require(_year >= 1000 && _year <= 9999);
        year = _year;
    }

    function checkLeapYr() public view  returns (bool) {
            return ((year % 4 == 0) && (year % 100 != 0 || year % 400 == 0));
    }
}