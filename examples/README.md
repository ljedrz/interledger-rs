# Interledger.rs Examples

Here you can find various demos of Interledger.rs' functionality:

1. [Simple Two-Node Payment](./simple/README.md)
1. [Two-Node Payment with Ethereum On-Ledger Settlement](./eth-settlement/README.md)
1. [Two-Node Payment with XRP On-Ledger Settlement](./xrp-settlement/README.md)
1. [Three-Node Payment with Ethereum and XRP On-Ledger Settlement](./eth-xrp-three-nodes/README.md)
1. Integrating Interledger Into Your App (Coming Soon!)

Have questions? Feel free to [open an issue](https://github.com/interledger-rs/interledger-rs/issues/new) or ask a question [on the forum](https://forum.interledger.org/)!

## Running the Examples
The README of each example provides step-by-step instructions on how to run the example.

If you want to run all of the steps automatically, you can use the provided [`run-md.sh`](../scripts/run-md.sh) script to parse and execute the shell commands from the Markdown file:

```bash #
# Under the example directory, for example, "simple"
$ ../../scripts/run-md.sh README.md

# It also accepts STDIN:
$ (some command) | ../../scripts/run-md.sh
```

By default, the script will download compiled binaries to use with the examples. If you want it to build the project from the source code instead, you can set `SOURCE_MODE=1` as follows:

```bash #
SOURCE_MODE=1 ../../scripts/run-md.sh README.md
```
