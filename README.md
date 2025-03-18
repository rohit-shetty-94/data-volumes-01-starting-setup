# Docker use with Volume and Bind Mount

## CMDs for Volume and Bind Mount

| Command      | Definition | Usage      | Syntax                                               |
|--------------|-----------------------------------------|-------------------------------|-------------------------------------------------------|
| **Anonymous Volume**     | Volumes without a specific name  | Docker manages the storage location    | `docker run -v /app/data my-image`                                     |
| **Named Volume**      | Volumes that have a specific name given by the user |  Docker manages the storage location but with a user-defined name                           | `docker run -v my_volume:/app/data my-image`                                |
| **Bind Mount**      | Directly mount a host directory or file to a container |   You specify the host path     | `docker run -v /path/on/host:/app/data my-image`                                |

## Sample Docker cmds

```bash
docker run -d --rm -p 3000:80 --name feedback-app-con -v feedback:/app/feedback -v "C:\Users\shett\Documents\projects\data-volumes-01-starting-setup:/app/ro" -v /app/node_modules feedback-app:env
```

```bash
docker run -d --rm -p 3000:80 --env-file ./.env --name feedback-app-con -v feedback:/app/feedback -v "C:\Users\shett\Documents\projects\data-volumes-01-starting-setup:/app/ro" -v /app/node_modules feedback-app:env
```

