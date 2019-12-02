# rucasrar

A simple rails app for a post-management system using the Cassandra database

## Requirements:

- Ruby ~> 2.5.7
- Rails ~> 5.2.4
- Cassandra ~> 3.11.5
  
## Setup instructions:


* Initialize Cassandra keyspace (database)

    ```
    $ rake cequel:keyspace:create
    ```

* Synchronize your Rails model schemas with Cassandra keyspace

    ```
    $ rake cequel:migrate
    ```

* Start the Rails server

    ```
    $ rails s
    ```

* Check the application

    ```
    $ open http://localhost:3000
    ```


## References:

- [Apache Cassandra](http://cassandra.apache.org)

- [Cequel](https://github.com/cequel/cequel)

- [conradwt/cassandra-example-using-rails](https://github.com/conradwt/cassandra-example-using-rails)

- [Altoros/simple-rails-app-with-cassandra](https://github.com/Altoros/simple-rails-app-with-cassandra)


## License:

This repository is released under the [MIT License](http://www.opensource.org/licenses/MIT).