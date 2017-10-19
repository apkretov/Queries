use pcaxis

select *
from valueset -- Ќазвани€ valueset-ов, паспорт новый ветки операций со странами ≈—
where valueset='tmallindicators'

select *
from vsvalue -- —писок значений дл€ этого набора данных. ¬ данном случае это - просто все используемые страны, паспорт набора данных этих стран.
where valueset= 'tmallindicators'

select *
from valuepool -- Ёто настраиваема€ "таблица дл€ стран (€ бы так заложил в закрытой Ѕƒ)" дл€ названий стран, оп€ть же паспорт.
where valuepool='TM_MCPFE_07'

select *
from [value] -- Ёто результат предыдущей закрытой "таблицы" стран
where valuepool='TM_MCPFE_07'

