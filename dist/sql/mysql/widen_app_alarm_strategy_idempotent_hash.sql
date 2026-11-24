ALTER TABLE `app_alarm_strategy`
    MODIFY COLUMN `idempotent_hash` varchar(128) DEFAULT NULL COMMENT '幂等 hash（SHA-256），用于去重';
