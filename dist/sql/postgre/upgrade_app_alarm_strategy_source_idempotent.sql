ALTER TABLE "app_alarm_strategy"
    ADD COLUMN "strategy_source" SMALLINT NOT NULL DEFAULT 0,
    ADD COLUMN "idempotent_hash" VARCHAR(64) DEFAULT NULL;
CREATE UNIQUE INDEX "uk_app_alarm_strategy_idempotent_hash" ON "app_alarm_strategy" ("idempotent_hash");
COMMENT ON COLUMN "app_alarm_strategy"."strategy_source" IS '来源：0=个人创建 1=企业统一下发';
COMMENT ON COLUMN "app_alarm_strategy"."idempotent_hash" IS '幂等 hash（SHA-256），用于去重';
