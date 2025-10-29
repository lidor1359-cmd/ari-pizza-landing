# AI Dev Workflow - Docker Development Environment

A containerized development environment with hot reloading for the AI-Assisted App Development Workflow guide.

## Features

- Live reload on file changes
- Dockerized development server
- Mobile-responsive design
- Hot reloading with live-server
- Lightweight Node.js Alpine image

## Prerequisites

- Docker Desktop installed and running
- Basic knowledge of Docker commands

## Quick Start

### Option 1: Using Docker Compose (Recommended)

```bash
# Build and start the container
docker-compose up

# Or run in detached mode (background)
docker-compose up -d

# Stop the container
docker-compose down
```

### Option 2: Using Docker Commands

```bash
# Build the image
docker build -t ai-dev-workflow .

# Run the container
docker run -p 8080:8080 -v $(pwd):/app -v /app/node_modules ai-dev-workflow

# Stop the container
docker stop ai-dev-workflow
```

## Access the Application

Once running, open your browser and navigate to:
```
http://localhost:8080
```

The page will automatically reload when you make changes to any HTML files.

## Project Structure

```
.
├── Dockerfile              # Docker configuration
├── docker-compose.yml      # Docker Compose configuration
├── package.json            # Node.js dependencies
├── .dockerignore          # Files to exclude from Docker
├── ai-dev-workflow.html   # Main HTML file
├── test.html              # Test HTML file
└── README.md              # This file
```

## Development

1. Make changes to `ai-dev-workflow.html` or any other HTML file
2. Save the file
3. Browser automatically refreshes with your changes

## Stopping the Server

```bash
# If running in foreground: Press Ctrl+C

# If running with docker-compose in background:
docker-compose down

# If running with docker run:
docker stop ai-dev-workflow
```

## Troubleshooting

**Port already in use:**
```bash
# Change the port in docker-compose.yml from 8080:8080 to another port like 3000:8080
ports:
  - "3000:8080"
```

**Container not updating:**
```bash
# Rebuild the container
docker-compose up --build
```

## Technologies Used

- Docker
- Node.js (Alpine)
- live-server (for hot reloading)

## License

ISC
