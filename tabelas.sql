CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    data_nascimento DATE,
    email VARCHAR(100),
    senha VARCHAR(100) -- Armazene a senha de forma segura (por exemplo, com hash/salt)
);

CREATE TABLE Notes (
    note_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    data DATE,
    texto TEXT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
