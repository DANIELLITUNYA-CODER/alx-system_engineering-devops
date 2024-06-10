tack Debugging #4

## Description
This project focuses on web stack debugging, involving tasks to resolve issues with an Nginx web server under load and modifying OS configurations to handle user limits.

## Requirements
- All files interpreted on Ubuntu 14.04 LTS.
- All files should end with a new line.
- A `README.md` file at the root of the project is mandatory.
- Puppet manifests must pass `puppet-lint` version 2.1.1 without errors.
- Puppet manifests must run without error.
- The first line of Puppet manifests must be a comment explaining the manifest's purpose.
- Puppet manifest files must end with the extension `.pp`.
- Files will be checked with Puppet v3.4.

### Puppet Lint Installation
To install `puppet-lint`, run:
```sh
$ apt-get install -y ruby
$ gem install puppet-lint -v 2.1.1
```

## Tasks

### 0. Sky is the Limit, Let's Bring That Limit Higher
In this task, the objective is to fix the web server setup to handle a high number of requests without failures. ApacheBench is used to simulate HTTP requests.

**File:** `0-the_sky_is_the_limit_not.pp`

### 1. User Limit
This task involves changing the OS configuration to allow the `holberton` user to log in and open files without encountering "Too many open files" errors.

**File:** `1-user_limit.pp`

## Repository Structure
- **GitHub Repository:** `alx-system_engineering-devops`
- **Directory:** `0x1B-web_stack_debugging_4`
  - `0-the_sky_is_the_limit_not.pp`
  - `1-user_limit.pp
