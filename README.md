# Secure Blog App

A secure blogging platform with advanced security features, payment integration, and containerized deployment.

## Features

### **Security & Authentication**
- **Email Protection:**
  - Blocks disposable emails, domains without MX records, and invalid addresses.
- **Rate Limiting & Bot Protection:**
  - Implements rate limiting to prevent abuse and brute force attacks.
  - Uses CAPTCHA for enhanced bot protection.
- **User Authentication:**
  - Secure login/logout with JWT-based authentication.
  - Password hashing and salting with bcrypt.
- **Access Control:**
  - Role-based access control (RBAC) for different user roles (admin, editor, reader).

### **Blogging Features**
- **Rich Text Editor:**
  - Supports Markdown and WYSIWYG editing.
- **Content Management:**
  - Create, edit, and delete blog posts.
  - Draft and publish functionality.
- **SEO & Social Sharing:**
  - Optimized metadata for search engines.
  - Social media sharing options.

### **Payment Integration**
- **Monetization Features:**
  - Supports PayPal payment gateway for premium content subscriptions.
  - Integration with Stripe for secure payments.

### **Deployment & Scalability**
- **Containerized Deployment:**
  - Uses Docker for easy deployment and scalability.
  - Compatible with Kubernetes for orchestration.
- **Database & Storage:**
  - Uses MongoDB as the primary database.
  - Cloud storage integration for media files.

### **Tech Stack**
- **Frontend:** Next.js (React)
- **Backend:** Node.js, Express.js
- **Database:** MongoDB
- **Authentication:** JWT, bcrypt
- **Payment Gateway:** PayPal, Stripe
- **Deployment:** Docker, Kubernetes

## Installation

### **Prerequisites**
Make sure you have the following installed:
- Node.js (v16+)
- MongoDB (local or cloud)
- Docker (if using containerized deployment)
- Git

### **Clone the Repository**
```sh
git clone https://github.com/akashgupta2233/secure-blog-app.git
cd secure-blog-app
```

### **Install Dependencies**
```sh
npm install
```

### **Set Up Environment Variables**
Create a `.env` file in the root directory and configure the required environment variables:
```env
MONGO_URI=<your-mongodb-uri>
JWT_SECRET=<your-secret-key>
PAYPAL_CLIENT_ID=<your-paypal-client-id>
PAYPAL_SECRET=<your-paypal-secret>
```

### **Run the Development Server**
```sh
npm run dev
```

### **Docker Deployment**
#### **Build the Docker Image**
```sh
docker build -t secure-blog-app .
```

#### **Run the Docker Container**
```sh
docker run -p 3000:3000 secure-blog-app
```

### **Access the Application**
Once the server is running, open your browser and navigate to:
```
http://localhost:3000
```

---

🚀 **Enjoy blogging with enhanced security!**

