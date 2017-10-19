USE Timber
--UPDATE [mcpfe-2011]					--1 Update TERM_NAME
--SET TERM_NAME = 'Birds/Crit End #'
--WHERE TERM_NAME = 'Bird/Crit end'

--SELECT TERM_NAME,						--2 Check the update result
--	 TERM_NAME_Orig
--FROM [mcpfe-2011]
--WHERE TERM_NAME <> TERM_NAME_Orig

--UPDATE [mcpfe-2011]						--3 Undo the update
--SET TERM_NAME = TERM_NAME_Orig
--WHERE TERM_NAME <> TERM_NAME_Orig