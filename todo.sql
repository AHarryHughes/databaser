CREATE TABLE todos (id SERIAL PRIMARY KEY, title VARCHAR(255) NOT NULL, details VARCHAR, priority INTEGER NOT NULL DEFAULT '1', created_at DATE NOT NULL, completed_at DATE DEFAULT NULL);

INSERT INTO todos (id, title, created_at, completed_at) VALUES (1, 'Remove tortillas from freezer', '12-02-16', '12-02-16');
INSERT INTO todos (id, title, details, created_at) VALUES (2, 'Turn on fryer', '@350 degrees', '12-03-16');
INSERT INTO todos (id, title, created_at) VALUES (3, 'Get lexan and fryer strainer', '12-03-16');
INSERT INTO todos (id, title, details, created_at) VALUES (4, 'Throw tortillas in fryer', 'make sure fryer is up to temp', '12-03-16');
INSERT INTO todos (id, title, created_at, completed_at) VALUES (5, 'Remove tortillas from fryer', 'Watch for color change', '12-03-16');

SELECT * FROM todos WHERE completed_at=null;

SELECT * FROM todos WHERE priority=1;

UPDATE todos SET completed_at = '12-03-16' WHERE id = 2;

DELETE FROM todos WHERE completed_at!=null;
