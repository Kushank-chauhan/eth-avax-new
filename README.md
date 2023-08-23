# eth-avax-new



/ SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract module1 {
    function errorhandle(uint256 a, uint256 b) public pure returns (uint256) {
        // Using require()
        require(a != 10, "a should not be ten");
        require(b != 20, "b should not be twenty");
         uint256 result = a - b;
        assert(result <= a && result <= b);
        if (a < b) {
            revert("a should be greater than or equal to b");
        }
 return result;
    }
}
