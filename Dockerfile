FROM debian:bookworm-slim AS build
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates curl xz-utils gcc libc6-dev git libssl-dev libzmq5 libpcre3 \
    && rm -rf /var/lib/apt/lists/*
RUN curl -fsSL https://nim-lang.org/download/nim-2.2.4-linux_x64.tar.xz -o /tmp/nim.tar.xz \
    && echo "791802138aaf19c8579232c50b4998ce2ae2928b791127ce5b4ef3c7af53fb46  /tmp/nim.tar.xz" | sha256sum -c - \
    && mkdir -p /opt/nim && tar -xJf /tmp/nim.tar.xz --strip-components=1 -C /opt/nim \
    && rm /tmp/nim.tar.xz
ENV PATH="/opt/nim/bin:${PATH}"
WORKDIR /app
COPY . .
RUN nimble install -y --depsOnly && nimble build -y -d:release

FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates libzmq5 libpcre3 libssl3 \
    && rm -rf /var/lib/apt/lists/*
COPY --from=build /app/starRouter /usr/local/bin/starRouter
ENTRYPOINT ["starRouter"]
