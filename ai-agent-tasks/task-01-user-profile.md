# Task 1: User Profile Management System

## 🎯 Overview
Implement a comprehensive user profile management system that allows users to view and edit their profile information, including avatar uploads and preference settings.

**Difficulty**: 🟢 Beginner  
**Estimated Time**: 30-45 minutes  
**Skills**: Full-stack development, Database design, File handling, Form validation

## 📋 Requirements

### **Core Functionality**
- [ ] User profile page displaying current user information
- [ ] Profile editing form with validation
- [ ] Avatar/profile picture upload functionality
- [ ] User preferences (theme, notifications, etc.)
- [ ] Profile completion percentage indicator

### **Technical Requirements**
- [ ] Database schema for user profiles
- [ ] tRPC API routes for profile operations
- [ ] Zod validation schemas
- [ ] Responsive UI components
- [ ] Type-safe implementation throughout

## 🏗️ Implementation Guide

### **Step 1: Database Schema**
Update `packages/db/src/schema.ts` to include user profile fields:

```typescript
// Add to existing user table or create user_profiles table
export const userProfiles = pgTable("user_profile", {
  id: text("id").primaryKey(),
  userId: text("user_id").notNull().references(() => user.id),
  firstName: text("first_name"),
  lastName: text("last_name"),
  bio: text("bio"),
  avatarUrl: text("avatar_url"),
  location: text("location"),
  website: text("website"),
  dateOfBirth: timestamp("date_of_birth"),
  preferences: json("preferences").$type<{
    theme: 'light' | 'dark' | 'system';
    notifications: boolean;
    newsletter: boolean;
  }>(),
  createdAt: timestamp("created_at").defaultNow(),
  updatedAt: timestamp("updated_at").defaultNow(),
});
```

### **Step 2: Validation Schemas**
Create validation in `packages/validators/src/index.ts`:

```typescript
export const userProfileSchema = z.object({
  firstName: z.string().min(1).max(50).optional(),
  lastName: z.string().min(1).max(50).optional(),
  bio: z.string().max(500).optional(),
  location: z.string().max(100).optional(),
  website: z.string().url().optional().or(z.literal("")),
  dateOfBirth: z.date().optional(),
  preferences: z.object({
    theme: z.enum(['light', 'dark', 'system']),
    notifications: z.boolean(),
    newsletter: z.boolean(),
  }).optional(),
});
```

### **Step 3: tRPC API Routes**
Add routes in `packages/api/src/router/profile.ts`:

```typescript
export const profileRouter = createTRPCRouter({
  get: protectedProcedure
    .query(async ({ ctx }) => {
      // Get user profile
    }),

  update: protectedProcedure
    .input(userProfileSchema)
    .mutation(async ({ ctx, input }) => {
      // Update user profile
    }),

  uploadAvatar: protectedProcedure
    .input(z.object({ 
      file: z.string(), // base64 or file URL
    }))
    .mutation(async ({ ctx, input }) => {
      // Handle avatar upload
    }),
});
```

### **Step 4: UI Components**
Create components in `packages/ui/src/`:

- `profile-form.tsx` - Profile editing form
- `avatar-upload.tsx` - Avatar upload component
- `profile-card.tsx` - Profile display component

### **Step 5: Next.js Pages**
Implement pages in `apps/nextjs/src/app/`:

- `profile/page.tsx` - Profile view page
- `profile/edit/page.tsx` - Profile editing page

### **Step 6: Mobile Implementation**
Add screens in `apps/expo/src/app/`:

- `profile/index.tsx` - Mobile profile screen
- `profile/edit.tsx` - Mobile profile editing

## ✅ Acceptance Criteria

### **Functional Requirements**
- [ ] Users can view their complete profile information
- [ ] Users can edit and save profile changes
- [ ] Profile changes are validated on both client and server
- [ ] Avatar upload works with proper file validation
- [ ] Preferences are saved and applied (theme changes UI)
- [ ] Profile completion percentage is calculated correctly

### **Technical Requirements**
- [ ] All API calls are type-safe using tRPC
- [ ] Database operations use Drizzle ORM properly
- [ ] Form validation uses Zod schemas
- [ ] UI components are responsive and accessible
- [ ] Error states are handled gracefully
- [ ] Loading states provide good UX

### **Code Quality**
- [ ] TypeScript types are properly defined
- [ ] Code follows existing project conventions
- [ ] Components are reusable and well-structured
- [ ] Database queries are efficient
- [ ] Proper error handling throughout

## 🧪 Testing Your Implementation

### **Manual Testing**
1. **Profile View**: Navigate to `/profile` and verify all fields display
2. **Profile Edit**: Edit profile information and save changes
3. **Avatar Upload**: Upload a new profile picture
4. **Preferences**: Change theme and verify UI updates
5. **Validation**: Try invalid inputs and verify error messages
6. **Mobile**: Test on Expo app for mobile responsiveness

### **Technical Validation**
```bash
# Type checking
pnpm typecheck

# Database schema
pnpm db:push
pnpm db:studio  # Verify tables created correctly

# Build test
pnpm build

# API testing
# Test tRPC routes at http://localhost:3000/api/trpc-playground
```

## 💡 Implementation Tips

### **Database Best Practices**
- Use proper foreign key relationships
- Add appropriate indexes for queries
- Consider using UUIDs for profile IDs
- Handle null values gracefully

### **File Upload Strategy**
- Consider using cloud storage (AWS S3, Cloudinary)
- Implement proper file validation (size, type)
- Generate optimized image sizes
- Handle upload errors gracefully

### **Form Handling**
- Use React Hook Form for complex forms
- Implement optimistic updates where appropriate
- Provide clear validation feedback
- Handle network errors

### **Performance Considerations**
- Lazy load profile images
- Cache user profile data appropriately
- Optimize database queries
- Use proper loading states

## 🎯 Bonus Challenges

If you complete the basic requirements quickly, try these enhancements:

- [ ] **Social Links**: Add support for social media profiles
- [ ] **Profile Privacy**: Implement public/private profile settings
- [ ] **Profile Analytics**: Track profile views and completion rates
- [ ] **Bulk Import**: Allow importing profile data from other platforms
- [ ] **Profile Templates**: Provide pre-filled profile templates

## 📚 Resources

- **Drizzle Relations**: https://orm.drizzle.team/docs/rls
- **tRPC Protected Procedures**: https://trpc.io/docs/server/procedures
- **shadcn/ui Forms**: https://ui.shadcn.com/docs/components/form
- **File Upload Patterns**: https://uploadthing.com/ (T3 recommended)

---

**Ready to build?** Start with the database schema and work your way up through the stack! 🚀

**Remember**: This is real-world code - make it production-ready! ✨