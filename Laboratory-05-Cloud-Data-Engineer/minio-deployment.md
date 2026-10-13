# MinIO Deployment Documentation

## 1. Overview

In this activity, I used Docker in the KillerCoda Ubuntu playground to run a MinIO server. I then accessed its web console, created a bucket, and uploaded a sample image.

## 2. Docker Commands Used

I used this command to start the MinIO container:

```bash
docker run -d -p 9000:9000 -p 9001:9001 --name minio-server \
  -e "MINIO_ROOT_USER=cloudadmin" \
  -e "MINIO_ROOT_PASSWORD=CloudNova2026!" \
  ghcr.io/imagegenius/minio:latest
```

I checked if the container was running using:

```bash
docker ps
```

## 3. Port Configuration

- **Port 9000:** Used for the MinIO API.
- **Port 9001:** Used to access the MinIO Web Console through a browser.

## 4. Environment Variables

The `-e` flags set the login credentials for MinIO:

- `MINIO_ROOT_USER` sets the administrator username to `cloudadmin`.
- `MINIO_ROOT_PASSWORD` sets the administrator password.

## 5. Bucket and File Upload

I created a bucket named `client-photos` and uploaded a sample image called `cel.jpg`. The image appeared in the bucket, confirming that the upload was successful.

## 6. Conclusion

This activity helped me understand how to deploy MinIO using Docker, check running containers, and manage files through a web console. I also gained more experience using Linux commands and working with object storage.
