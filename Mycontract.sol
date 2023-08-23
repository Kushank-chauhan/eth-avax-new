// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract module1 {
    function errorhandle(uint256 a, uint256 b) public pure returns (uint256) {
        // Using require()
        require(a != 5, "a should not be five");
        require(b != 10, "b should not be ten");

        // Using assert()
        uint256 result = a - b;
        assert(result <= a && result <= b);

        // Using revert()
        if (a < b) {
            revert("a should be greater than or equal to b");
        }

        return result;
    }
}
