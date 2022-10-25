-- Active: 1666715532768@@SG-big-citrus-6651-6846-mysql-master.servers.mongodirector.com@3306@ScaleGrid

CREATE TABLE
    IF NOT EXISTS cars(
        id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
        make VARCHAR(255) NOT NULL,
        model VARCHAR(255) NOT NULL,
        year int NOT NULL CHECK (year >= 1886),
        price DECIMAL(10, 2) NOT NULL CHECK (price >= 0),
        description VARCHAR(255),
        imgUrl VARCHAR(255) DEFAULT "https://www.autolist.com/assets/listings/default_car.jpg"
    );

INSERT INTO
    cars(
        make,
        model,
        year,
        price,
        description,
        imgUrl
    )
VALUES (
        "KFC",
        "Bucket Tré",
        1985,
        999,
        "Yum Yum!!",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJcEQw9jHNAmFu-VTA7bhvZhMugoz0q_r0oeTUswAO&s"
    );

SELECT * FROM cars;