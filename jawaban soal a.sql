CREATE TABLE my_client (
    id SERIAL PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    slug VARCHAR(100) NOT NULL,
    is_project VARCHAR(30) NOT NULL DEFAULT '0' CHECK (is_project IN ('0', '1')),
    self_capture CHAR(1) NOT NULL DEFAULT '1',
    client_prefix CHAR(4) NOT NULL,
    client_logo VARCHAR(255) NOT NULL DEFAULT 'no-image.jpg',
    address TEXT DEFAULT NULL,
    phone_number VARCHAR(50) DEFAULT NULL,
    city VARCHAR(50) DEFAULT NULL,
    created_at TIMESTAMP DEFAULT NULL,
    updated_at TIMESTAMP DEFAULT NULL,
    deleted_at TIMESTAMP DEFAULT NULL
);


