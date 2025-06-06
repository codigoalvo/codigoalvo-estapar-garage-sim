CREATE TABLE spot (
    id UUID PRIMARY KEY,
    external_id BIGINT UNIQUE NOT NULL,
    sector_id UUID NOT NULL REFERENCES sector(id),
    latitude DOUBLE PRECISION NOT NULL,
    longitude DOUBLE PRECISION NOT NULL,
    is_occupied BOOLEAN NOT NULL DEFAULT FALSE
);
