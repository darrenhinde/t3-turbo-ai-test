# 🚀 T3 Turbo AI Agent Testing Guide

## 🎯 Repository Overview

**Repository**: https://github.com/darrenhinde/t3-turbo-ai-test

This is a **real-world, production-ready T3 Turbo monorepo** designed for comprehensive AI agent testing. Unlike toy examples, this tests agents on actual full-stack development skills with modern tools and patterns.

## 🏗️ What Makes This Special

### **Real-World Complexity**
- **Full T3 Stack**: Next.js, tRPC, Drizzle ORM, Better Auth, Tailwind
- **Monorepo Architecture**: Multiple apps and shared packages
- **Production Patterns**: Type safety, validation, error handling
- **Modern Tools**: Latest versions of all dependencies

### **Comprehensive Testing Scope**
- **Frontend Development**: React, Next.js, responsive design
- **Backend Development**: tRPC APIs, database operations
- **Mobile Development**: React Native with Expo
- **Full-Stack Integration**: End-to-end feature implementation
- **DevOps Skills**: Monorepo management, build systems

## 🌿 Branch Structure

### **`main`** - Documentation and Setup
- Complete T3 Turbo monorepo
- All dependencies and configurations
- Ready for development

### **`agent-workspace`** - AI Agent Starting Point
- Same codebase as main
- AI agent task descriptions
- Clear implementation guidelines
- No reference solutions visible

### **`evaluation-reference`** - Hidden Evaluation Assets
- Reference implementations (when created)
- Comprehensive test suites
- Evaluation criteria and rubrics
- Performance benchmarks

## 🎯 Available Test Scenarios

### **🟢 Beginner Level** (30-45 minutes)
**Task 1: User Profile Management**
- Database schema design
- tRPC API development
- Form handling and validation
- File upload functionality
- Responsive UI components

### **🟡 Intermediate Level** (60-90 minutes)
**Task 2: Real-time Comments System** (Coming Soon)
- WebSocket integration
- Real-time data synchronization
- Advanced state management
- Performance optimization

### **🔴 Advanced Level** (2-3 hours)
**Task 3: Multi-tenant Architecture** (Coming Soon)
- Complex database relationships
- Advanced authentication patterns
- Scalable architecture design
- Performance at scale

## 🧪 How to Test AI Agents

### **Step 1: Agent Setup**
```bash
# Clone the repository
git clone https://github.com/darrenhinde/t3-turbo-ai-test.git
cd t3-turbo-ai-test

# Switch to agent workspace
git checkout agent-workspace

# Install dependencies
pnpm install

# Set up environment
cp .env.example .env
# Edit .env with database URL (can use SQLite for local testing)
```

### **Step 2: Agent Implementation**
```bash
# Create agent implementation branch
git checkout -b claude-implementation

# Agent reads task description
cat AI-AGENT-README.md
cat ai-agent-tasks/task-01-user-profile.md

# Agent implements the feature
# - Updates database schema
# - Creates tRPC routes
# - Builds UI components
# - Implements mobile screens

# Agent commits their work
git add .
git commit -m "Implement user profile management system"
```

### **Step 3: Evaluation**
```bash
# Run git-based evaluation
cd ../AI-Tool-coding-analyser
bun scripts/evaluate-enhanced.ts \
  --mode git \
  --repoPath ../t3-turbo-ai-test \
  --baseBranch agent-workspace \
  --targetBranch claude-implementation \
  --agent "Claude" \
  --session "t3-turbo-test-001"
```

## 📊 Evaluation Criteria

### **Technical Implementation** (40%)
- **Type Safety**: Proper TypeScript usage throughout
- **API Design**: Well-structured tRPC routes
- **Database Design**: Efficient schema and queries
- **Code Quality**: Clean, maintainable code

### **Full-Stack Integration** (30%)
- **Frontend-Backend**: Seamless data flow
- **Mobile Integration**: Expo app functionality
- **Package Management**: Proper monorepo usage
- **Build System**: No compilation errors

