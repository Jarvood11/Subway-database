CREATE TABLE metro (
  id number(10) NOT NULL,
  line number(10) NOT NULL,
  name varchar2(100) NOT NULL,
  PRIMARY KEY (id)
)    ;
 
-- Generate ID using sequence and trigger
 CREATE SEQUENCE metro_seq START WITH 207 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER metro_seq_tr
 BEFORE INSERT ON metro FOR EACH ROW
 WHEN (NEW.id IS NULL)
BEGIN
 SELECT metro_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/

--
-- Дамп данных таблицы `metro`
--

INSERT INTO metro (id, line, name)
 SELECT 1, 1, 'Сокольники' FROM dual UNION ALL 
 SELECT 2, 1, 'Красносельская' FROM dual UNION ALL 
 SELECT 3, 1, 'Комсомольская' FROM dual UNION ALL 
 SELECT 4, 1, 'Красные ворота' FROM dual UNION ALL 
 SELECT 5, 1, 'Чистые пруды' FROM dual UNION ALL 
 SELECT 6, 1, 'Лубянка' FROM dual UNION ALL 
 SELECT 7, 1, 'Охотный ряд' FROM dual UNION ALL 
 SELECT 8, 1, 'Библиотека имени Ленина' FROM dual UNION ALL 
 SELECT 9, 1, 'Кропоткинская' FROM dual UNION ALL 
 SELECT 10, 1, 'Парк культуры' FROM dual UNION ALL 
 SELECT 11, 4, 'Смоленская' FROM dual UNION ALL 
 SELECT 12, 4, 'Арбатская' FROM dual UNION ALL 
 SELECT 13, 4, 'Александровский сад' FROM dual UNION ALL 
 SELECT 14, 4, 'Киевская' FROM dual UNION ALL 
 SELECT 15, 3, 'Площадь Революции' FROM dual UNION ALL 
 SELECT 16, 3, 'Курская' FROM dual UNION ALL 
 SELECT 17, 2, 'Сокол' FROM dual UNION ALL 
 SELECT 18, 2, 'Аэропорт' FROM dual UNION ALL 
 SELECT 19, 2, 'Динамо' FROM dual UNION ALL 
 SELECT 20, 2, 'Белорусская' FROM dual UNION ALL 
 SELECT 21, 2, 'Маяковская' FROM dual UNION ALL 
 SELECT 22, 2, 'Театральная' FROM dual UNION ALL 
 SELECT 23, 2, 'Автозаводская' FROM dual UNION ALL 
 SELECT 24, 2, 'Новокузнецкая' FROM dual UNION ALL 
 SELECT 25, 2, 'Павелецкая' FROM dual UNION ALL 
 SELECT 26, 3, 'Бауманская' FROM dual UNION ALL 
 SELECT 27, 3, 'Семёновская' FROM dual UNION ALL 
 SELECT 28, 3, 'Партизанская' FROM dual UNION ALL 
 SELECT 29, 3, 'Электрозаводская' FROM dual UNION ALL 
 SELECT 30, 5, 'Парк культуры' FROM dual UNION ALL 
 SELECT 31, 5, 'Октябрьская' FROM dual UNION ALL 
 SELECT 32, 5, 'Добрынинская' FROM dual UNION ALL 
 SELECT 33, 5, 'Павелецкая' FROM dual UNION ALL 
 SELECT 34, 5, 'Таганская' FROM dual UNION ALL 
 SELECT 35, 5, 'Курская' FROM dual UNION ALL 
 SELECT 36, 5, 'Комсомольская' FROM dual UNION ALL 
 SELECT 37, 5, 'Проспект Мира' FROM dual UNION ALL 
 SELECT 38, 5, 'Новослободская' FROM dual UNION ALL 
 SELECT 39, 5, 'Белорусская' FROM dual UNION ALL 
 SELECT 40, 3, 'Киевская' FROM dual UNION ALL 
 SELECT 41, 3, 'Смоленская' FROM dual UNION ALL 
 SELECT 42, 3, 'Арбатская' FROM dual UNION ALL 
 SELECT 43, 5, 'Краснопресненская' FROM dual UNION ALL 
 SELECT 44, 5, 'Киевская' FROM dual UNION ALL 
 SELECT 45, 1, 'Фрунзенская' FROM dual UNION ALL 
 SELECT 46, 1, 'Спортивная' FROM dual UNION ALL 
 SELECT 47, 6, 'ВДНХ' FROM dual UNION ALL 
 SELECT 48, 6, 'Алексеевская' FROM dual UNION ALL 
 SELECT 49, 6, 'Рижская' FROM dual UNION ALL 
 SELECT 50, 6, 'Проспект Мира' FROM dual UNION ALL 
 SELECT 51, 4, 'Кутузовская' FROM dual UNION ALL 
 SELECT 52, 4, 'Студенческая' FROM dual UNION ALL 
 SELECT 53, 1, 'Воробьёвы горы' FROM dual UNION ALL 
 SELECT 54, 1, 'Университет' FROM dual UNION ALL 
 SELECT 55, 4, 'Фили' FROM dual UNION ALL 
 SELECT 56, 4, 'Пионерская' FROM dual UNION ALL 
 SELECT 57, 4, 'Филёвский парк' FROM dual UNION ALL 
 SELECT 58, 4, 'Багратионовская' FROM dual UNION ALL 
 SELECT 59, 3, 'Измайловская' FROM dual UNION ALL 
 SELECT 60, 3, 'Первомайская' FROM dual UNION ALL 
 SELECT 61, 6, 'Октябрьская' FROM dual UNION ALL 
 SELECT 62, 6, 'Ленинский проспект' FROM dual UNION ALL 
 SELECT 63, 6, 'Академическая' FROM dual UNION ALL 
 SELECT 64, 6, 'Профсоюзная' FROM dual UNION ALL 
 SELECT 65, 6, 'Новые Черёмушки' FROM dual UNION ALL 
 SELECT 66, 3, 'Щёлковская' FROM dual UNION ALL 
 SELECT 67, 1, 'Проспект Вернадского' FROM dual UNION ALL 
 SELECT 68, 1, 'Юго-Западная' FROM dual UNION ALL 
 SELECT 69, 2, 'Речной вокзал' FROM dual UNION ALL 
 SELECT 70, 2, 'Водный стадион' FROM dual UNION ALL 
 SELECT 71, 2, 'Войковская' FROM dual UNION ALL 
 SELECT 72, 3, 'Молодёжная' FROM dual UNION ALL 
 SELECT 73, 4, 'Кунцевская' FROM dual UNION ALL 
 SELECT 74, 1, 'Преображенская площадь' FROM dual UNION ALL 
 SELECT 75, 7, 'Таганская' FROM dual UNION ALL 
 SELECT 76, 7, 'Пролетарская' FROM dual UNION ALL 
 SELECT 77, 7, 'Волгоградский проспект' FROM dual UNION ALL 
 SELECT 78, 7, 'Текстильщики' FROM dual UNION ALL 
 SELECT 79, 7, 'Кузьминки' FROM dual UNION ALL 
 SELECT 80, 7, 'Рязанский проспект' FROM dual UNION ALL 
 SELECT 81, 7, 'Выхино' FROM dual UNION ALL 
 SELECT 82, 2, 'Коломенская' FROM dual UNION ALL 
 SELECT 83, 2, 'Каширская' FROM dual UNION ALL 
 SELECT 84, 11, 'Каширская' FROM dual UNION ALL 
 SELECT 85, 11, 'Варшавская' FROM dual UNION ALL 
 SELECT 86, 11, 'Каховская' FROM dual UNION ALL 
 SELECT 87, 6, 'Китай-город' FROM dual UNION ALL 
 SELECT 88, 6, 'Третьяковская' FROM dual UNION ALL 
 SELECT 89, 7, 'Китай-город' FROM dual UNION ALL 
 SELECT 90, 6, 'Сухаревская' FROM dual UNION ALL 
 SELECT 91, 6, 'Тургеневская' FROM dual UNION ALL 
 SELECT 92, 7, 'Октябрьское поле' FROM dual UNION ALL 
 SELECT 93, 7, 'Полежаевская' FROM dual UNION ALL 
 SELECT 94, 7, 'Беговая' FROM dual UNION ALL 
 SELECT 95, 7, 'Улица 1905 года' FROM dual UNION ALL 
 SELECT 96, 7, 'Баррикадная' FROM dual UNION ALL 
 SELECT 97, 6, 'Калужская' FROM dual UNION ALL 
 SELECT 98, 6, 'Беляево' FROM dual UNION ALL 
 SELECT 99, 7, 'Пушкинская' FROM dual UNION ALL 
 SELECT 100, 7, 'Кузнецкий мост' FROM dual UNION ALL 
 SELECT 101, 7, 'Планерная' FROM dual UNION ALL 
 SELECT 102, 7, 'Сходненская' FROM dual UNION ALL 
 SELECT 103, 7, 'Тушинская' FROM dual UNION ALL 
 SELECT 104, 7, 'Щукинская' FROM dual UNION ALL 
 SELECT 105, 6, 'Медведково' FROM dual UNION ALL 
 SELECT 106, 6, 'Бабушкинская' FROM dual UNION ALL 
 SELECT 107, 6, 'Свиблово' FROM dual UNION ALL 
 SELECT 108, 6, 'Ботанический сад' FROM dual UNION ALL 
 SELECT 109, 2, 'Тверская' FROM dual UNION ALL 
 SELECT 110, 8, 'Марксистская' FROM dual UNION ALL 
 SELECT 111, 8, 'Площадь Ильича' FROM dual UNION ALL 
 SELECT 112, 8, 'Авиамоторная' FROM dual UNION ALL 
 SELECT 113, 8, 'Шоссе Энтузиастов' FROM dual UNION ALL 
 SELECT 114, 8, 'Перово' FROM dual UNION ALL 
 SELECT 115, 8, 'Новогиреево' FROM dual UNION ALL 
 SELECT 116, 6, 'Шаболовская' FROM dual UNION ALL 
 SELECT 117, 9, 'Серпуховская' FROM dual UNION ALL 
 SELECT 118, 9, 'Тульская' FROM dual UNION ALL 
 SELECT 119, 9, 'Нагатинская' FROM dual UNION ALL 
 SELECT 120, 9, 'Нагорная' FROM dual UNION ALL 
 SELECT 121, 9, 'Нахимовский проспект' FROM dual UNION ALL 
 SELECT 122, 9, 'Севастопольская' FROM dual UNION ALL 
 SELECT 123, 9, 'Чертановская' FROM dual UNION ALL 
 SELECT 124, 9, 'Южная' FROM dual UNION ALL 
 SELECT 125, 2, 'Кантемировская' FROM dual UNION ALL 
 SELECT 126, 2, 'Царицыно' FROM dual UNION ALL 
 SELECT 127, 2, 'Орехово' FROM dual UNION ALL 
 SELECT 128, 2, 'Домодедовская' FROM dual UNION ALL 
 SELECT 129, 2, 'Красногвардейская' FROM dual UNION ALL 
 SELECT 130, 9, 'Пражская' FROM dual UNION ALL 
 SELECT 131, 9, 'Боровицкая' FROM dual UNION ALL 
 SELECT 132, 9, 'Полянка' FROM dual UNION ALL 
 SELECT 133, 8, 'Третьяковская' FROM dual UNION ALL 
 SELECT 134, 6, 'Коньково' FROM dual UNION ALL 
 SELECT 135, 6, 'Тёплый Стан' FROM dual UNION ALL 
 SELECT 136, 9, 'Чеховская' FROM dual UNION ALL 
 SELECT 137, 9, 'Савёловская' FROM dual UNION ALL 
 SELECT 138, 9, 'Менделеевская' FROM dual UNION ALL 
 SELECT 139, 9, 'Цветной бульвар' FROM dual UNION ALL 
 SELECT 140, 3, 'Крылатское' FROM dual UNION ALL 
 SELECT 141, 6, 'Ясенево' FROM dual UNION ALL 
 SELECT 142, 6, 'Новоясеневская' FROM dual UNION ALL 
 SELECT 143, 1, 'Бульвар Рокоссовского' FROM dual UNION ALL 
 SELECT 144, 1, 'Черкизовская' FROM dual UNION ALL 
 SELECT 145, 9, 'Отрадное' FROM dual UNION ALL 
 SELECT 146, 9, 'Владыкино' FROM dual UNION ALL 
 SELECT 147, 9, 'Петровско-Разумовская' FROM dual UNION ALL 
 SELECT 148, 9, 'Тимирязевская' FROM dual UNION ALL 
 SELECT 149, 9, 'Дмитровская' FROM dual UNION ALL 
 SELECT 150, 9, 'Бибирево' FROM dual UNION ALL 
 SELECT 151, 9, 'Алтуфьево' FROM dual UNION ALL 
 SELECT 152, 10, 'Чкаловская' FROM dual UNION ALL 
 SELECT 153, 10, 'Римская' FROM dual UNION ALL 
 SELECT 154, 10, 'Крестьянская застава' FROM dual UNION ALL 
 SELECT 155, 10, 'Кожуховская' FROM dual UNION ALL 
 SELECT 156, 10, 'Печатники' FROM dual UNION ALL 
 SELECT 157, 10, 'Волжская' FROM dual UNION ALL 
 SELECT 158, 10, 'Люблино' FROM dual UNION ALL 
 SELECT 159, 10, 'Братиславская' FROM dual UNION ALL 
 SELECT 160, 10, 'Марьино' FROM dual UNION ALL 
 SELECT 161, 10, 'Дубровка' FROM dual UNION ALL 
 SELECT 162, 9, 'Улица академика Янгеля' FROM dual UNION ALL 
 SELECT 163, 9, 'Аннино' FROM dual UNION ALL 
 SELECT 164, 9, 'Бульвар Дмитрия Донского' FROM dual UNION ALL 
 SELECT 165, 3, 'Парк Победы' FROM dual UNION ALL 
 SELECT 166, 8, 'Парк Победы' FROM dual UNION ALL 
 SELECT 167, 12, 'Улица Старокачаловская' FROM dual UNION ALL 
 SELECT 168, 12, 'Улица Скобелевская' FROM dual UNION ALL 
 SELECT 169, 12, 'Бульвар адмирала Ушакова' FROM dual UNION ALL 
 SELECT 170, 12, 'Улица Горчакова' FROM dual UNION ALL 
 SELECT 171, 12, 'Бунинская аллея' FROM dual UNION ALL 
 SELECT 172, 4, 'Выставочная' FROM dual UNION ALL 
 SELECT 173, 4, 'Международная' FROM dual UNION ALL 
 SELECT 174, 10, 'Трубная' FROM dual UNION ALL 
 SELECT 175, 10, 'Сретенский бульвар' FROM dual UNION ALL 
 SELECT 176, 3, 'Строгино' FROM dual UNION ALL 
 SELECT 177, 3, 'Кунцевская' FROM dual UNION ALL 
 SELECT 178, 3, 'Славянский бульвар' FROM dual UNION ALL 
 SELECT 179, 3, 'Митино' FROM dual UNION ALL 
 SELECT 180, 3, 'Волоколамская' FROM dual UNION ALL 
 SELECT 181, 3, 'Мякинино' FROM dual UNION ALL 
 SELECT 182, 10, 'Марьина роща' FROM dual UNION ALL 
 SELECT 183, 10, 'Достоевская' FROM dual UNION ALL 
 SELECT 184, 10, 'Борисово' FROM dual UNION ALL 
 SELECT 185, 10, 'Шипиловская' FROM dual UNION ALL 
 SELECT 186, 10, 'Зябликово' FROM dual UNION ALL 
 SELECT 187, 8, 'Новокосино' FROM dual UNION ALL 
 SELECT 188, 2, 'Алма-Атинская' FROM dual UNION ALL 
 SELECT 189, 3, 'Пятницкое шоссе' FROM dual UNION ALL 
 SELECT 190, 7, 'Лермонтовский проспект' FROM dual UNION ALL 
 SELECT 191, 7, 'Жулебино' FROM dual UNION ALL 
 SELECT 192, 8, 'Деловой центр' FROM dual UNION ALL 
 SELECT 193, 12, 'Битцевский парк' FROM dual UNION ALL 
 SELECT 194, 12, 'Лесопарковая' FROM dual UNION ALL 
 SELECT 195, 7, 'Спартак' FROM dual UNION ALL 
 SELECT 196, 1, 'Тропарёво' FROM dual UNION ALL 
 SELECT 197, 1, 'Саларьво' FROM dual UNION ALL 
 SELECT 198, 1, 'Румянцево' FROM dual UNION ALL 
 SELECT 199, 7, 'Котельники' FROM dual UNION ALL 
 SELECT 200, 2, 'Технопарк' FROM dual UNION ALL 
 SELECT 201, 13, 'Тимирязевская' FROM dual UNION ALL 
 SELECT 202, 13, 'Улица Милашенкова' FROM dual UNION ALL 
 SELECT 203, 13, 'Телецентр' FROM dual UNION ALL 
 SELECT 204, 13, 'Улица Академика Королёва' FROM dual UNION ALL 
 SELECT 205, 13, 'Выставочный центр' FROM dual UNION ALL 
 SELECT 206, 13, 'Улица Сергея Эйзенштейна' FROM dual;

