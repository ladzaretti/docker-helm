# renovate: datasource=github-releases depName=helm lookupName=helm/helm
ARG HELM_VERSION=3.9.0

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:0d8ca4d35654635dc370c76f8f5a3eed004291110a05153f37cd30942d51ad4e

ARG HELM_VERSION
RUN install-tool helm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-helm" \
  org.opencontainers.image.version="${HELM_VERSION}"

USER 1000