### **Real-World Readiness** (20%)
- **Error Handling**: Graceful error states
- **Validation**: Client and server validation
- **Performance**: Optimized queries and rendering
- **Security**: Proper authentication patterns

### **Architecture & Patterns** (10%)
- **T3 Conventions**: Following established patterns
- **Component Design**: Reusable, well-structured components
- **State Management**: Efficient data handling
- **Testing**: Unit tests and integration tests

## 🎯 What This Tests That Others Don't

### **Real Monorepo Complexity**
- Managing dependencies across packages
- Understanding build order and dependencies
- Proper import paths and package references
- Turborepo configuration and optimization

### **Production-Grade Patterns**
- Type-safe API development with tRPC
- Database migrations and schema evolution
- Authentication and authorization flows
- Error boundaries and graceful degradation

### **Modern Development Workflow**
- Package management with pnpm
- Build systems with Turborepo
- Development tooling integration
- Code quality and linting standards

### **Cross-Platform Development**
- Shared code between web and mobile
- Platform-specific implementations
- Responsive design principles
- Performance considerations

## 🚀 Getting Started

### **For AI Agent Testing**
1. **Clone the repository**: `git clone https://github.com/darrenhinde/t3-turbo-ai-test.git`
2. **Switch to agent workspace**: `git checkout agent-workspace`
3. **Read the task**: `cat AI-AGENT-README.md`
4. **Choose a task**: `ls ai-agent-tasks/`
5. **Start implementing**: Follow the task requirements
6. **Test your work**: `pnpm typecheck && pnpm build`
7. **Commit and evaluate**: Use the evaluation framework

### **For Adding New Tasks**
1. **Switch to agent workspace**: `git checkout agent-workspace`
2. **Create task file**: `ai-agent-tasks/task-XX-feature-name.md`
3. **Define requirements**: Clear acceptance criteria
4. **Test the task**: Ensure it's achievable and fair
5. **Create reference**: Implement on evaluation-reference branch
6. **Document evaluation**: Clear scoring rubric

## 📈 Expected Results

### **Beginner Agent** (Score: 60-75%)
- Basic functionality working
- Some type errors or missing validation
- UI works but may not be polished
- Database operations functional

### **Intermediate Agent** (Score: 75-85%)
- Most requirements implemented correctly
- Good type safety and validation
- Clean, well-structured code
- Proper error handling

### **Advanced Agent** (Score: 85-95%)
- All requirements exceeded
- Production-ready code quality
- Excellent architecture decisions
- Comprehensive error handling and edge cases

### **Expert Agent** (Score: 95-100%)
- Perfect implementation
- Innovative solutions
- Performance optimizations
- Additional features beyond requirements

## 🔧 Technical Validation

### **Automated Checks**
```bash
# Type checking across all packages
pnpm typecheck

# Build all packages
pnpm build

# Linting
pnpm lint

# Database schema validation
pnpm db:push
```

### **Manual Testing**
- **Web App**: http://localhost:3000
- **Mobile App**: Expo development server
- **API Testing**: tRPC playground
- **Database**: Drizzle Studio

## 🎉 Why This Is Revolutionary

### **Beyond Toy Examples**
This isn't a simple todo app or basic CRUD. It's a **real production codebase** that tests:
- Complex architecture decisions
- Modern development patterns
- Cross-platform considerations
- Performance and scalability

### **Comprehensive Skill Assessment**
Tests the full spectrum of modern web development:
- **Frontend**: React, Next.js, responsive design
- **Backend**: APIs, databases, authentication
- **Mobile**: React Native, cross-platform development
- **DevOps**: Build systems, monorepo management

### **Fair and Objective**
- **Identical starting conditions** for all agents
- **Clear acceptance criteria** with measurable outcomes
- **Automated validation** where possible
- **Transparent scoring** methodology

---

**Ready to test the future of AI coding agents?** This T3 Turbo testing environment provides the most comprehensive, realistic evaluation framework available! 🚀

**Repository**: https://github.com/darrenhinde/t3-turbo-ai-test  
**Evaluation Framework**: https://github.com/darrenhinde/AI-Tool-coding-analyser