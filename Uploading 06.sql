use pcaxis

select *
from valueset -- �������� valueset-��, ������� ����� ����� �������� �� �������� ��
where valueset='tmallindicators'

select *
from vsvalue -- ������ �������� ��� ����� ������ ������. � ������ ������ ��� - ������ ��� ������������ ������, ������� ������ ������ ���� �����.
where valueset= 'tmallindicators'

select *
from valuepool -- ��� ������������� "������� ��� ����� (� �� ��� ������� � �������� ��)" ��� �������� �����, ����� �� �������.
where valuepool='TM_MCPFE_07'

select *
from [value] -- ��� ��������� ���������� �������� "�������" �����
where valuepool='TM_MCPFE_07'

