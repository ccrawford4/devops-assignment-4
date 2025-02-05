#!/bin/bash
echo "CREATING TABLE"
mysql -u root -h localhost << EOF
USE test;
CREATE TABLE IF NOT EXISTS books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    cover VARCHAR(255),
    price DECIMAL(10,2) NOT NULL
);
EOF