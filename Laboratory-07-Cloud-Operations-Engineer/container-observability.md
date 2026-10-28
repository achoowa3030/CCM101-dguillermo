### 404 Error Log

```text
172.17.0.1 - - [13/Oct/2026:13:36:15 +0000] "GET /hidden-admin-page HTTP/1.1" 404 153 "-" "curl/8.5.0" "-"
```

### Why Are Application Logs Important?

Application logs are important because they help identify what happens when users access a website. They provide details about the requests made, the pages visited, and any errors that occur. By checking these logs, I can understand what went wrong and find possible solutions to fix the problem.

In this example, the server returned a **404 error**, which means that the requested page (`/hidden-admin-page`) could not be found. This shows how logs can help identify unsuccessful requests and make troubleshooting easier.
