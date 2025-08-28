# 🤖 T3 Turbo AI Agent Testing Environment

Welcome to the **T3 Turbo AI Agent Testing Environment**! This is a real-world, production-ready full-stack application built with the modern T3 stack.

## 🎯 Your Mission

You are working with a **complete T3 Turbo monorepo** that includes:
- **Next.js App** (`apps/nextjs`) - Full-stack web application
- **Expo App** (`apps/expo`) - Cross-platform mobile application  
- **Shared Packages** - API, Database, UI, Auth, and Validators

Your task is to implement specific features that demonstrate your full-stack development capabilities.

## 🏗️ Architecture Overview

```
t3-turbo-ai-test/
├── apps/
│   ├── nextjs/          # Next.js web application
│   └── expo/            # React Native mobile app
├── packages/
│   ├── api/             # tRPC API routes
│   ├── auth/            # Authentication (Better Auth)
│   ├── db/              # Database (Drizzle ORM + PostgreSQL)
│   ├── ui/              # Shared UI components (shadcn/ui)
│   └── validators/      # Zod validation schemas
└── ai-agent-tasks/      # Your implementation tasks
```

## 🛠️ Tech Stack

- **Frontend**: Next.js 15, React 19, TypeScript
- **Mobile**: Expo, React Native
- **Backend**: tRPC, Next.js API Routes
- **Database**: PostgreSQL, Drizzle ORM
- **Auth**: Better Auth (OAuth + Sessions)
- **UI**: Tailwind CSS, shadcn/ui
- **Validation**: Zod
- **Monorepo**: Turborepo, pnpm

## 🚀 Getting Started

### 1. **Explore the Codebase**
```bash
# Install dependencies
pnpm install

# Explore the structure
ls -la apps/
ls -la packages/

# Check existing functionality
cat apps/nextjs/src/app/page.tsx
cat packages/api/src/router/post.ts
```

### 2. **Set Up Environment**
```bash
# Copy environment file
cp .env.example .env

# Edit .env with your database URL
# For local testing, you can use:
# POSTGRES_URL="postgresql://postgres:password@localhost:5432/t3_turbo_test"
```

### 3. **Start Development**
```bash
# Push database schema
pnpm db:push

# Start all applications
pnpm dev

# This starts:
# - Next.js app on http://localhost:3000
# - Expo development server
# - All package watchers
```

## 📋 Available Tasks

Choose from these implementation challenges:

### 🟢 **Beginner Tasks** (30-45 minutes)
- **Task 1**: User Profile Management
- **Task 2**: Post Categories and Tags
- **Task 3**: Basic Search Functionality

### 🟡 **Intermediate Tasks** (60-90 minutes)
- **Task 4**: Real-time Comments System
- **Task 5**: File Upload and Media Management
- **Task 6**: Email Notifications

### 🔴 **Advanced Tasks** (2-3 hours)
- **Task 7**: Multi-tenant Architecture
- **Task 8**: Advanced Analytics Dashboard
- **Task 9**: Real-time Chat System

## 🎯 What You'll Be Evaluated On

### **Technical Skills** (60%)
- **Full-Stack Integration**: How well do your frontend and backend work together?
- **Type Safety**: Proper use of TypeScript, tRPC, and Zod validation
- **Database Design**: Efficient schema design and queries
- **Code Quality**: Clean, maintainable, and well-structured code

### **Architecture & Patterns** (25%)
- **Monorepo Management**: Proper package organization and dependencies
- **API Design**: RESTful tRPC routes with proper error handling
- **Component Architecture**: Reusable UI components and proper separation
- **State Management**: Efficient data fetching and caching

### **Real-World Readiness** (15%)
- **Error Handling**: Graceful error states and user feedback
- **Performance**: Optimized queries and efficient rendering
- **Security**: Proper authentication and authorization
- **Testing**: Unit tests and integration tests (if applicable)

## 🔍 Key Integration Points

### **Adding New Features**
1. **Database Schema**: Update `packages/db/src/schema.ts`
2. **API Routes**: Add tRPC routes in `packages/api/src/router/`
3. **Validation**: Create Zod schemas in `packages/validators/`
4. **UI Components**: Build reusable components in `packages/ui/`
5. **Frontend Pages**: Implement in `apps/nextjs/src/app/`
6. **Mobile Screens**: Add to `apps/expo/src/app/`

### **Following T3 Patterns**
- Use **tRPC** for type-safe API calls
- Implement **Drizzle ORM** for database operations
- Follow **Better Auth** patterns for authentication
- Use **shadcn/ui** components for consistent UI
- Apply **Zod** validation on both client and server

## ⚠️ Important Notes

### **This is Production-Quality Code**
- Follow existing patterns and conventions
- Write clean, maintainable TypeScript
- Handle errors gracefully
- Consider performance implications
- Test your implementations thoroughly

### **Monorepo Considerations**
- Changes in `packages/` affect both apps
- Use proper import paths (`@acme/api`, `@acme/db`, etc.)
- Run `pnpm build` to check for type errors
- Test changes in both Next.js and Expo apps

### **Database Migrations**
- Use `pnpm db:push` for development
- Create proper migrations for production
- Test schema changes thoroughly

## 🧪 Testing Your Implementation

```bash
# Type checking
pnpm typecheck

# Linting
pnpm lint

# Build all packages
pnpm build

# Test database operations
pnpm db:studio  # Opens Drizzle Studio

# Test API endpoints
# Visit http://localhost:3000/api/trpc-playground
```

## 📚 Resources

- **T3 Stack**: https://create.t3.gg/
- **tRPC**: https://trpc.io/docs
- **Drizzle ORM**: https://orm.drizzle.team/
- **Better Auth**: https://www.better-auth.com/
- **shadcn/ui**: https://ui.shadcn.com/
- **Turborepo**: https://turbo.build/repo

---

**Ready to build something amazing?** Choose a task from `ai-agent-tasks/` and start implementing! 🚀

**Remember**: This is real-world code that could be deployed to production. Make it count! ✨