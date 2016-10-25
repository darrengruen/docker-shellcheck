#
# Run shellcheck inside a docker container
# docker run -i --rm \
#   -v "$(pwd)":/workdir \
#   --name [name] \
#   gruen\shellcheck file_to_check [options]
#

FROM debian

RUN apt-get update && apt-get install -y shellcheck

VOLUME [ "/workdir" ]
WORKDIR "/workdir"

ENTRYPOINT [ "shellcheck" ]