-- --------------------------------------------------------

--
-- Структура таблицы `metro_line`
--

CREATE TABLE metro_line (
  id number(10) NOT NULL,
  name varchar2(100) NOT NULL,
  color varchar2(30) NOT NULL,
  PRIMARY KEY (id)
)    ;
 
-- Generate ID using sequence and trigger
 CREATE SEQUENCE metro_line_seq START WITH 14 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER metro_line_seq_tr
 BEFORE INSERT ON metro_line FOR EACH ROW
 WHEN (NEW.id IS NULL)
BEGIN
 SELECT metro_line_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/

--
-- Дамп данных таблицы `metro_line`
--

INSERT INTO metro_line (id, name, color)
 SELECT 1, 'Сокольническая линия', 'red' FROM dual UNION ALL 
 SELECT 2, 'Замоскворецкая линия', 'green' FROM dual UNION ALL 
 SELECT 3, 'Арбатско-Покровская линия', 'blue' FROM dual UNION ALL 
 SELECT 4, 'Филёвская линия', 'deepskyblue' FROM dual UNION ALL 
 SELECT 5, 'Кольцевая линия', 'brown' FROM dual UNION ALL 
 SELECT 6, 'Калужско-Рижская линия', 'orange' FROM dual UNION ALL 
 SELECT 7, 'Таганско-Краснопресненская линия', 'darkviolet' FROM dual UNION ALL 
 SELECT 8, 'Калининско-Солнцевская линия', 'gold' FROM dual UNION ALL 
 SELECT 9, 'Серпуховско-Тимирязевская линия', 'grey' FROM dual UNION ALL 
 SELECT 10, 'Люблинско-Дмитровская линия', 'lawngreen' FROM dual UNION ALL 
 SELECT 11, 'Каховская линия', 'lightseagreen' FROM dual UNION ALL 
 SELECT 12, 'Бутовская линия', 'lightskyblue' FROM dual UNION ALL 
 SELECT 13, 'Монорельсовая транспортная система', 'steelblue' FROM dual;
 