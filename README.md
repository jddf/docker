# jddf-docker

This repository contains Docker images related to JDDF.

## jddf-tools

The `jddf-tools` is a Docker image containing various CLI tools for JDDF. You
can use it in your build scripts, instead of requiring developers to install
JDDF tools directly on their machines. The `jddf-tools` image contains:

- [`jddf-codegen`](https://github.com/jddf/jddf-codegen)
- [`jddf-fuzz`](https://github.com/jddf/jddf-fuzz)
- [`jddf-infer`](https://github.com/jddf/jddf-infer)

Install it as follows:

```bash
docker pull docker.pkg.github.com/jddf/jddf-docker/jddf-tools:0.1.0
```

As an example of how you can run this command, here's how to invoke the `--help`
command for each of the tools in the image:

```bash
docker run -it docker.pkg.github.com/jddf/jddf-docker/jddf-tools:0.1.0 /jddf-codegen --help
docker run -it docker.pkg.github.com/jddf/jddf-docker/jddf-tools:0.1.0 /jddf-fuzz --help
docker run -it docker.pkg.github.com/jddf/jddf-docker/jddf-tools:0.1.0 /jddf-infer --help
```
