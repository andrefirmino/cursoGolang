-- Write your migrate up statements here

---- create above / drop below ----

CREATE TABLE IF NOT EXISTS messages (
    "id"            uuid            PRIMARY KEY    NOT NULL    DEFAULT gen_random_uuid(),
    "room_id"       uuid                           NOT NULL,
    "message"       VARCHAR(255)                   NOT NULL,
    "react_count"   BIGINT                         NOT NULL    DEFAULT 0,
    "answered"      BOOLEAN                        NOT NULL    DEFAULT false,

    FOREIGN KEY (room_id) REFERENCES rooms(id)
)

DROP TABLE IF EXISTS messages;

-- Write your migrate down statements here. If this migration is irreversible
-- Then delete the separator line above.
