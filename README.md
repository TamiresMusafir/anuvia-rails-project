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

## 🚧 Project Status

This is a study project and is under active development.
