FROM alpine:3.18

# Install bash for signal handling
RUN apk add --no-cache bash

# Copy the script that will run in the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Use bash as the entrypoint to properly handle signals
ENTRYPOINT ["/entrypoint.sh"] 