CREATE TABLE public.users
(
    id int NOT NULL PRIMARY KEY,
    first_name VARCHAR(128),
    last_name VARCHAR(128),
    blood_group VARCHAR(128),
    gsm_phone VARCHAR(128),
    address VARCHAR(128)
);
CREATE UNIQUE INDEX IF NOT EXISTS  public.users_id_uindex
    ON public.users (id);