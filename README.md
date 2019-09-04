# Quarkus Lambda Custom Runtime
Compiling Quarkus Native Image and preparing a zip archive ready for
uploading to AWS Lambda as a custom runtime.

## Requirements
- Docker
- [GraalVM 19.1.1](https://github.com/oracle/graal/releases/tag/vm-19.1.1)

## Build & Assembly zip
`./compile-native.sh`

If on Windows, you should run the script in Git Bash. 

Assembled zip archive should be in **target/function-native** directory.