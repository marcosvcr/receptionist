#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_synth"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/install/lib/python2.7/dist-packages:/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/build" \
    "/usr/bin/python2" \
    "/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/src/hbba/hbba_base/hbba_synth/setup.py" \
     \
    build --build-base "/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/build/hbba/hbba_base/hbba_synth" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/install" --install-scripts="/home/gbnunes/Documentos/New_ROS_Project/catkin_recepcionist/install/bin"
