# Anuvia Rails Project

Web application developed with **Ruby on Rails**, created for study, practice, and testing purposes.

---

## ⚙️ Installation

### 🧰 Environment Setup (Optional)

This project requires a basic Ruby on Rails environment.  
Below is a simple guide to get everything ready.

> ⚠️ If you already have **Ruby**, **Rails**, and **Bundler** installed, you can skip this section to step 5.

---

### 1. Install Ruby (using RVM)

This project uses **RVM (Ruby Version Manager)** to manage Ruby versions.

#### 1.1 Install RVM:

    gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
    \curl -sSL https://get.rvm.io | bash -s stable

#### 1.2 Restart your terminal or run:

    source ~/.rvm/scripts/rvm
    rvm -v

#### 1.3 Install Ruby (the version of this project):

    rvm install 3.4.1
    rvm use 3.4.1 
    ruby -v

### 2. Install Bundler

Bundler is used to manage Ruby dependencies.

    gem install bundler
    bundle -v

### 3. Install Rails

Install Rails using RubyGems:

    gem install rails
    rails -v

### 4. Install SQLite

SQLite is used as the development database.
> SQLite installation command may vary depending on your operating system.

    sudo apt install sqlite3 libsqlite3-dev

### 5. Clone the repository:

    git clone git@github.com:TamiresMusafir/anuvia-rails-project.git
    cd anuvia-rails-project

### 6. Install the dependencies:

    bundle install

### 7. Create the database and run the migrations:

    rails db:create
    rails db:migrate

### 8. Start the server:

    rails s

### 9. Access it in your browser:

    http://localhost:3000

---

## 🔐 Admin Access & User Management

This project includes an admin area that requires authentication. After starting the server, you can access the admin. Follow theses steps to acess:

You must be logged in with a valid user account to access this section.

### Creating Users via Rails Console

Users can be created directly from the Rails console.

### 1. Open the Rails console:

    rails c
    
### 2. Create a new user:

    User.create!(
      email: "user@example.com",
      password: "password123",
      password_confirmation: "password123",
      name: "User"
    )

### 3. Verifying Users

#### 3.1 To list all users:

    User.all
    
#### 3.2 To find a user by email:

    User.find_by(email: "admin@example.com")

#### 3 Acess the Admin Painel:

    http://localhost:3000/admin
    
---

## 🚧 Project Status

This is a study project and is under active development.



