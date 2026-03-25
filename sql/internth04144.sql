create database internth04144
use internth04144
CREATE TABLE roles (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE users (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(120) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE user_roles (
    user_id BIGINT NOT NULL,
    role_id BIGINT NOT NULL,
    CONSTRAINT PK_user_roles PRIMARY KEY (user_id, role_id),
    CONSTRAINT FK_user_roles_user FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT FK_user_roles_role FOREIGN KEY (role_id) REFERENCES roles(id)
);

CREATE TABLE projects (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(150) NOT NULL UNIQUE,
    description VARCHAR(500)
);

CREATE TABLE project_members (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    project_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    active BIT NOT NULL DEFAULT 1,
    CONSTRAINT UQ_project_member UNIQUE(project_id, user_id),
    CONSTRAINT FK_project_members_project FOREIGN KEY (project_id) REFERENCES projects(id),
    CONSTRAINT FK_project_members_user FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE tasks (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    description VARCHAR(1000),
    status VARCHAR(30) NOT NULL,
    deadline DATE NOT NULL,
    project_id BIGINT NOT NULL,
    assignee_id BIGINT NULL,
    CONSTRAINT FK_tasks_project FOREIGN KEY (project_id) REFERENCES projects(id),
    CONSTRAINT FK_tasks_assignee FOREIGN KEY (assignee_id) REFERENCES users(id),
    CONSTRAINT CK_tasks_status CHECK (status IN ('TODO', 'IN_PROGRESS', 'DONE')),
    CONSTRAINT CK_deadline CHECK (deadline >= CAST(GETDATE() AS DATE))
);

CREATE INDEX IX_tasks_project_id ON tasks(project_id);
CREATE INDEX IX_tasks_assignee_id ON tasks(assignee_id);
CREATE INDEX IX_tasks_status ON tasks(status);
GO

INSERT INTO roles(name) VALUES ('ADMIN'), ('EMPLOYEE');

INSERT INTO users(username, email, password) VALUES
('admin01', 'admin01@company.com', '$2a$10$NewHashA1111111111111111111111111111111111111'),
('emp01', 'emp01@company.com', '$2a$10$NewHashA2222222222222222222222222222222222222'),
('emp02', 'emp02@company.com', '$2a$10$NewHashA3333333333333333333333333333333333333'),
('emp03', 'emp03@company.com', '$2a$10$NewHashA4444444444444444444444444444444444444'),
('emp04', 'emp04@company.com', '$2a$10$NewHashA5555555555555555555555555555555555555'),
('emp05', 'emp05@company.com', '$2a$10$NewHashA6666666666666666666666666666666666666'),
('emp06', 'emp06@company.com', '$2a$10$NewHashA7777777777777777777777777777777777777'),
('emp07', 'emp07@company.com', '$2a$10$NewHashA8888888888888888888888888888888888888'),
('emp08', 'emp08@company.com', '$2a$10$NewHashA9999999999999999999999999999999999999'),
('emp09', 'emp09@company.com', '$2a$10$NewHashB1111111111111111111111111111111111111'),
('emp10', 'emp10@company.com', '$2a$10$NewHashB2222222222222222222222222222222222222'),
('emp11', 'emp11@company.com', '$2a$10$NewHashB3333333333333333333333333333333333333'),
('emp12', 'emp12@company.com', '$2a$10$NewHashB4444444444444444444444444444444444444');

INSERT INTO user_roles(user_id, role_id) VALUES
(1, 1),
(2, 2),(3, 2),(4, 2),(5, 2),(6, 2),(7, 2),(8, 2),(9, 2),(10, 2),(11, 2),(12, 2),(13, 2);

INSERT INTO projects(name, description) VALUES
('E-Commerce System', 'Online shopping backend'),
('HR Management', 'Employee tracking system'),
('Analytics Dashboard', 'Data visualization module');

INSERT INTO project_members(project_id, user_id, active) VALUES
(1, 1, 1),(1, 2, 1),(1, 3, 1),(1, 4, 1),(1, 5, 1),
(2, 1, 1),(2, 6, 1),(2, 7, 1),(2, 8, 1),(2, 9, 1),
(3, 1, 1),(3, 10, 1),(3, 11, 1),(3, 12, 1),(3, 13, 1);

INSERT INTO tasks(title, description, status, deadline, project_id, assignee_id) VALUES
('Setup database', 'Initialize schema and relations', 'TODO', DATEADD(day, 2, CAST(GETDATE() AS DATE)), 1, 2),
('Develop auth module', 'Login & register APIs', 'IN_PROGRESS', DATEADD(day, 3, CAST(GETDATE() AS DATE)), 1, 3),
('Write integration tests', 'API integration testing', 'TODO', DATEADD(day, 4, CAST(GETDATE() AS DATE)), 1, 4),
('Code cleanup', 'Refactor messy classes', 'DONE', DATEADD(day, 1, CAST(GETDATE() AS DATE)), 1, 5),

('Employee API', 'CRUD employee endpoints', 'TODO', DATEADD(day, 5, CAST(GETDATE() AS DATE)), 2, 6),
('API documentation', 'Swagger config', 'IN_PROGRESS', DATEADD(day, 6, CAST(GETDATE() AS DATE)), 2, 7),
('Optimize queries', 'Improve SQL performance', 'TODO', DATEADD(day, 7, CAST(GETDATE() AS DATE)), 2, 8),
('Handle exceptions', 'Global exception handler', 'DONE', DATEADD(day, 2, CAST(GETDATE() AS DATE)), 2, 9),

('Permission check', 'Admin-only actions', 'TODO', DATEADD(day, 3, CAST(GETDATE() AS DATE)), 3, 10),
('Task workflow', 'Assign & update logic', 'IN_PROGRESS', DATEADD(day, 4, CAST(GETDATE() AS DATE)), 3, 11),
('Status validation', 'Prevent invalid updates', 'TODO', DATEADD(day, 5, CAST(GETDATE() AS DATE)), 3, 12),
('Write docs', 'Project documentation', 'TODO', DATEADD(day, 6, CAST(GETDATE() AS DATE)), 3, 13),

('Input validation', 'Validate request data', 'TODO', DATEADD(day, 7, CAST(GETDATE() AS DATE)), 1, 2),
('Seed database', 'Insert initial data', 'DONE', DATEADD(day, 1, CAST(GETDATE() AS DATE)), 1, 3),
('Filter by project', 'Search tasks by project', 'TODO', DATEADD(day, 2, CAST(GETDATE() AS DATE)), 1, 4),
('Filter by user', 'Search tasks by user', 'TODO', DATEADD(day, 3, CAST(GETDATE() AS DATE)), 1, 5),

('Filter by status', 'Search tasks by status', 'TODO', DATEADD(day, 4, CAST(GETDATE() AS DATE)), 2, 6),
('Add project member', 'Assign users to project', 'TODO', DATEADD(day, 5, CAST(GETDATE() AS DATE)), 2, 7),
('Security config', 'JWT filter setup', 'DONE', DATEADD(day, 1, CAST(GETDATE() AS DATE)), 2, 8),
('API testing', 'Postman collection test', 'TODO', DATEADD(day, 6, CAST(GETDATE() AS DATE)), 3, 9);
GO


-- Task theo user
SELECT t.*
FROM tasks t
WHERE t.assignee_id = 2;

-- Task theo project
SELECT t.*
FROM tasks t
WHERE t.project_id = 1;

-- Task theo status
SELECT t.*
FROM tasks t
WHERE t.status = 'IN_PROGRESS';

-- Query join review
SELECT t.id, t.title, t.status, p.name AS project_name, u.username AS assignee
FROM tasks t
JOIN projects p ON p.id = t.project_id
LEFT JOIN users u ON u.id = t.assignee_id
WHERE t.status IN ('TODO', 'IN_PROGRESS')
ORDER BY p.name, t.deadline;
GO