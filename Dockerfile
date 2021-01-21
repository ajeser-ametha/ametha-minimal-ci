FROM rustlang/rust:nightly
RUN rustup component add clippy
RUN cargo install cargo-audit
RUN cargo install sccache --features=all
RUN cargo install cargo-release

# cargo fmt
RUN cargo install cargo-make 
RUN git clone https://github.com/rust-lang/rustfmt.git 
RUN cd rustfmt && cargo make install 
