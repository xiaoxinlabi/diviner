CREATE DATABASE IF NOT EXISTS puton_app DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

USE `puton_app`;

DROP TABLE IF EXISTS `diviner`;

CREATE TABLE `diviner` (
  `BILL_ID` VARCHAR(15) UNIQUE COMMENT '手机号码',
  `TOTAL_VALUE` DECIMAL(18,2) DEFAULT NULL COMMENT '总价值（总分）',
  `OVER_RATE` VARCHAR(11) DEFAULT NULL COMMENT '超过比率',

  `BLACK_VALUE` DECIMAL(18,2) DEFAULT NULL COMMENT '吉祥分',
  `BLACK_CONTENT_1` VARCHAR(60) DEFAULT NULL COMMENT '吉祥分提示语1（全空时为默认文案）',
  `BLACK_CONTENT_2` VARCHAR(23) DEFAULT NULL COMMENT '吉祥分提示语2',

  `PERSONAL_VALUE` INTEGER DEFAULT NULL COMMENT '个性分',
  `PERSONAL_CONTENT_1` VARCHAR(38) DEFAULT NULL COMMENT '个性分提示语1（全空时的为默认文案）',
  `PERSONAL_CONTENT_2` VARCHAR(38) DEFAULT NULL COMMENT '个性分提示语2',
  `PERSONAL_CONTENT_3` VARCHAR(38) DEFAULT NULL COMMENT '个性分提示语3',

  `ADDITION_VALUE` INTEGER DEFAULT NULL COMMENT '荣耀分',
  `ADDITION_CONTENT_1` VARCHAR(38) DEFAULT NULL COMMENT '荣耀分默认语1（全空时的为默认文案）',
  `ADDITION_CONTENT_2` VARCHAR(38) DEFAULT NULL COMMENT '荣耀分默认语2',
  `ADDITION_CONTENT_3` VARCHAR(38) DEFAULT NULL COMMENT '荣耀分默认语3',

  PRIMARY KEY (`BILL_ID`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='号码价值表';