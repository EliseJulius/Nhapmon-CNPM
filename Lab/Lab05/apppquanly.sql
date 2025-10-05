
-- Database: F&B Content Management System

CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Role VARCHAR(50),
    PasswordHash VARCHAR(255) NOT NULL
);

CREATE TABLE Channels (
    ChannelID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Type VARCHAR(50),
    APIKey VARCHAR(255)
);

CREATE TABLE Content (
    ContentID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    Body TEXT,
    MediaURL VARCHAR(255),
    Type VARCHAR(50),
    Status VARCHAR(50),
    CreatedBy INT,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CreatedBy) REFERENCES Users(UserID)
);

CREATE TABLE Schedule (
    ScheduleID INT PRIMARY KEY AUTO_INCREMENT,
    ContentID INT NOT NULL,
    ChannelID INT NOT NULL,
    PublishDate DATETIME,
    Status VARCHAR(50),
    FOREIGN KEY (ContentID) REFERENCES Content(ContentID),
    FOREIGN KEY (ChannelID) REFERENCES Channels(ChannelID)
);

CREATE TABLE Analytics (
    AnalyticsID INT PRIMARY KEY AUTO_INCREMENT,
    ContentID INT NOT NULL,
    Views INT DEFAULT 0,
    Likes INT DEFAULT 0,
    Shares INT DEFAULT 0,
    SEOScore DECIMAL(5,2),
    Date DATE,
    FOREIGN KEY (ContentID) REFERENCES Content(ContentID)
);

CREATE TABLE Workflow (
    WorkflowID INT PRIMARY KEY AUTO_INCREMENT,
    ContentID INT NOT NULL,
    Step INT,
    ApproverID INT,
    Status VARCHAR(50),
    Date DATETIME,
    FOREIGN KEY (ContentID) REFERENCES Content(ContentID),
    FOREIGN KEY (ApproverID) REFERENCES Users(UserID)
);

-- Người dùng mẫu
INSERT INTO Users (Name, Email, Role, PasswordHash)
VALUES
('Nguyễn Lê Vân Anh', 'nguyenleva@gmaile.com', 'Admin', '123456hash'),
('Vũ Hoàng Bảo Châu', 'vuhaongbc@gmail.com', 'Editor', 'abcdefhash'),
('Huỳnh Mai Ánh Dương', 'hmad@gmai.com', 'Content Creator', 'xyz789hash');

-- Kênh mẫu
INSERT INTO Channels (Name, Type, APIKey)
VALUES
('Facebook Page', 'Social', 'FB-KEY-123'),
('Instagram', 'Social', 'IG-KEY-456'),
('YouTube', 'Video', 'YT-KEY-789');
