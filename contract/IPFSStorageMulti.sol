pragma solidity ^0.5.2;

contract IPFSStorage {
  struct Multihash {
    bytes32[] digest;
    uint8[] hashFunction;
    uint8[] size;
  }

  mapping (address => Multihash) private entries;

  event EntrySet (
    address indexed key,
    bytes32 digest,
    uint8 hashFunction,
    uint8 size
  );

  event EntryDeleted (
    address indexed key
  );

  function setEntry(bytes32 _digest, uint8 _hashFunction, uint8 _size)
  public
  {
    entries[msg.sender].digest.push(_digest);
    entries[msg.sender].hashFunction.push(_hashFunction);
    entries[msg.sender].size.push(_size);
    emit EntrySet(msg.sender, _digest, _hashFunction, _size);
  }

  function clearEntry(uint8 ind)
  public
  {
    require(entries[msg.sender].digest.length != 0);
    delete entries[msg.sender].digest[ind];
    delete entries[msg.sender].hashFunction[ind];
    delete entries[msg.sender].size[ind];
    emit EntryDeleted(msg.sender);
  }

  function getEntry(uint8 ind)
  public
  view
  returns(bytes32 digest, uint8 hashfunction, uint8 size)
  {
    return (entries[msg.sender].digest[ind],entries[msg.sender].hashFunction[ind],  entries[msg.sender].size[ind]);
  }
  
  function getNumberOfEntries()
  public
  view
  returns(uint256 l)
  {
    return (entries[msg.sender].digest.length);
  }
}