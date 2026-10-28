# Mission Reflection

Completing this laboratory activity helped me realize that securing a server is just as important as making sure it runs properly. I learned that a host-based firewall adds another layer of protection by controlling incoming and outgoing network traffic directly on the server. Even if other security measures fail, the firewall can still help block unauthorized connections.

I also learned why managing open network ports is important. Every unnecessary open port can become a potential entry point for attackers. By allowing only the ports required by the application, we can reduce the server's attack surface and limit unauthorized access. In this activity, I configured the firewall to allow SSH for remote administration and port 8080 for my Nginx web application while blocking incoming connections by default.

Another important thing I learned is the risk of exposing database ports, such as port 3306 used by MySQL and MariaDB, to the public internet. Doing so can make the database a target for password attacks, security exploits, and unauthorized access to sensitive information. Database connections should only be accessible to trusted servers and authorized users.

This mission also changed how I look at server management. Before, I was more focused on getting applications running, but now I understand that proper security configurations are equally important. Even a small mistake, such as leaving unnecessary ports open, can put the entire system at risk.

After completing eight missions, I can see how much my GitHub portfolio has developed. Each laboratory activity has helped me improve my understanding of cloud computing, starting from basic Linux commands and container management to system monitoring and server security. My repository also serves as a record of the skills I have practiced and the progress I have made throughout the course.

Overall, this activity taught me that maintaining a server is not only about keeping applications online but also about protecting the system, controlling access, and preventing potential security threats.
