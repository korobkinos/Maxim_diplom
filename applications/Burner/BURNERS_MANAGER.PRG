PROGRAM BURNERS_MANAGER
VAR
	burners   : ARRAY[1..burner_quantity] OF FB_BURNER_UNIT;
	burner_id : WORD;
END_VAR

// === IMPLEMENTATION ===

(*
BURNERS_MANAGER - будущий диспетчер нескольких горелок.
BURNERS_MANAGER подключен в MAIN и выполняется циклически.
Вызывает контейнеры FB_BURNER_UNIT для всех burner_id = 1..burner_quantity.
В GVL_BURNERS зеркалируются агрегированные выходы контейнера.
Вентиляция остается логикой уровня котла и не входит в FB_BURNER_UNIT.
Логика AutoBurner и цепочка "вентиляция -> опрессовка -> розжиг" намеренно исключены.
*)

FOR burner_id := 1 TO burner_quantity DO
	burners[burner_id](
		burner_id := burner_id
	);

	GVL_BURNERS.ready[burner_id] := burners[burner_id].ready;
	GVL_BURNERS.run[burner_id] := burners[burner_id].run;
	GVL_BURNERS.alarm[burner_id] := burners[burner_id].alarm;
	GVL_BURNERS.warning[burner_id] := burners[burner_id].warning;
	GVL_BURNERS.state[burner_id] := burners[burner_id].state;
END_FOR;
