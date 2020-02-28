FROM rust:1.40 as cargo-build
COPY . /interledger
WORKDIR /interledger
RUN cargo build --bin ilp-node --release

FROM ubuntu:19.04
WORKDIR /interledger
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y ca-certificates libssh-4 openssl libpq-dev libssl-dev && update-ca-certificates
ENV RUST_LOG=interledger=debug
COPY --from=cargo-build /interledger/target/release/ilp-node .
ENTRYPOINT ["./ilp-node"]

