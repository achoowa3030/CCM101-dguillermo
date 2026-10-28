### 404 Error Log

```text
172.17.0.1 - - [13/Oct/2026:13:36:15 +0000] "GET /hidden-admin-page HTTP/1.1" 404 153 "-" "curl/8.5.0" "-"
```

### Why Are Application Logs Important?

Application logs are important because they help identify what happens when users access a website. They provide details about the requests made, the pages visited, and any errors that occur. By checking these logs, I can understand what went wrong and find possible solutions to fix the problem.

In this example, the server returned a **404 error**, which means that the requested page (`/hidden-admin-page`) could not be found. This shows how logs can help identify unsuccessful requests and make troubleshooting easier.

---

## Real-Time Container Metrics

I used the `docker stats` command to monitor the CPU, memory, and network usage of my `client-website` container.

- **Memory Usage:** 2.734 MiB
- **CPU Usage:** 0.00%
- **Network I/O:** 2.75 kB received / 2.35 kB sent

Based on the results, my container was using very little memory and CPU during the monitoring period. Its network activity was also relatively low. This suggests that the container was running with minimal resource usage at that moment.

Monitoring these metrics is useful because it helps me understand how much of the server's resources a container uses. It also allows me to notice unusual resource consumption and identify possible performance issues before they affect the application.
