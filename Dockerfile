FROM nixos/nix

ENV LANG=C.UTF-8

RUN nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs && \
        nix-channel --update && \
        nix-build -A ormolu '<nixpkgs>'

ENTRYPOINT ["./result-bin/bin/ormolu"]
