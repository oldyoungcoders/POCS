docker run -it \
    -v "$PANDIR/logs:/huntsman/logs" \
    -v "$PANDIR/build:/huntsman/build" \
    -v "$HUNTSMAN_POCS/src:/huntsman/src" \
    -v "$HUNTSMAN_POCS/tests:/huntsman/tests" \
    -v "$HUNTSMAN_POCS/POCS:/POCS" \
    bsreddragon/huntsman-pocs:develeop \
    /bin/bash -ic 'cd /POCS && micromamba run -n base python -m pip install --no-cache-dir .[focuser] && cd /huntsman && pytest -v -s' 