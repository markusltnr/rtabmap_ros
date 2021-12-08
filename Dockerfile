FROM ros:melodic-perception
# install rtabmap packages
ARG CACHE_DATE=2016-01-01
RUN apt-get update && apt-get install -y \
    ros-melodic-rtabmap \
    ros-melodic-rtabmap-ros \
    && rm -rf /var/lib/apt/lists/
COPY rtabmap.launch /opt/ros/melodic/share/rtabmap_ros/launch/rtabmap.launch
