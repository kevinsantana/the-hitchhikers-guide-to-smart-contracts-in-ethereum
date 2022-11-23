// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// proof of existence contract, version 1
contract ProofOfExistence1 {
  bytes32 public proof;

  function notarize(string memory document) public {
    proof = proofFor(document);
  }

  function proofFor(string memory document) public pure returns (bytes32) {
    return sha256(bytes (document));
  }
}