# Vector Addition System with State

A VASS is a special form of Petri-Net equivilant state machine.
that allows for a standard patter of encoding Zero Knowledge Proofs.

see: https://en.wikipedia.org/wiki/Vector_addition_system

Also review some of the provided circuits here: https://github.com/iden3/circomlib/blob/master/circuits/comparators.circom#L36-L45

## Example: Vector Addition State Machine

The example circuit describes a game of Tic-Tac-Toe.

See the breakdown of the files involved below.

The example included in this circuit is generated from this Pflow file
[TicTacToe Schema](https://raw.githubusercontent.com/FactomProject/ptnet-eventstore/master/examples/octoe.pflow)

File format compatible with this Petri-Net editor: http://www.pneditor.org/

### Storage 

Stored "on-chain"

(circuit hash could be stored instead of the file)
```
48K     vass/circuit.json
8.0K    vass/verification_key.json
```

Each Entry costs 8 EC ($.008)
```
4.0K    vass/input.json
4.0K    vass/proof.json
```

Stored for use "off-chain"
```
4.0K    vass/circuit.circom
88K     vass/proving_key.json
4.0K    vass/public.json
4.0K    vass/witness.json
```
