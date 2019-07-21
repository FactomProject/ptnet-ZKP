# ptnet-ZKP
Zero Knowledge Proof for Petri-Nets using the circom language

Reference
* https://iden3.io/blog/circom-and-snarkjs-tutorial2.html
* https://iden3.io/post/iden3-introducing-new-set-tools-mastering-zksnarks


## Status

Pre-Alpha/Experimental see [./TODO.md](./TODO.md) for working notes.

Main outstanding question is to work out if the size of these proofs is managable on top of Factom.

```
32K	./vass/circuit.json # can perhaps be off-chain?
4.0K	./vass/proof.json
4.0K	./vass/public.json
4.0K	./vass/verification_key.json
```

## Usage

Build the examples


```
./test.sh
build VASS()
info
# Wires: 41
# Constraints: 10
# Private Inputs: 20
# Public Inputs: 0
# Outputs: 5
setup
witness
proof
verify
OK
```
