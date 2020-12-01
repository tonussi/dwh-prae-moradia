docker build -t wmarinho/postgresql:9.3 .
docker run --name mysql -e MYSQL_USER=coperve -e MYSQL_PASSWORD=coperve -e MYSQL_DB=coperve -d -p 33306:3306 -d mysql
docker run --name postgresql -e POSTGRES_USER=coperve -e POSTGRES_PASSWORD=coperve -e POSTGRES_DB=coperve -d -p 54432:5432 -d wmarinho/postgresql:9.3
docker run -d -p 8080:8080 hiromuhota/webspoon
