# Welcome to My Basecamp 2

***

## Task

The main objective of this project is to extend the functionality of the previously developed `My Basecamp 1` project. The additional features include:

- **Attachment Management**: Users associated with a project can create and delete attachments. Supported formats include PNG, JPG, PDF, and TXT.
- **Discussion Threads**: Only project admins can create, edit, and delete discussion threads.
- **Messages within Threads**: Users associated with a project can post, edit, and delete messages within discussion threads.

## Description

This project addresses the need for enhanced collaboration tools within project management by introducing attachments and threaded discussions. The implemented features include:

- **Attachments**: Users can upload and manage files relevant to a project.
- **Discussion Threads**: A structured way for project members to discuss various topics. Only admins can create and manage these threads.
- **Messages**: Users can communicate within threads, providing a detailed and organized discussion platform.

These features enhance the usability and functionality of the project management tool, making it more robust and user-friendly.

## Installation
Make sure you have the following installed on your machine.
1. Node v20.15.0
2. Yarn 1.22.22
3. ruby 3.3.3
4. Rails 7.1.3.4

To install and set up the project, follow these steps:


1. Clone the repository:
    ```bash
    git clone https://github.com/Saminu3110c/my_basecamp_2.git
    ```
    ```bash
    cd my_basecamp_2
    ```

2. Install the required gems:
    ```bash
    bundle install
    ```

3. Set up the database:
    ```bash
    rails db:create
    ```
    ```bash
    rails db:migrate
    ```
    ```bash
    rails db:seed
    ````
4. Start the Rails server:
    ```bash
    rails server
    ```

## Usage

To use the project, navigate to `http://localhost:3000` in your web browser after starting the Rails server. The main functionalities include:

- **Project Management**: Create and manage projects.
- **Attachment Management**: Upload and delete files related to a project.
- **Discussion Threads**: Admins can create threads to facilitate topic-based discussions.
- **Messages**: Users can post, edit, and delete messages within threads.


### Example of creating a new project
```bash
rails generate scaffold Project name:string description:text
```

### Example of starting the server
```bash
rails server
```

### The Core Team
Saminu Isah - isah_s

<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering Schools Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px' /></span>
