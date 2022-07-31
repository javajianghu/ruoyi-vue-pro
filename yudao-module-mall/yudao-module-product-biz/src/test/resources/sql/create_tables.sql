CREATE TABLE IF NOT EXISTS "product_category" (
    "id" bigint(20) NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    "parent_id" bigint(20) NOT NULL,
    "name" varchar(255) NOT NULL,
    "pic_url" varchar(255) NOT NULL,
    "sort" int(11) NOT NULL,
    "description" varchar(1024) NOT NULL,
    "status" tinyint(4) NOT NULL,
    "creator" varchar(64) DEFAULT '',
    "create_time" datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updater" varchar(64) DEFAULT '',
    "update_time" datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    "deleted" bit NOT NULL DEFAULT FALSE,
    PRIMARY KEY ("id")
) COMMENT '商品分类';

CREATE TABLE IF NOT EXISTS "product_brand" (
    "id" bigint(20) NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    "name" varchar(255) NOT NULL,
    "pic_url" varchar(255) NOT NULL,
    "sort" int(11),
    "description" varchar(1024),
    "status" tinyint(4) NOT NULL,
    "creator" varchar(64) DEFAULT '',
    "create_time" datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updater" varchar(64) DEFAULT '',
    "update_time" datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    "deleted" bit NOT NULL DEFAULT FALSE,
    PRIMARY KEY ("id")
) COMMENT '商品品牌';