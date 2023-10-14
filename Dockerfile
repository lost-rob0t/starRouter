FROM nimlang/nim:onbuild
RUN apt install libzmq5 -y
ENTRYPOINT ["./starRouter"]
