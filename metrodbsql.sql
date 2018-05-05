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
-- ���� ������ ������� `metro`
--

INSERT INTO metro (id, line, name)
 SELECT 1, 1, '����������' FROM dual UNION ALL 
 SELECT 2, 1, '��������������' FROM dual UNION ALL 
 SELECT 3, 1, '�������������' FROM dual UNION ALL 
 SELECT 4, 1, '������� ������' FROM dual UNION ALL 
 SELECT 5, 1, '������ �����' FROM dual UNION ALL 
 SELECT 6, 1, '�������' FROM dual UNION ALL 
 SELECT 7, 1, '������� ���' FROM dual UNION ALL 
 SELECT 8, 1, '���������� ����� ������' FROM dual UNION ALL 
 SELECT 9, 1, '�������������' FROM dual UNION ALL 
 SELECT 10, 1, '���� ��������' FROM dual UNION ALL 
 SELECT 11, 4, '����������' FROM dual UNION ALL 
 SELECT 12, 4, '���������' FROM dual UNION ALL 
 SELECT 13, 4, '��������������� ���' FROM dual UNION ALL 
 SELECT 14, 4, '��������' FROM dual UNION ALL 
 SELECT 15, 3, '������� ���������' FROM dual UNION ALL 
 SELECT 16, 3, '�������' FROM dual UNION ALL 
 SELECT 17, 2, '�����' FROM dual UNION ALL 
 SELECT 18, 2, '��������' FROM dual UNION ALL 
 SELECT 19, 2, '������' FROM dual UNION ALL 
 SELECT 20, 2, '�����������' FROM dual UNION ALL 
 SELECT 21, 2, '����������' FROM dual UNION ALL 
 SELECT 22, 2, '�����������' FROM dual UNION ALL 
 SELECT 23, 2, '�������������' FROM dual UNION ALL 
 SELECT 24, 2, '�������������' FROM dual UNION ALL 
 SELECT 25, 2, '����������' FROM dual UNION ALL 
 SELECT 26, 3, '����������' FROM dual UNION ALL 
 SELECT 27, 3, '����������' FROM dual UNION ALL 
 SELECT 28, 3, '������������' FROM dual UNION ALL 
 SELECT 29, 3, '����������������' FROM dual UNION ALL 
 SELECT 30, 5, '���� ��������' FROM dual UNION ALL 
 SELECT 31, 5, '�����������' FROM dual UNION ALL 
 SELECT 32, 5, '������������' FROM dual UNION ALL 
 SELECT 33, 5, '����������' FROM dual UNION ALL 
 SELECT 34, 5, '���������' FROM dual UNION ALL 
 SELECT 35, 5, '�������' FROM dual UNION ALL 
 SELECT 36, 5, '�������������' FROM dual UNION ALL 
 SELECT 37, 5, '�������� ����' FROM dual UNION ALL 
 SELECT 38, 5, '��������������' FROM dual UNION ALL 
 SELECT 39, 5, '�����������' FROM dual UNION ALL 
 SELECT 40, 3, '��������' FROM dual UNION ALL 
 SELECT 41, 3, '����������' FROM dual UNION ALL 
 SELECT 42, 3, '���������' FROM dual UNION ALL 
 SELECT 43, 5, '�����������������' FROM dual UNION ALL 
 SELECT 44, 5, '��������' FROM dual UNION ALL 
 SELECT 45, 1, '�����������' FROM dual UNION ALL 
 SELECT 46, 1, '����������' FROM dual UNION ALL 
 SELECT 47, 6, '����' FROM dual UNION ALL 
 SELECT 48, 6, '������������' FROM dual UNION ALL 
 SELECT 49, 6, '�������' FROM dual UNION ALL 
 SELECT 50, 6, '�������� ����' FROM dual UNION ALL 
 SELECT 51, 4, '�����������' FROM dual UNION ALL 
 SELECT 52, 4, '������������' FROM dual UNION ALL 
 SELECT 53, 1, '��������� ����' FROM dual UNION ALL 
 SELECT 54, 1, '�����������' FROM dual UNION ALL 
 SELECT 55, 4, '����' FROM dual UNION ALL 
 SELECT 56, 4, '����������' FROM dual UNION ALL 
 SELECT 57, 4, '�������� ����' FROM dual UNION ALL 
 SELECT 58, 4, '���������������' FROM dual UNION ALL 
 SELECT 59, 3, '������������' FROM dual UNION ALL 
 SELECT 60, 3, '������������' FROM dual UNION ALL 
 SELECT 61, 6, '�����������' FROM dual UNION ALL 
 SELECT 62, 6, '��������� ��������' FROM dual UNION ALL 
 SELECT 63, 6, '�������������' FROM dual UNION ALL 
 SELECT 64, 6, '�����������' FROM dual UNION ALL 
 SELECT 65, 6, '����� ��������' FROM dual UNION ALL 
 SELECT 66, 3, 'ٸ��������' FROM dual UNION ALL 
 SELECT 67, 1, '�������� �����������' FROM dual UNION ALL 
 SELECT 68, 1, '���-��������' FROM dual UNION ALL 
 SELECT 69, 2, '������ ������' FROM dual UNION ALL 
 SELECT 70, 2, '������ �������' FROM dual UNION ALL 
 SELECT 71, 2, '����������' FROM dual UNION ALL 
 SELECT 72, 3, '���������' FROM dual UNION ALL 
 SELECT 73, 4, '����������' FROM dual UNION ALL 
 SELECT 74, 1, '�������������� �������' FROM dual UNION ALL 
 SELECT 75, 7, '���������' FROM dual UNION ALL 
 SELECT 76, 7, '������������' FROM dual UNION ALL 
 SELECT 77, 7, '������������� ��������' FROM dual UNION ALL 
 SELECT 78, 7, '������������' FROM dual UNION ALL 
 SELECT 79, 7, '���������' FROM dual UNION ALL 
 SELECT 80, 7, '��������� ��������' FROM dual UNION ALL 
 SELECT 81, 7, '������' FROM dual UNION ALL 
 SELECT 82, 2, '�����������' FROM dual UNION ALL 
 SELECT 83, 2, '���������' FROM dual UNION ALL 
 SELECT 84, 11, '���������' FROM dual UNION ALL 
 SELECT 85, 11, '����������' FROM dual UNION ALL 
 SELECT 86, 11, '���������' FROM dual UNION ALL 
 SELECT 87, 6, '�����-�����' FROM dual UNION ALL 
 SELECT 88, 6, '�������������' FROM dual UNION ALL 
 SELECT 89, 7, '�����-�����' FROM dual UNION ALL 
 SELECT 90, 6, '�����������' FROM dual UNION ALL 
 SELECT 91, 6, '������������' FROM dual UNION ALL 
 SELECT 92, 7, '����������� ����' FROM dual UNION ALL 
 SELECT 93, 7, '������������' FROM dual UNION ALL 
 SELECT 94, 7, '�������' FROM dual UNION ALL 
 SELECT 95, 7, '����� 1905 ����' FROM dual UNION ALL 
 SELECT 96, 7, '�����������' FROM dual UNION ALL 
 SELECT 97, 6, '���������' FROM dual UNION ALL 
 SELECT 98, 6, '�������' FROM dual UNION ALL 
 SELECT 99, 7, '����������' FROM dual UNION ALL 
 SELECT 100, 7, '��������� ����' FROM dual UNION ALL 
 SELECT 101, 7, '���������' FROM dual UNION ALL 
 SELECT 102, 7, '�����������' FROM dual UNION ALL 
 SELECT 103, 7, '���������' FROM dual UNION ALL 
 SELECT 104, 7, '���������' FROM dual UNION ALL 
 SELECT 105, 6, '����������' FROM dual UNION ALL 
 SELECT 106, 6, '������������' FROM dual UNION ALL 
 SELECT 107, 6, '��������' FROM dual UNION ALL 
 SELECT 108, 6, '������������ ���' FROM dual UNION ALL 
 SELECT 109, 2, '��������' FROM dual UNION ALL 
 SELECT 110, 8, '������������' FROM dual UNION ALL 
 SELECT 111, 8, '������� ������' FROM dual UNION ALL 
 SELECT 112, 8, '������������' FROM dual UNION ALL 
 SELECT 113, 8, '����� �����������' FROM dual UNION ALL 
 SELECT 114, 8, '������' FROM dual UNION ALL 
 SELECT 115, 8, '�����������' FROM dual UNION ALL 
 SELECT 116, 6, '�����������' FROM dual UNION ALL 
 SELECT 117, 9, '������������' FROM dual UNION ALL 
 SELECT 118, 9, '��������' FROM dual UNION ALL 
 SELECT 119, 9, '�����������' FROM dual UNION ALL 
 SELECT 120, 9, '��������' FROM dual UNION ALL 
 SELECT 121, 9, '����������� ��������' FROM dual UNION ALL 
 SELECT 122, 9, '���������������' FROM dual UNION ALL 
 SELECT 123, 9, '������������' FROM dual UNION ALL 
 SELECT 124, 9, '�����' FROM dual UNION ALL 
 SELECT 125, 2, '��������������' FROM dual UNION ALL 
 SELECT 126, 2, '��������' FROM dual UNION ALL 
 SELECT 127, 2, '�������' FROM dual UNION ALL 
 SELECT 128, 2, '�������������' FROM dual UNION ALL 
 SELECT 129, 2, '�����������������' FROM dual UNION ALL 
 SELECT 130, 9, '��������' FROM dual UNION ALL 
 SELECT 131, 9, '����������' FROM dual UNION ALL 
 SELECT 132, 9, '�������' FROM dual UNION ALL 
 SELECT 133, 8, '�������������' FROM dual UNION ALL 
 SELECT 134, 6, '��������' FROM dual UNION ALL 
 SELECT 135, 6, 'Ҹ���� ����' FROM dual UNION ALL 
 SELECT 136, 9, '���������' FROM dual UNION ALL 
 SELECT 137, 9, '����������' FROM dual UNION ALL 
 SELECT 138, 9, '�������������' FROM dual UNION ALL 
 SELECT 139, 9, '������� �������' FROM dual UNION ALL 
 SELECT 140, 3, '����������' FROM dual UNION ALL 
 SELECT 141, 6, '�������' FROM dual UNION ALL 
 SELECT 142, 6, '��������������' FROM dual UNION ALL 
 SELECT 143, 1, '������� �������������' FROM dual UNION ALL 
 SELECT 144, 1, '������������' FROM dual UNION ALL 
 SELECT 145, 9, '��������' FROM dual UNION ALL 
 SELECT 146, 9, '���������' FROM dual UNION ALL 
 SELECT 147, 9, '���������-�����������' FROM dual UNION ALL 
 SELECT 148, 9, '�������������' FROM dual UNION ALL 
 SELECT 149, 9, '�����������' FROM dual UNION ALL 
 SELECT 150, 9, '��������' FROM dual UNION ALL 
 SELECT 151, 9, '���������' FROM dual UNION ALL 
 SELECT 152, 10, '����������' FROM dual UNION ALL 
 SELECT 153, 10, '�������' FROM dual UNION ALL 
 SELECT 154, 10, '������������ �������' FROM dual UNION ALL 
 SELECT 155, 10, '�����������' FROM dual UNION ALL 
 SELECT 156, 10, '���������' FROM dual UNION ALL 
 SELECT 157, 10, '��������' FROM dual UNION ALL 
 SELECT 158, 10, '�������' FROM dual UNION ALL 
 SELECT 159, 10, '�������������' FROM dual UNION ALL 
 SELECT 160, 10, '�������' FROM dual UNION ALL 
 SELECT 161, 10, '��������' FROM dual UNION ALL 
 SELECT 162, 9, '����� ��������� ������' FROM dual UNION ALL 
 SELECT 163, 9, '������' FROM dual UNION ALL 
 SELECT 164, 9, '������� ������� ��������' FROM dual UNION ALL 
 SELECT 165, 3, '���� ������' FROM dual UNION ALL 
 SELECT 166, 8, '���� ������' FROM dual UNION ALL 
 SELECT 167, 12, '����� ����������������' FROM dual UNION ALL 
 SELECT 168, 12, '����� ������������' FROM dual UNION ALL 
 SELECT 169, 12, '������� �������� �������' FROM dual UNION ALL 
 SELECT 170, 12, '����� ���������' FROM dual UNION ALL 
 SELECT 171, 12, '��������� �����' FROM dual UNION ALL 
 SELECT 172, 4, '�����������' FROM dual UNION ALL 
 SELECT 173, 4, '�������������' FROM dual UNION ALL 
 SELECT 174, 10, '�������' FROM dual UNION ALL 
 SELECT 175, 10, '���������� �������' FROM dual UNION ALL 
 SELECT 176, 3, '��������' FROM dual UNION ALL 
 SELECT 177, 3, '����������' FROM dual UNION ALL 
 SELECT 178, 3, '���������� �������' FROM dual UNION ALL 
 SELECT 179, 3, '������' FROM dual UNION ALL 
 SELECT 180, 3, '�������������' FROM dual UNION ALL 
 SELECT 181, 3, '��������' FROM dual UNION ALL 
 SELECT 182, 10, '������� ����' FROM dual UNION ALL 
 SELECT 183, 10, '�����������' FROM dual UNION ALL 
 SELECT 184, 10, '��������' FROM dual UNION ALL 
 SELECT 185, 10, '�����������' FROM dual UNION ALL 
 SELECT 186, 10, '���������' FROM dual UNION ALL 
 SELECT 187, 8, '����������' FROM dual UNION ALL 
 SELECT 188, 2, '����-��������' FROM dual UNION ALL 
 SELECT 189, 3, '��������� �����' FROM dual UNION ALL 
 SELECT 190, 7, '������������� ��������' FROM dual UNION ALL 
 SELECT 191, 7, '��������' FROM dual UNION ALL 
 SELECT 192, 8, '������� �����' FROM dual UNION ALL 
 SELECT 193, 12, '���������� ����' FROM dual UNION ALL 
 SELECT 194, 12, '������������' FROM dual UNION ALL 
 SELECT 195, 7, '�������' FROM dual UNION ALL 
 SELECT 196, 1, '��������' FROM dual UNION ALL 
 SELECT 197, 1, '��������' FROM dual UNION ALL 
 SELECT 198, 1, '���������' FROM dual UNION ALL 
 SELECT 199, 7, '����������' FROM dual UNION ALL 
 SELECT 200, 2, '���������' FROM dual UNION ALL 
 SELECT 201, 13, '�������������' FROM dual UNION ALL 
 SELECT 202, 13, '����� �����������' FROM dual UNION ALL 
 SELECT 203, 13, '���������' FROM dual UNION ALL 
 SELECT 204, 13, '����� ��������� �������' FROM dual UNION ALL 
 SELECT 205, 13, '����������� �����' FROM dual UNION ALL 
 SELECT 206, 13, '����� ������ �����������' FROM dual;

