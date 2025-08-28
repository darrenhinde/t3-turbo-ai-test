# 🚀 T3 Turbo Development Setup

## Prerequisites

- **Node.js** 20+ (or use the version in `.nvmrc`)
- **pnpm** 9.6.0+ (install with `npm install -g pnpm`)
- **Docker** and **Docker Compose** (for local database)

## Quick Start

### 1. **Clone and Install**
```bash
git clone https://github.com/darrenhinde/t3-turbo-ai-test.git
cd t3-turbo-ai-test
pnpm install
```

### 2. **Set Up Environment**
```bash
# Copy environment file
cp .env.example .env

# The .env file is already configured for local development
# No changes needed for basic setup
```

### 3. **Start Development (Automatic Database)**
```bash
# This automatically starts PostgreSQL and the development servers
pnpm dev

# What this does:
# 1. Starts PostgreSQL container (docker-compose up -d postgres)
# 2. Waits for database to be ready
# 3. Starts all development servers (Next.js, Expo, etc.)
```

### 4. **Initialize Database Schema**
```bash
# Push the database schema (run this once after first setup)
pnpm db:push

# Open Drizzle Studio to view/manage data
pnpm db:studio
```

### 5. **Access Your Applications**
- **Next.js Web App**: http://localhost:3000
- **Drizzle Studio**: http://localhost:4983 (after running `pnpm db:studio`)
- **pgAdmin** (optional): http://localhost:5050 (username: admin@t3turbo.local, password: admin)

## Database Management

### **Automatic Database Lifecycle**
```bash
# Start development (includes database)
pnpm dev

# Stop development and database
pnpm dev:stop
# or just Ctrl+C and then:
pnpm db:down
```

### **Manual Database Control**
```bash
# Start only the database
pnpm db:up

# Stop the database
pnpm db:down

# View database logs
pnpm db:logs

# Reset database (removes all data)
pnpm db:reset

# Push schema changes
pnpm db:push

# Open database management UI
pnpm db:studio
```

### **Database Connection Details**
- **Host**: localhost
- **Port**: 5432
- **Database**: t3_turbo_ai_test
- **Username**: postgres
- **Password**: password
- **Connection URL**: `postgresql://postgres:password@localhost:5432/t3_turbo_ai_test`

## Development Workflow

### **For AI Agent Testing**
```bash
# 1. Switch to agent workspace
git checkout agent-workspace

# 2. Start development environment
pnpm dev

# 3. Read task requirements
cat AI-AGENT-README.md
cat ai-agent-tasks/task-01-user-profile.md

# 4. Implement features
# - Edit files in packages/ and apps/
# - Test changes in browser (localhost:3000)
# - Use Drizzle Studio for database inspection

# 5. Validate implementation
pnpm typecheck  # Check TypeScript
pnpm build      # Test build
pnpm db:studio  # Inspect database changes
```

### **Available Scripts**
```bash
# Development
pnpm dev              # Start all development servers + database
pnpm dev:next         # Start only Next.js app + database
pnpm dev:stop         # Stop database

# Database
pnpm db:up            # Start PostgreSQL container
pnpm db:down          # Stop PostgreSQL container
pnpm db:push          # Push schema to database
pnpm db:studio        # Open Drizzle Studio
pnpm db:logs          # View database logs
pnpm db:reset         # Reset database (removes all data)

# Building & Testing
pnpm build            # Build all packages
pnpm typecheck        # TypeScript checking
pnpm lint             # Lint all packages
pnpm format           # Format code

# UI Components
pnpm ui-add           # Add new shadcn/ui components
```

## Troubleshooting

### **Database Issues**

**Problem**: Database connection fails
```bash
# Check if Docker is running
docker info

# Check if PostgreSQL container is running
docker-compose ps

# View database logs
pnpm db:logs

# Reset database
pnpm db:reset
```

**Problem**: Schema changes not applied
```bash
# Push schema changes
pnpm db:push

# If that fails, reset and push
pnpm db:reset
pnpm db:push
```

### **Development Server Issues**

**Problem**: Port already in use
```bash
# Check what's using port 3000
lsof -i :3000

# Kill the process or use different port
PORT=3001 pnpm dev:next
```

**Problem**: TypeScript errors
```bash
# Check for type errors
pnpm typecheck

# Clean and rebuild
pnpm clean:workspaces
pnpm install
pnpm build
```

### **Docker Issues**

**Problem**: Docker not found
```bash
# Install Docker Desktop
# https://www.docker.com/products/docker-desktop

# Or install Docker Engine (Linux)
# https://docs.docker.com/engine/install/
```

**Problem**: Permission denied (Linux)
```bash
# Add user to docker group
sudo usermod -aG docker $USER
# Log out and back in
```

## Architecture Overview

```
t3-turbo-ai-test/
├── apps/
│   ├── nextjs/          # Next.js web application
│   └── expo/            # React Native mobile app
├── packages/
│   ├── api/             # tRPC API routes
│   ├── auth/            # Authentication (Better Auth)
│   ├── db/              # Database (Drizzle ORM)
│   ├── ui/              # Shared UI components
│   └── validators/      # Zod validation schemas
├── docker-compose.yml   # Database container config
├── scripts/             # Setup and utility scripts
└── ai-agent-tasks/      # AI agent implementation tasks
```

## Next Steps

1. **Explore the codebase**: Look at existing components and patterns
2. **Read task requirements**: Check `ai-agent-tasks/` for implementation challenges
3. **Start implementing**: Follow T3 patterns and conventions
4. **Test your changes**: Use the development server and database tools
5. **Validate your work**: Run type checking and builds

---

**Ready to build something amazing with T3 Turbo?** 🚀

The development environment is fully configured and ready to go!