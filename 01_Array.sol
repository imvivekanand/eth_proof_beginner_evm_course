//SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

//Array - dynamic or fixed size
//Initialization
//Insert (push), get, update, delete, pop, length
//Creating array in memory
//Returning array from function

contract Array{
    //dynamic array
    uint[] public nums=[1,2,3];

    //fixed array - Note array size and number of elements in the Array shuold always match.
    uint[3] public numsFixed=[4,5,6];

    //array operations
    function examples() external {
        nums.push(4); //adds element to the end of the array [1,2,3,4] - We cannot push elements to the fixed size aray.

        uint x = nums[1]; //get the second element of the array.

        nums[2] = 777; // update the element to [1,2,777,4]
        delete nums[1]; //clears the element at place 1 - [1,0(default value of uint), 777,4]
        nums.pop(); //Removes the element of the array from the last.
        uint len = nums.length; //get the length of the array
        
        //Create array in memory - Array in the memory is of the fixed size type (push and pop method will not work).
        uint[] memory a = new uint[] (5);
        a[1] = 123;
    }

    //Return array from function. - Not recommended (use a lot of gas)
    function returnArray() external view returns (uint[] memory){
        return nums;
    }
}