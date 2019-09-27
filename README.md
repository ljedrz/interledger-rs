<p align="center">
  <img src="docs/interledger-rs.svg" width="700" alt="Interledger.rs">
</p>

---
> Interledger implementation in Rust :money_with_wings:

[![crates.io](https://img.shields.io/crates/v/interledger.svg)](https://crates.io/crates/interledger)
[![Interledger.rs Documentation](https://docs.rs/interledger/badge.svg)](https://docs.rs/interledger)
[![CircleCI](https://circleci.com/gh/interledger-rs/interledger-rs.svg?style=shield)](https://circleci.com/gh/interledger-rs/interledger-rs)
![Rust Version](https://img.shields.io/badge/rust-stable-Success)
[![Docker Image](https://img.shields.io/docker/pulls/interledgerrs/node.svg?maxAge=2592000)](https://hub.docker.com/r/interledgerrs/node/)

## Understanding Interledger.rs
- [HTTP API](./docs/api.md)
- [Rust API](https://docs.rs/interledger)
- [Interledger.rs Architecture](./docs/architecture.md)
- [Interledger Forum](https://forum.interledger.org) for general questions about the Interledger Protocol and Project

## Installation and Usage

### Using Docker

#### Prerequisites

- Docker

#### Install

```bash #
docker pull interledgerrs/node
```

#### Run

```bash #
docker run -it interledgerrs/node
```

### Building From Source

#### Prerequisites

- Git
- [Rust](https://www.rust-lang.org/tools/install) - latest stable version

#### Install

```bash # 
# 1. Clone the repsitory and change the working directory
git clone https://github.com/interledger-rs/interledger-rs && cd interledger-rs

# 2. Build interledger-rs (add `--release` to compile the release version, which is slower to compile but faster to run)
cargo build 
```

#### Run

```bash #
cargo run
```

Append the `--help` flag to see available options.

### Configuration

Interledger.rs commands such as `node` and `ethereum-ledger` accept configuration options in the following ways:

#### Environment variables

```bash #
# Passing as environment variables
# {parameter name (typically in capital)}={value}
# note that the parameter names MUST begin with a prefix of "ILP_" e.g. ILP_SECRET_SEED
ILP_ADDRESS=example.alice \
ILP_OTHER_PARAMETER=other_value \
cargo run
```

#### Standard In (stdin)

```bash #
# Passing from STDIN in JSON, TOML, YAML format.
some_command | cargo run -- node
```

#### Configuration files

```bash #
# Passing by a configuration file in JSON, TOML, YAML format.
# The first argument after subcommands such as `node` is the path to the configuration file.
# Note that in order for a docker image to have access to a local file, it must be included in
# a directory that is mounted as a Volume at `/config`
cargo run -- node config.yml
```

#### Command line arguments

```bash #
# Passing by command line arguments.
# --{parameter name} {value}
cargo run -- --admin_auth_token super-secret
```

Note that configurations are applied in the following order of priority: 
1. Environment Variables 
1. Stdin 
1. Configuration files
1. Command line arguments.

## Examples

See the [examples](./examples/README.md) for demos of Interledger functionality and how to use the Interledger.rs implementation.

## Contributing

Contributions are very welcome and if you're interested in getting involved, see [CONTRIBUTING.md](docs/CONTRIBUTING.md). We're more than happy to answer questions and mentor you in making your first contributions to Interledger.rs!
