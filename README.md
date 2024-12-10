# Spotify Playlist Automation with Terraform and Docker

This project automates the creation and management of Spotify playlists for various occasions such as mornings, evenings, parties, etc., using **Terraform** and **Docker**. It integrates Terraform's Infrastructure as Code (IaC) capabilities with Spotify's Web API to simplify and automate playlist management.

---

## 🚀 Project Overview

- **Purpose**: Automate Spotify playlist creation for different events and occasions.
- **Technologies Used**: Terraform, Docker, Spotify Web API.
- **Highlights**:
  - **Terraform**: Defines and automates playlist creation using declarative syntax.
  - **Docker**: Handles Spotify API authorization through containerized execution.
  - **Spotify API**: Connects with Spotify to manage playlists programmatically.

---

## 🛠️ Features

- **Event Management**: Create playlists for events like parties, weddings, or gatherings.
- **Smart Home Integration**: Automate music routines for workouts, relaxation, or morning schedules.
- **Personalized Experiences**: Tailor playlists for study, travel, or productivity.

---

## 📋 Prerequisites

Before you begin, ensure you have the following:

1. [Terraform](https://www.terraform.io/downloads.html) installed.
2. [Docker](https://docs.docker.com/get-docker/) installed.
3. A [Spotify Account](https://www.spotify.com/).
4. A [Spotify Developer Account](https://developer.spotify.com/).
5. The **Spotify Provider** plugin for Terraform.
6. A code editor like [VS Code](https://code.visualstudio.com/).

---

## ⚙️ Project Setup and Flow

### 1. **Create Spotify Developer App**
   - Register on the [Spotify Developer Portal](https://developer.spotify.com/dashboard/).
   - Create a new application and note down the client ID and client secret.

### 2. **Docker for Authorization**
   - Use the `spotify-auth-proxy` Docker image to securely authorize API calls:
     ```bash
     docker run --rm -it -p 27228:27228 --env-file .env ghcr.io/conradludgate/spotify-auth-proxy
     ```

### 3. **Terraform Configuration**
   - Set up Terraform with the Spotify provider.
   - Configure playlists as Terraform resources.

### 4. **Execute Terraform**
   - Apply the Terraform plan to create Spotify playlists:
     ```bash
     terraform apply
     ```

---

## 🔗 Spotify Playlist Example

- **Resource**: `spotify_playlist`
- **Attributes**:
  - Name: *Bollywood Best Songs*
  - Public: `true`
  - Tracks: `Tum Sath Ho`, etc.

---

## 🌟 Benefits of Infrastructure as Code (IaC) with Terraform

1. **Declarative Approach**: Define the desired playlist state for consistent outcomes.
2. **Version Control**: Track changes and collaborate effectively.
3. **Automation**: Eliminate manual tasks for faster and error-free deployment.

---

## 🐳 Why Docker?

Docker ensures a reliable and consistent environment for Spotify API authentication, encapsulating logic and credentials securely within containers.

---

## 📈 Real-World Applications

- Event organizers can automate music setups.
- Smart homes can integrate playlists with routines.
- Individuals can create dynamic playlists for specific moods.

---

## 📖 Additional Notes

- **Research**: Learn more about the [Spotify Web API](https://developer.spotify.com/documentation/web-api/) to explore advanced capabilities.
- **Customizations**: Modify playlists and tracks in Terraform files to suit specific needs.

---

## ✍️ Author

Developed by **Jayram Sharma**  
Feel free to fork, contribute, and improve this repository!

---

## 📝 License

This project is open-source and available under the [MIT License](LICENSE).

