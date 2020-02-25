FROM rustlang/rust:nightly
RUN cargo install cargo-audit
RUN cargo install sccache --features=all
