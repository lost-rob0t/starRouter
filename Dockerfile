# syntax=docker/dockerfile:1
FROM nixos/nix:2.28.3 AS build
WORKDIR /src
COPY . .
RUN --mount=type=secret,id=proxy_ca \
    if [ -f /run/secrets/proxy_ca ]; then \
      export NIX_SSL_CERT_FILE=/run/secrets/proxy_ca; \
    fi; \
    nix --extra-experimental-features 'nix-command flakes' --option sandbox false \
      build .#default --out-link /out && \
    mkdir -p /rootfs/nix/store /rootfs/bin && \
    for router_runtime_path in $(nix-store --query --requisites /out); do \
      cp -a "$router_runtime_path" /rootfs/nix/store/; \
    done && \
    ln -s /out/bin/starRouter /rootfs/bin/starRouter && \
    cp -a /out /rootfs/out

FROM scratch
COPY --from=build /rootfs/ /
WORKDIR /work
EXPOSE 6000 6001
ENTRYPOINT ["/bin/starRouter"]
