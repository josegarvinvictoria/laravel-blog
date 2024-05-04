# Laravel 11 & Vue 3 Blog

## Description
This project is a simple blog developed using Laravel 11 and Vue 3, designed to practice with the latest versions of these frameworks. It allows for creating, editing, and deleting posts from an admin panel, offering a straightforward way to manage dynamic content.

## Installation

### Prerequisites
Ensure Docker is installed on your system to use the Docker Compose commands specified in the `Makefile`.

### Clone the Repository
To get started, clone this repository to your local machine:
```
git clone [repository URL]
cd [repository name]
```

### Setup
Use the included `Makefile` to configure and run the project:
```
make du # Start Docker containers
make migrate # Run database migrations
```

## Usage

### Development Commands
You can use the following commands to work with the project:

- **Artisan**: Run Artisan commands:
```
make artisan args="migrate:status"
```

- **NPM**: Manage Node dependencies and run scripts:
```
make npm args="install"
```

- **Composer**: Run Composer commands to manage PHP dependencies:
```
make composer args="require laravel/sanctum"
```

- **Logs**: To view logs in real-time:

```
make logs
```

### Server
To start the development server:
```
make artisan-serve
```


