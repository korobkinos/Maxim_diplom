PROGRAM MAIN
VAR
	scale_settings_sync : FB_SCALE_SETTINGS_SYNC;
	scale_runtime : FB_SCALE_RUNTIME;
	pressure_settings_sync : FB_PRESSURE_SETTINGS_SYNC;
	ignition_settings_sync : FB_IGNITION_SETTINGS_SYNC;
END_VAR

// === IMPLEMENTATION ===

scale_settings_sync();
scale_runtime();
pressure_settings_sync();
ignition_settings_sync();
BURNERS_MANAGER();
