CREATE TABLE IF NOT EXISTS `buty_lumberjack_players` (
    `identifier`      VARCHAR(64)  NOT NULL,
    `level`           INT          NOT NULL DEFAULT 1,
    `xp`              INT          NOT NULL DEFAULT 0,
    `total_earnings`  BIGINT       NOT NULL DEFAULT 0,
    `axe_upgrades`    TEXT         DEFAULT NULL,
    PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
