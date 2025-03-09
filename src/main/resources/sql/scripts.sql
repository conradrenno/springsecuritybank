create table users(username varchar(50) not null primary key,password varchar(500) not null,enabled boolean not null);
create table authorities (username varchar(50) not null,authority varchar(50) not null,constraint fk_authorities_users foreign key(username) references users(username));
create unique index ix_auth_username on authorities (username,authority);

INSERT IGNORE INTO `users` VALUES ('user', '$2y$12$BKDMSWlkA.bty7JrXzF4e.Tfi0OMgrf3cyEWrF9/3p9GOzz6A9pnW', '1');
INSERT IGNORE INTO `authorities` VALUES ('user', 'read');

INSERT IGNORE INTO `users` VALUES ('admin', '$2y$12$p8Bu00mIrTomi7qCLPOFyOveqAmkbEts3019Vgptb4JrlbZwoAkYK', '1');
INSERT IGNORE INTO `authorities` VALUES ('admin', 'admin');