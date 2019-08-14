<p align="center">
  <img src="interledger-rs.svg" width="700" alt="Interledger.rs">
</p>

---
> Interledger implementation in Rust :money_with_wings: **boiko-version**

[![crates.io](https://img.shields.io/crates/v/interledger.svg)](https://crates.io/crates/interledger)
[![Interledger.rs Documentation](https://docs.rs/interledger/badge.svg)](https://docs.rs/interledger)
![Rust Version](https://img.shields.io/badge/rust-stable-Success)
[![Docker Image](https://img.shields.io/docker/pulls/emschwartz/interledger-rs.svg?maxAge=2592000)](https://hub.docker.com/r/emschwartz/interledger-rs/)

## Understanding Interledger.rs
- [HTTP API](./docs/api.md)
- [Rust API](https://docs.rs/interledger)
- [Interledger.rs Architecture](./docs/architecture.md)
- [Interledger Forum](https://forum.interledger.org) for general questions about the Interledger Protocol and Project

## Installation

Prerequisites:
- Git
- [Rust](https://www.rust-lang.org/tools/install) - latest stable version

Install and Run:

1. `git clone https://github.com/starcard-org/interledger && cd interledger`
2. `cargo build` (add `--release` to compile the release version, which is slower to compile but faster to run)
2. `cargo run` (append command line options after a `--` to use the CLI)

## Running the Examples

See the [examples](./examples/README.md) for demos of Interledger functionality and how to use the Interledger.rs implementation.


