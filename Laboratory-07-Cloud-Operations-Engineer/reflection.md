# Mission Reflection

This laboratory activity helped me understand that running an application is only one part of a cloud operations engineer's responsibilities. It is also important to monitor the server and make sure that applications are running properly without unexpected problems.

I learned that checking the host system's resources is necessary even when the containers appear to be working normally. If the server does not have enough RAM or disk space, applications may become slow or stop functioning properly. By monitoring CPU usage, memory, and storage, we can identify possible issues before they affect the users.

I also learned how to troubleshoot problems using the `docker logs` command. For example, if a user reports that they cannot log in to a web application, checking the container logs can help identify errors, failed requests, or other issues that may explain the problem. This gives engineers a better idea of where to begin troubleshooting.

Another important lesson was understanding the difference between logs and metrics. Logs provide information about specific events, activities, and errors, while metrics show numerical data about system performance, such as CPU and memory usage. Both are important because they help engineers monitor applications and identify problems more effectively.

For companies that manage thousands of containers, tools like Prometheus and Grafana can make monitoring much easier. Prometheus collects and stores performance data, while Grafana displays that information through visual dashboards. With these tools, engineers can monitor multiple services, track performance, and identify issues that need attention.

Overall, this activity improved my knowledge of Linux commands, Docker, and basic system monitoring. I learned how to check system resources, run an Nginx container, send HTTP requests, examine application logs, and monitor CPU and memory usage through `docker stats`. I still have more to explore, but this laboratory gave me a better understanding of server monitoring and troubleshooting. It also helped me become more comfortable using the terminal and handling basic cloud operations tasks.
