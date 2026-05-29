PROGRAM Setpoints
VAR
	RecipeManCommands:			RecipeManCommands;
	dwLastError:				DWORD;
	Ton_save:TON;
END_VAR

// === IMPLEMENTATION ===

IF Init THEN
	RecipeManCommands.LoadAndWriteRecipe('Setpoints','InitValue');
	Init:=FALSE;
	RecipeManCommands.ReadAndSaveRecipe('Setpoints','SaveValue');
	RecipeManCommands.LoadAndWriteRecipe('Setpoints','SaveValue');
	RecipeManCommands.ReloadRecipes('Setpoints');
END_IF

IF Load THEN
	RecipeManCommands.LoadAndWriteRecipe('Setpoints','SaveValue');
	RecipeManCommands.ReloadRecipes('Setpoints');
	Load:=FALSE;
	
END_IF

IF Save THEN
//	RecipeManCommands.DeleteRecipe('Setpoints','SaveValue');
//	RecipeManCommands.CreateRecipe('Setpoints','SaveValue');
	RecipeManCommands.ReadAndSaveRecipe('Setpoints','SaveValue');
	RecipeManCommands.LoadRecipe('Setpoints','SaveValue');

END_IF
Ton_save(in:= save, pt:=T#1S);

IF ton_save.Q THEN
		Save:=FALSE;
END_IF