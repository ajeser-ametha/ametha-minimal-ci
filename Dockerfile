FROM rustlang/rust:nightly
RUN cargo install cargo-audit
RUN cargo install sccache --features=all

# cargo fmt
RUN cargo install cargo-make 
RUN git clone https://github.com/rust-lang/rustfmt.git 
RUN cd rustfmt && cargo make install 
