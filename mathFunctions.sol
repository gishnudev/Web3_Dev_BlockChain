// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract mathFunctions {
    uint16 number1;
    uint16 number2;
    uint16 number3;
    string[10] array=["zero","one","two","three","four","five","six","seven","eight","nine"];


    function getDigit()public view returns (uint16,uint16,uint16) {
        return (number1,number2,number3);
    }

    function setWords(uint16 _number1) public view  returns(string memory){
        if(_number1<=9 ){
                return array[_number1];
            }
        else {
            revert("Inputs must be single-digit number");
        }

    }

    function findLargest(uint16 _number1,uint16 _number2,uint16 _number3)public pure returns (uint16 large) {
        if (_number1>_number2 && _number1>_number3){
            large=_number1;
        }else if(_number2>_number3){
            large = _number2;

        }else{
            large =_number3;
        }
    }

}