-- --------------------------------------------------------

--
-- ��������� ������� `metro_line`
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
-- ���� ������ ������� `metro_line`
--

INSERT INTO metro_line (id, name, color)
 SELECT 1, '�������������� �����', 'red' FROM dual UNION ALL 
 SELECT 2, '�������������� �����', 'green' FROM dual UNION ALL 
 SELECT 3, '��������-���������� �����', 'blue' FROM dual UNION ALL 
 SELECT 4, '�������� �����', 'deepskyblue' FROM dual UNION ALL 
 SELECT 5, '��������� �����', 'brown' FROM dual UNION ALL 
 SELECT 6, '��������-������� �����', 'orange' FROM dual UNION ALL 
 SELECT 7, '��������-����������������� �����', 'darkviolet' FROM dual UNION ALL 
 SELECT 8, '����������-����������� �����', 'gold' FROM dual UNION ALL 
 SELECT 9, '�����������-������������� �����', 'grey' FROM dual UNION ALL 
 SELECT 10, '���������-����������� �����', 'lawngreen' FROM dual UNION ALL 
 SELECT 11, '��������� �����', 'lightseagreen' FROM dual UNION ALL 
 SELECT 12, '��������� �����', 'lightskyblue' FROM dual UNION ALL 
 SELECT 13, '������������� ������������ �������', 'steelblue' FROM dual;
 