FROM jitesoft/node-yarn:20

ARG TARGETARCH
ARG BUILDPLATFORM

RUN echo "$BUILDPLATFORM" > /BUILDPLATFORM
RUN echo "$TARGETARCH" > /TARGETARCH

RUN yarn set version berry
RUN mkdir -p /home/app
WORKDIR /home/app

EXPOSE 4000

CMD ["/bin/sh"]