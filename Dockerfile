FROM google/cloud-sdk:183.0.0-alpine

RUN apk --update add openjdk7-jre && \
  gcloud components install --quiet beta pubsub-emulator

EXPOSE 8538

VOLUME /data

ENTRYPOINT ["gcloud", "beta", "emulators", "pubsub"]

CMD ["start", "--host-port=0.0.0.0:8538", "--data-dir=/data"]
