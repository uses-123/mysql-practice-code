-- 创建数据库
CREATE DATABASE 学生档案;
-- 使用创建的数据库
USE 学生档案;
-- 创建“人事”表
CREATE TABLE 人事 (
	学号 CHAR(20) PRIMARY KEY, -- 学号为主键
	姓名 CHAR(20) NOT NULL, -- 姓名不允许为空
-- 性别默认为男，且只能是男或女
	性别 CHAR(1) DEFAULT '男' CHECK (性别 IN ('男', '女')), 
	电话号码 CHAR(20), -- 电话号码
	家庭住址 CHAR(50) UNIQUE -- 家庭住址唯一约束
);
-- 创建“成绩”表
CREATE TABLE 成绩 (
	学号 CHAR(20), -- 学号
	选修课程名称 CHAR(20) NOT NULL, -- 选修课程名称不允许为空
	成绩 INT CHECK (成绩>=0 AND 成绩<=100), -- 成绩检查约束，0到100之间
	PRIMARY KEY (学号, 选修课程名称), -- 联合主键，一个学生的一门课唯一
	FOREIGN KEY (学号) REFERENCES 人事(学号) -- 外键约束，引用人事表的学号
);