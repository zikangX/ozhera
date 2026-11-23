ALTER TABLE `app_alarm_strategy`
    ADD COLUMN `strategy_source` tinyint(2) NOT NULL DEFAULT '0' COMMENT '来源：0=个人创建 1=企业统一下发',
    ADD COLUMN `idempotent_hash` varchar(64) DEFAULT NULL COMMENT '幂等 hash（SHA-256），用于去重',
    ADD KEY `idx_idempotent_hash` (`idempotent_hash`);
