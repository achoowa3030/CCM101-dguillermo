# 💭 Mission Reflection

After completing this laboratory activity, I learned that setting up and starting a Docker container is generally much faster than installing and running an operating system inside a Virtual Machine. A Virtual Machine requires a complete guest operating system, system configuration, and additional resources before an application can run. Docker containers are more lightweight because they share the host operating system's kernel while packaging the application and its dependencies together. This makes containers useful for quickly deploying applications in cloud-native environments.

The port mapping `-p 8080:80` is necessary because the Nginx web server inside the container listens on port `80`, while port `8080` is used on the host to access the service. The mapping connects the host's port `8080` to the container's port `80`, allowing the Nginx web server to be accessed through `localhost:8080`.

When the `docker rm` command is used, the specified container is permanently removed. Data stored only inside the container's writable layer can also be lost when the container is removed. This taught me that containers should not be treated as permanent storage. Persistent data should instead be stored using solutions such as Docker volumes.

Containerization can also improve collaboration between developers and IT operations teams. Developers can package applications with their required dependencies, while operations teams can deploy the same container consistently across environments. This can reduce configuration differences and simplify deployment.

Finally, my GitHub portfolio is evolving into a record of my actual hands-on learning. I am documenting Docker commands, container operations, screenshots, technical explanations, and reflections instead of simply submitting completed activities. This mission strengthened my understanding of Docker, Nginx, container lifecycle management, and cloud-native technologies while making my portfolio more organized and useful for demonstrating my practical skills.
