# Build stage
FROM rust:1.85 AS build
WORKDIR /app
COPY . .
RUN cargo build --release

# Distroless runtime stage
FROM gcr.io/distroless/cc-debian12
COPY --from=build /app/target/release/rust-greedy-coin-microservice /app/

# Use non-root user
USER nonroot:nonroot

# Set up app directory
ENV APP_HOME=/app
WORKDIR $APP_HOME

# Expose port
EXPOSE 3000

# Run app
ENTRYPOINT ["/app/rust-greedy-coin-microservice"]