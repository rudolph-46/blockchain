// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @author Rudolph DOUM AKONO
 * @dev :Store & retrieve value in a variable
 */


contract Storage {
    uint256[] number;

    /**
     * @dev Store value in variable
     * @param _number value to store
     */
    function add(uint256 _number) public {
        number.push(_number);
    }

    /**
     * @dev Return value
     * @param index Position of the requested value
     * @return number
     */
    function  get(uint index) public view returns(uint256){
        return number[index];
    }

    /**
     * @dev Return all value
     * @return number
     */
    function  getAll() public view returns(uint256[] memory){
        return number;
    }

    /**
     * @dev Return size of value
     * @return number
     */
    function  length() public view returns(uint){
        return number.length;
    }
}