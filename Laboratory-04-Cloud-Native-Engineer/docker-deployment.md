# 🔄 Container Lifecycle Management

### 1. List Running Containers

```bash
docker ps
```

Displays the currently running Docker containers and identifies the active Nginx container, including its container ID, status, port mapping, and container name.

### 2. Stop the Nginx Container

```bash
docker stop competent_panini
```

Stops the running Nginx container named `competent_panini`, changing its state from **running** to **stopped**.

### 3. Verify the Container Is No Longer Running

```bash
docker ps
```

Checks the list of active containers and confirms that `competent_panini` is no longer running after the stop command was executed.

### 4. Verify the Stopped Container

```bash
docker ps -a
```

Lists all Docker containers, including stopped containers, and confirms that `competent_panini` is present with an `Exited (0)` status.

### 5. Remove the Nginx Container

```bash
docker rm competent_panini
```

Removes the stopped `competent_panini` container from the Docker environment.

### 6. Verify Container Removal

```bash
docker ps -a
```

Displays all remaining Docker containers and confirms that `competent_panini` has been successfully removed because no containers are listed.

### 📸 Evidence

The complete Docker container lifecycle is documented in the screenshot below, showing the Nginx container being identified, stopped, verified, removed, and finally confirmed as no longer present.

![Container Lifecycle](Screenshots/Container-lifecycle.png)
