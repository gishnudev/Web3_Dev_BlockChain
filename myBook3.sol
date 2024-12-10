// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract myBook3 {
    string title;
    uint16 price;
    address owner;
    bool sold;  

    function getBookDetails()public view returns (string memory,uint16) {
       return (title,price);
    }

    function setBookDetails(string memory _title,uint16 _price)public {
        title = _title;
        price = _price;
        owner = msg.sender;
        sold = false;
    }

    function ethToWei(uint evalue)public pure  returns (uint) {
        return (evalue*1000000000000000000);
    }

    function buyBook() public payable {
        if (msg.value >= ethToWei(price)) {
            uint balance = msg.value-ethToWei(price);
            if (balance > 0)
            payable (msg.sender).transfer(balance);
            owner = msg.sender;
            sold = true;
        }
    }
}
