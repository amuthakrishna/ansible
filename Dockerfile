---
- name: Build and run a Docker container
  hosts: localhost
  become: true  # If sudo is needed to interact with Docker
  tasks:
    - name: Build Docker image
      docker_image:
        source: build
        build:
          path: .  # Path to the directory containing your Dockerfile
        name: ansible  # Name of the image
        tag: latest  # Tag for the image
