/*
    KPLIB_fnc_example_preInit

    File: fn_example_preInit.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2019-02-02
    Last Update: 2019-04-23
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        The preInit function defines global variables, adds event handlers and set some vital settings which are used in this module.

    Parameter(s):
        NONE

    Returns:
        Module preInit finished [BOOL]
*/

if (isServer) then {
    ["Module initializing...", "PRE] [CRATEFILLER", true] call KPLIB_fnc_common_log;

/*
    ----- Module Initialization -----
*/

    KPLIB_cratefiller_data = true call CBA_fnc_createNamespace;
    publicVariable "KPLIB_cratefiller_data";

};

// Process CBA Settings
[] call KPLIB_fnc_cratefiller_settings;

if (isServer) then {["Module initialized", "PRE] [CRATEFILLER", true] call KPLIB_fnc_common_log;};

true
