#! /bin/bash

echo "Accessing container shell ..."
docker run --rm -it \
  -v $SCRIPTS_DIR:/external \
  --entrypoint "/bin/bash" \
  gmyoungbloodparc/ardupilot-sitl 
exit $?
