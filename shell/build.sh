docker build \
  -t tryzo/app:latest \
  -f app.Dockerfile \
  --build-arg BUILDPLATFORM="linux" \
  --build-arg TARGETARCH="linux" \
  .