PROGRAM MAIN
VAR
	scale_settings_sync : FB_SCALE_SETTINGS_SYNC;
	pressure_settings_sync : FB_PRESSURE_SETTINGS_SYNC;
	ignition_settings_sync : FB_IGNITION_SETTINGS_SYNC;
END_VAR

// === IMPLEMENTATION ===

scale_settings_sync();
pressure_settings_sync();
ignition_settings_sync();
BURNERS_MANAGER();
