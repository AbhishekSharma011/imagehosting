
DROP TABLE IF EXISTS imagehoster.USER_AUTH_TOKENS CASCADE;
CREATE TABLE imagehoster.USER_AUTH_TOKENS(
	ID BIGSERIAL PRIMARY KEY,
	USER_ID INTEGER NOT NULL,
	ACCESS_TOKEN VARCHAR(500) NOT NULL,
	EXPIRES_AT TIMESTAMP NOT NULL,
	LOGIN_AT TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	LOGOUT_AT TIMESTAMP
);

ALTER TABLE imagehoster.USER_AUTH_TOKENS ADD CONSTRAINT UK_USER_AUTH_TOKENS_ACCESS_TOKEN UNIQUE(ACCESS_TOKEN);
ALTER TABLE imagehoster.USER_AUTH_TOKENS ADD CONSTRAINT FK_USER_AUTH_TOKENS_USER_ID FOREIGN KEY(USER_ID) REFERENCES imagehoster.USERS(ID);

