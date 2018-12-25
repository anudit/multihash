# Multihash
Store Multihash functions on Blockchain

Currently deployed at : 0xae1de97ad41250331b0b186cae51af3692cc31ef on Ropsten Testnet

ABI :

```
[
	{
		"constant": false,
		"inputs": [
			{
				"name": "ind",
				"type": "uint8"
			}
		],
		"name": "clearEntry",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "_digest",
				"type": "bytes32"
			},
			{
				"name": "_hashFunction",
				"type": "uint8"
			},
			{
				"name": "_size",
				"type": "uint8"
			}
		],
		"name": "setEntry",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"name": "key",
				"type": "address"
			},
			{
				"indexed": false,
				"name": "digest",
				"type": "bytes32"
			},
			{
				"indexed": false,
				"name": "hashFunction",
				"type": "uint8"
			},
			{
				"indexed": false,
				"name": "size",
				"type": "uint8"
			}
		],
		"name": "EntrySet",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"name": "key",
				"type": "address"
			}
		],
		"name": "EntryDeleted",
		"type": "event"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "ind",
				"type": "uint8"
			}
		],
		"name": "getEntry",
		"outputs": [
			{
				"name": "digest",
				"type": "bytes32"
			},
			{
				"name": "hashfunction",
				"type": "uint8"
			},
			{
				"name": "size",
				"type": "uint8"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "getNumberOfEntries",
		"outputs": [
			{
				"name": "l",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	}
]
```