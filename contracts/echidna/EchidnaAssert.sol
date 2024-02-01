// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

contract EchidnaAssert {
  event AssertionFailed();
  event PriceTargetExceeded();
  event ReachAmountExceeded();

  function isTrue(bool b) internal {
    if (!b) {
      emit AssertionFailed();
    }
  }

  function isPriceTargetExceeded(bool b) internal {
    if (!b) {
      emit AssertionFailed();
      emit PriceTargetExceeded();

    }
  }

  function isReachAmountExceeded(bool b) internal {
    if (!b) {
      emit AssertionFailed();
      emit ReachAmountExceeded();
    }
  }
}
