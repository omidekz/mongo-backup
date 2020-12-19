# mongodb-backup

## Usage
  - ### install 
    ```docker pull omidekz/mongodb-backup```
  - run
    ```
    docker run --rm --name mongobackup -v $(pwd)/backups:/backup -e MONGODB_URI="mongodb://user:pass@host/db?query-like-authSource" -e CRON_TIME_ENV="*/30 * * * *" -d omidekz/mongodb-backup
    ```

### Description

  this image use ```alpine``` in zero layer and reduced the size.

  use last version of ```mongodb-tools``` for mongodump 