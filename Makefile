all: build run clean

rust-run:
	rustc ./src/main.rs
	./main
	@rm main

clean:
	rm -r target

cargo-v:
	cargo --version

build:
	cargo build
build-release:
	cargo build --release
run:
	./target/debug/rust-hello-world
check:
	cargo check