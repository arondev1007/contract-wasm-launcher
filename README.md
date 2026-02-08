# 🔐 Blockchain Smart Contract VM Launcher

A WebAssembly (WASM)-based virtual machine for executing smart contracts

## 📌 Project Overview
This project is a virtual machine (VM) launcher designed to execute
smart contracts from compiled WebAssembly (WASM) binaries provided
in bytecode form.

It features a middleware-based architecture that enables precise
control of gas consumption at the opcode level, allowing execution
costs to be accurately managed.

The VM is built with a custom-designed type system and runtime execution
model to ensure type safety and a structured exception handling flow
during contract execution.

A secure memory read/write interface is provided between the Host
(WASM runtime) and the Guest (smart contract), enabling reliable and
controlled data sharing.

In addition, the Imported Function mechanism allows computationally
expensive operations to be executed in the Host environment, with
results safely returned to the Guest, optimizing both performance and
gas usage.

## 🛠 Tech Stack
- Language: Rust
- Runtime: WebAssembly (WASM)
- VM Engine: Wasmer
- Architecture: Host / Guest Isolation
- Serialization: Borsh

## 📦 Libraries
- wasmer
- wasmer-middlewares
- borsh

## 📂 Repository Structure

This repository is organized into multiple modules, each responsible for a
specific part of the WASM-based smart contract execution pipeline.

```text
.
├─ wasm_launcher/
├─ wasm_build/
└─ memory/
```

### wasm_launcher

The core WebAssembly virtual machine launcher.
This module is responsible for loading, executing, and managing smart contract
WASM binaries, including gas metering and runtime isolation.

### wasm_build

A build module for compiling smart contracts into WebAssembly binaries.
The generated WASM artifacts are intended to be executed by the
wasm_launcher module.

### memory

A shared memory utility module that provides safe and structured
read/write interfaces for data exchange between the Host and Guest
environments.