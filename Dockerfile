FROM google/cloud-sdk:alpine

RUN apk --update add openjdk8-jre && \
  gcloud components install --quiet beta pubsub-emulator && \
  gcloud components update

EXPOSE 8085

VOLUME /data

ENTRYPOINT ["gcloud", "beta", "emulators", "pubsub", "start"]

CMD ["--host-port=0.0.0.0:8538", "--data-dir=/data"]
