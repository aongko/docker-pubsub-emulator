# [Google Cloud Pub/Sub Emulator Image](https://hub.docker.com/r/aongko/pubsub-emulator/)

[*Google Cloud Pub/Sub*](https://cloud.google.com/pubsub/) is a fully-managed real-time messaging service that allows you to send and receive messages between independent applications

This image is intended to be used in development environments, such as for testing and it **SHOULD NOT** be used in production environments.
For documentation regarding Pub/Sub emulator, you can check its [documentation](https://cloud.google.com/pubsub/docs/emulator).

## Usage
The following shell statement will start the *Pub/Sub Emulator* on port 8538.

```sh
docker run --rm -it -p 8538:8538 aongko/pubsub-emulator
```
