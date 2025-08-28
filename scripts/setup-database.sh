#!/bin/bash

# T3 Turbo Database Setup Script
# This script sets up the local PostgreSQL database for development

set -e

echo "🐳 Setting up T3 Turbo local database..."

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo "❌ Docker is not running. Please start Docker and try again."
    exit 1
fi

# Start PostgreSQL container
echo "📦 Starting PostgreSQL container..."
docker-compose up -d postgres

# Wait for PostgreSQL to be ready
echo "⏳ Waiting for PostgreSQL to be ready..."
timeout 30 bash -c 'until docker-compose exec postgres pg_isready -U postgres -d t3_turbo_ai_test; do sleep 1; done'

if [ $? -eq 0 ]; then
    echo "✅ PostgreSQL is ready!"
else
    echo "❌ PostgreSQL failed to start within 30 seconds"
    exit 1
fi

# Push database schema
echo "📊 Pushing database schema..."
pnpm db:push

echo "🎉 Database setup complete!"
echo ""
echo "📋 Database Information:"
echo "   Host: localhost"
echo "   Port: 5432"
echo "   Database: t3_turbo_ai_test"
echo "   Username: postgres"
echo "   Password: password"
echo ""
echo "🔧 Useful commands:"
echo "   pnpm db:studio    # Open Drizzle Studio"
echo "   pnpm db:logs      # View database logs"
echo "   pnpm db:reset     # Reset database (removes all data)"
echo "   pnpm db:down      # Stop database"
echo ""
echo "🚀 Ready to start development with: pnpm dev"