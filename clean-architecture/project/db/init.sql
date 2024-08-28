--- Инициализация самой схемы
create table "Sessions"
(
    "Id"      integer generated by default as identity
        constraint "PK_Sessions"
            primary key,
    "Start"   timestamp with time zone not null,
    "End"     timestamp with time zone not null,
    "MovieId" integer                  not null
);

alter table "Sessions"
    owner to postgres;

create table "Seats"
(
    "SessionId" integer not null
        constraint "FK_Seats_Sessions_SessionId"
            references "Sessions"
            on delete cascade,
    "Number"    integer not null,
    "Type"      integer not null,
    "ClientId"  integer,
    constraint "PK_Seats"
        primary key ("SessionId", "Number")
);

alter table "Seats"
    owner to postgres;

--- Сидим данными

insert into "Sessions"("Id", "Start", "End", "MovieId")
values 
    (1, '2023-09-01T12:30:00'::timestamptz, '2023-09-01T13:30:00'::timestamptz, 1),
    (2, '2023-09-01T11:45:00'::timestamptz, '2023-09-01T13:00:00'::timestamptz, 3),
    (3, '2023-09-01T15:05:00'::timestamptz, '2023-09-01T16:20:00'::timestamptz, 2),
    (4, '2023-09-01T13:25:00'::timestamptz, '2023-09-01T15:10:00'::timestamptz, 1),
    (5, '2023-09-01T14:00:00'::timestamptz, '2023-09-01T16:40:00'::timestamptz, 7),
    (6, '2023-09-01T16:00:00'::timestamptz, '2023-09-01T19:00:00'::timestamptz, 9),
    (7, '2023-09-01T20:00:00'::timestamptz, '2023-09-01T22:20:00'::timestamptz, 5);

