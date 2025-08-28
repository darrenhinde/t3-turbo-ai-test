-- T3 Turbo AI Test Database Initialization
-- This script runs when the PostgreSQL container starts for the first time

-- Create the main database (already created by POSTGRES_DB env var)
-- CREATE DATABASE t3_turbo_ai_test;

-- Connect to the database
\c t3_turbo_ai_test;

-- Create extensions that might be useful
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- Log successful initialization
SELECT 'T3 Turbo AI Test Database initialized successfully!' as message;