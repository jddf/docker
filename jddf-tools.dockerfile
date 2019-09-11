FROM rust:1.37.0 AS build
RUN apt-get update && apt-get install -y musl-tools
RUN rustup target install x86_64-unknown-linux-musl
RUN cargo install --target=x86_64-unknown-linux-musl jddf-codegen jddf-infer jddf-fuzz

FROM scratch
COPY --from=build /usr/local/cargo/bin/jddf-codegen /
COPY --from=build /usr/local/cargo/bin/jddf-infer /
COPY --from=build /usr/local/cargo/bin/jddf-fuzz /
