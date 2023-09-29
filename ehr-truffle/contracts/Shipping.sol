// SPDX-License-Identifier: UNLICENSED 

pragma solidity >=0.4.25 <0.9.0;

contract Shipping{

    enum ShippingStatus {
        //Being Accessed,
        //Not Accessed
        Pending,
        Shipped,
        Delivered
    }

    //Declare variable :
    ShippingStatus private status;

    event LogNewAlert(string description);

    constructor(){
        // Not Accessed
        status = ShippingStatus.Pending;
    }

    function Shipped() public {
        status = ShippingStatus.Shipped;
        emit LogNewAlert("Your package has been shipped");
    }

    function Delivered() public {
        status = ShippingStatus.Delivered;
        emit LogNewAlert("Your package has arrived");
    }

    function getStatus(ShippingStatus _status) internal pure returns (string memory) {
     // Check the current status and return the correct name
     if (ShippingStatus.Pending == _status) return "Pending";
     if (ShippingStatus.Shipped == _status) return "Shipped";
     if (ShippingStatus.Delivered == _status) return "Delivered";

     return "Unavailable";
    }

   // Get status of your shipped item
    function Status() public view returns (string memory) {
         ShippingStatus _status = status;
         return getStatus(_status);
    }
}

