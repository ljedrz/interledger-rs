FROM rust:1.41 as cargo-build
COPY . /interledger
WORKDIR /interledger
RUN cargo build --release --all-features --package ilp-node

FROM ubuntu:19.10
WORKDIR /interledger
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y ca-certificates libssh-4 openssl libpq-dev libssl-dev && update-ca-certificates
COPY --from=cargo-build /interledger/target/release/ilp-node .
ENTRYPOINT ["./ilp-node"]

