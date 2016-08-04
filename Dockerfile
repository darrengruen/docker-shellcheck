FROM debian

RUN apt-get update && apt-get install -y shellcheck

VOLUME [ "/workdir" ]
WORKDIR "/workdir"

ENTRYPOINT [ "shellcheck" ]
