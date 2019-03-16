FROM parity/parity:v2.2.9
WORKDIR /
USER root
RUN mv /home/parity/entrypoint.sh / \
    && mv /home/parity/bin/$TARGET /bin/ \
    && chown root:root /entrypoint.sh \
    && rm -rf /home/parity
