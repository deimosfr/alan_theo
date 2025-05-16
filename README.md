# Hostname Printer with SIGTERM Handler

This container:

- Prints its hostname every 5 seconds
- Intercepts SIGTERM signals
- When a SIGTERM is received, sleeps for 10 minutes before exiting

## Build the Container

```bash
docker build -t hostname-printer .
```

## Run the Container

```bash
docker run -d --name printer hostname-printer
```

## Test SIGTERM Handling

To test the SIGTERM handling, send a SIGTERM signal to the container:

```bash
docker stop printer
```

You can check the logs to see what's happening:

```bash
docker logs -f printer
```

Note: The container will continue running for 10 minutes after receiving the SIGTERM signal.
