from ubuntu:bionic
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install libc6:i386 libstdc++6:i386 unzip curl -y
RUN mkdir -p /opt/jx/
RUN mkdir -p /build/
RUN curl -o /opt/jx/jx.zip sun45.informatik.uni-bremen.de/wordpress/wp-content/uploads/jx-lx86.zip
RUN unzip /opt/jx/jx.zip -d /opt/jx
RUN rm /opt/jx/jx.zip
RUN apt-get remove unzip curl -y
RUN apt-get autoremove -y
RUN apt-get clean
RUN chmod +x /opt/jx/jx
RUN ln -s /opt/jx/jx /usr/bin/
