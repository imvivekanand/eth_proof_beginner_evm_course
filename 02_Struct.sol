//SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Structs {
    //Structs allows you to group data together
    struct Car{
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    //Initialize a struct
    function examples() external{
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        Car memory lamborghini = Car({year:1980, model: "Lamborghini", owner: msg.sender});
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2010;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lamborghini);
        cars.push(tesla);

        cars.push(Car("Ferrari", 2020, msg.sender));

        //Get the Car from the state variable and read it.
        Car memory _car = cars[0];
        _car.model;
        _car.year;
        _car.owner;

        //Get the Car from the state variable and modify it.
        Car storage newCar = cars[1];
        newCar.model = "Tata";
        newCar.year = 1999;
        delete newCar.owner;


        delete cars[2];

    }

}