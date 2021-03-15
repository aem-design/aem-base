FROM        aemdesign/java-ffmpeg:jdk11

LABEL   os="centos" \
        java="oracle 8" \
        container.description="base image for aem with installed dependecies" \
        version="1.0.0" \
        maintainer="devops <devops@aem.design>" \
        imagename="aem-base" \
        test.command="java --version" \
        test.command.verify="11."

RUN     \
        yum install -y --enablerepo=extras epel-release && \
        yum install -y \
            curl-devel \
            openssl.x86_64 openssl-devel \
            nss-softokn-freebl.x86_64 nss-softokn-freebl.i686 \
            glibc.x86_64 glibc.i686 \
            libX11.x86_64 libX11.i686 \
            libxcb.x86_64 libxcb.i686 \
            libXau.x86_64 libXau.i686 \
            zlib.x86_64 zlib.i686 \
            libXext.x86_64 libXext.i686 \
            fontconfig.x86_64 fontconfig.i686 \
            expat.x86_64 expat.i686 \
            freetype.x86_64 freetype.i686 \
            libSM.x86_64 libSM.i686 \
            libICE.x86_64 libICE.i686 \
            libuuid.x86_64 libuuid.i686 \
            libuuid.x86_64 libuuid.i686 \
            libXrandr.x86_64 libXrandr.i686 \
            libXrender.x86_64 libXrender.i686 \
            libXinerama.x86_64 libXinerama.i686 \
            ld-linux.so.2 \
            ImageMagick ImageMagick-devel && \
        yum groupinstall -y Fonts && \
## clenaup
        yum clean all && rm -rf /var/lib/yum/*

#CMD ["/bin/bash"]