insert into "Seats"("SessionId", "Number", "Type", "ClientId")
values
    (1, 1, 0, null),
    (1, 2, 1, 20),
    (1, 3, 1, 85),
    (1, 4, 0, null),
    (1, 5, 0, null),
    (1, 6, 2, 76),
    (1, 7, 2, 43),
    (1, 8, 1, 87),
    (1, 9, 0, null),
    (1, 10, 1, 32),
    (1, 11, 2, 75),
    (1, 12, 0, null),
    (1, 13, 2, 6),
    (1, 14, 0, null),
    (1, 15, 1, 76),
    (1, 16, 0, null),
    (1, 17, 1, 6),
    (1, 18, 2, 58),
    (1, 19, 2, 0),
    (1, 20, 1, 55),
    (1, 21, 0, null),
    (1, 22, 2, 57),
    (1, 23, 0, null),
    (1, 24, 0, null),
    (1, 25, 2, 71),
    (1, 26, 1, 10),
    (1, 27, 2, 8),
    (1, 28, 0, null),
    (1, 29, 1, 27),
    (1, 30, 0, null),
    (1, 31, 1, 5),
    (1, 32, 1, 9),
    (1, 33, 0, null),
    (1, 34, 1, 99),
    (1, 35, 1, 99),
    (1, 36, 1, 23),
    (1, 37, 1, 7),
    (1, 38, 1, 6),
    (1, 39, 0, null),
    (1, 40, 1, 49),
    (1, 41, 1, 14),
    (1, 42, 1, 100),
    (1, 43, 1, 62),
    (1, 44, 1, 41),
    (1, 45, 2, 8),
    (1, 46, 0, null),
    (1, 47, 2, 4),
    (1, 48, 0, null),
    (1, 49, 2, 85),
    (1, 50, 1, 89),
    (2, 1, 2, 9),
    (2, 2, 0, null),
    (2, 3, 1, 9),
    (2, 4, 0, null),
    (2, 5, 1, 53),
    (2, 6, 1, 13),
    (2, 7, 1, 73),
    (2, 8, 2, 56),
    (2, 9, 1, 82),
    (2, 10, 2, 61),
    (2, 11, 2, 52),
    (2, 12, 0, null),
    (2, 13, 1, 45),
    (2, 14, 1, 3),
    (2, 15, 1, 57),
    (2, 16, 1, 63),
    (2, 17, 1, 28),
    (2, 18, 1, 82),
    (2, 19, 1, 82),
    (2, 20, 2, 19),
    (2, 21, 2, 54),
    (2, 22, 2, 98),
    (2, 23, 1, 95),
    (2, 24, 2, 64),
    (2, 25, 0, null),
    (2, 26, 1, 93),
    (2, 27, 2, 25),
    (2, 28, 1, 12),
    (2, 29, 0, null),
    (2, 30, 0, null),
    (2, 31, 0, null),
    (2, 32, 1, 98),
    (2, 33, 0, null),
    (2, 34, 0, null),
    (2, 35, 2, 78),
    (2, 36, 2, 13),
    (2, 37, 1, 24),
    (2, 38, 2, 77),
    (2, 39, 2, 75),
    (2, 40, 0, null),
    (3, 1, 0, null),
    (3, 2, 2, 15),
    (3, 3, 0, null),
    (3, 4, 0, null),
    (3, 5, 2, 60),
    (3, 6, 0, null),
    (3, 7, 2, 70),
    (3, 8, 1, 65),
    (3, 9, 0, null),
    (3, 10, 2, 44),
    (3, 11, 0, null),
    (3, 12, 2, 6),
    (3, 13, 0, null),
    (3, 14, 0, null),
    (3, 15, 0, null),
    (3, 16, 1, 10),
    (3, 17, 0, null),
    (3, 18, 1, 2),
    (3, 19, 2, 66),
    (3, 20, 0, null),
    (3, 21, 0, null),
    (3, 22, 1, 54),
    (3, 23, 1, 3),
    (3, 24, 2, 52),
    (3, 25, 0, null),
    (3, 26, 2, 30),
    (3, 27, 1, 17),
    (3, 28, 1, 78),
    (3, 29, 1, 32),
    (3, 30, 2, 20),
    (3, 31, 2, 84),
    (3, 32, 2, 10),
    (3, 33, 1, 99),
    (3, 34, 0, null),
    (3, 35, 2, 67),
    (3, 36, 2, 8),
    (3, 37, 1, 71),
    (3, 38, 0, null),
    (3, 39, 2, 87),
    (3, 40, 0, null),
    (3, 41, 2, 97),
    (3, 42, 0, null),
    (3, 43, 1, 29),
    (3, 44, 2, 50),
    (3, 45, 0, null),
    (3, 46, 2, 69),
    (3, 47, 1, 90),
    (3, 48, 0, null),
    (3, 49, 1, 73),
    (3, 50, 1, 49),
    (4, 1, 1, 16),
    (4, 2, 2, 6),
    (4, 3, 1, 6),
    (4, 4, 0, null),
    (4, 5, 1, 72),
    (4, 6, 2, 10),
    (4, 7, 1, 12),
    (4, 8, 2, 89),
    (4, 9, 1, 33),
    (4, 10, 2, 9),
    (4, 11, 2, 75),
    (4, 12, 1, 33),
    (4, 13, 1, 36),
    (4, 14, 0, null),
    (4, 15, 0, null),
    (4, 16, 0, null),
    (4, 17, 0, null),
    (4, 18, 1, 34),
    (4, 19, 0, null),
    (4, 20, 0, null),
    (4, 21, 1, 65),
    (4, 22, 0, null),
    (4, 23, 0, null),
    (4, 24, 1, 36),
    (4, 25, 2, 29),
    (4, 26, 0, null),
    (4, 27, 0, null),
    (4, 28, 2, 3),
    (4, 29, 1, 13),
    (4, 30, 2, 43),
    (4, 31, 1, 34),
    (4, 32, 1, 30),
    (4, 33, 0, null),
    (4, 34, 0, null),
    (4, 35, 2, 0),
    (4, 36, 2, 11),
    (4, 37, 1, 60),
    (4, 38, 2, 4),
    (4, 39, 2, 60),
    (4, 40, 0, null),
    (4, 41, 1, 95),
    (4, 42, 2, 6),
    (4, 43, 2, 66),
    (4, 44, 0, null),
    (4, 45, 0, null),
    (4, 46, 1, 96),
    (4, 47, 1, 12),
    (4, 48, 2, 23),
    (4, 49, 2, 81),
    (4, 50, 0, null),
    (4, 51, 0, null),
    (4, 52, 1, 53),
    (4, 53, 1, 91),
    (4, 54, 0, null),
    (4, 55, 1, 34),
    (4, 56, 0, null),
    (4, 57, 2, 76),
    (4, 58, 0, null),
    (4, 59, 1, 5),
    (4, 60, 1, 98),
    (5, 1, 0, null),
    (5, 2, 2, 95),
    (5, 3, 1, 65),
    (5, 4, 0, null),
    (5, 5, 0, null),
    (5, 6, 2, 99),
    (5, 7, 2, 46),
    (5, 8, 0, null),
    (5, 9, 0, null),
    (5, 10, 1, 47),
    (5, 11, 1, 69),
    (5, 12, 2, 1),
    (5, 13, 1, 5),
    (5, 14, 2, 32),
    (5, 15, 1, 91),
    (5, 16, 2, 71),
    (5, 17, 2, 84),
    (5, 18, 0, null),
    (5, 19, 0, null),
    (5, 20, 1, 65),
    (6, 1, 2, 60),
    (6, 2, 2, 16),
    (6, 3, 2, 41),
    (6, 4, 0, null),
    (6, 5, 1, 99),
    (6, 6, 0, null),
    (6, 7, 0, null),
    (6, 8, 0, null),
    (6, 9, 2, 20),
    (6, 10, 2, 11),
    (6, 11, 1, 54),
    (6, 12, 1, 71),
    (6, 13, 0, null),
    (6, 14, 2, 94),
    (6, 15, 0, null),
    (6, 16, 1, 13),
    (6, 17, 2, 22),
    (6, 18, 0, null),
    (6, 19, 1, 25),
    (6, 20, 2, 38),
    (6, 21, 1, 85),
    (6, 22, 1, 36),
    (6, 23, 0, null),
    (6, 24, 1, 76),
    (6, 25, 1, 46),
    (6, 26, 2, 43),
    (6, 27, 1, 96),
    (6, 28, 1, 91),
    (6, 29, 0, null),
    (6, 30, 2, 7),
    (6, 31, 2, 36),
    (6, 32, 1, 51),
    (6, 33, 1, 7),
    (6, 34, 2, 6),
    (6, 35, 0, null),
    (6, 36, 1, 32),
    (6, 37, 2, 57),
    (6, 38, 0, null),
    (6, 39, 1, 47),
    (6, 40, 0, null),
    (6, 41, 2, 72),
    (6, 42, 1, 5),
    (6, 43, 2, 79),
    (6, 44, 1, 57),
    (6, 45, 2, 73),
    (6, 46, 2, 37),
    (6, 47, 1, 54),
    (6, 48, 0, null),
    (6, 49, 2, 4),
    (6, 50, 2, 68),
    (7, 1, 2, 73),
    (7, 2, 2, 2),
    (7, 3, 2, 16),
    (7, 4, 2, 98),
    (7, 5, 0, null),
    (7, 6, 1, 8),
    (7, 7, 1, 96),
    (7, 8, 1, 75),
    (7, 9, 1, 66),
    (7, 10, 2, 21),
    (7, 11, 0, null),
    (7, 12, 1, 78),
    (7, 13, 0, null),
    (7, 14, 0, null),
    (7, 15, 0, null),
    (7, 16, 0, null),
    (7, 17, 1, 94),
    (7, 18, 2, 15),
    (7, 19, 0, null),
    (7, 20, 1, 15),
    (7, 21, 0, null),
    (7, 22, 1, 38),
    (7, 23, 2, 67),
    (7, 24, 2, 31),
    (7, 25, 2, 46),
    (7, 26, 1, 48),
    (7, 27, 0, null),
    (7, 28, 2, 46),
    (7, 29, 0, null),
    (7, 30, 2, 65),
    (7, 31, 0, null),
    (7, 32, 1, 15),
    (7, 33, 2, 37),
    (7, 34, 1, 93),
    (7, 35, 2, 78),
    (7, 36, 0, null),
    (7, 37, 0, null),
    (7, 38, 0, null),
    (7, 39, 0, null),
    (7, 40, 0, null);