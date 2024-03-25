### Poll Power API Server

**Requirement:**
- Dart >= 3.6.2  
- [rps](https://pub.dev/packages/rps)  
- Mysql  
- npm  

**Int db:**
- Create .env file and put your dbUrl required by [prisma](https://prisma.pub/)
like DATABASE_URL="postgresql://johndoe:randompassword@localhost:5432/mydb?schema=public"

**Run:**
- rps generate
- rps push
- rps start