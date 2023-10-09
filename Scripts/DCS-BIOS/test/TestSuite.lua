package.path = "./Scripts/DCS-BIOS/test/?.lua;" .. package.path
package.path = "./Scripts/DCS-BIOS/test/controls/?.lua;" .. package.path
package.path = "./Scripts/DCS-BIOS/test/ext/?.lua;" .. package.path
package.path = "./Scripts/DCS-BIOS/test/compile/?.lua;" .. package.path
package.path = "./Scripts/DCS-BIOS/test/io/?.lua;" .. package.path
package.path = "./Scripts/DCS-BIOS/?.lua;" .. package.path
package.path = "./Scripts/DCS-BIOS/lib/?.lua;" .. package.path
package.path = "./Scripts/DCS-BIOS/lib/io/?.lua;" .. package.path
package.path = "./Scripts/DCS-BIOS/lib/common/?.lua;" .. package.path
package.path = "./Scripts/DCS-BIOS/lib/modules/?.lua;" .. package.path
package.path = "./Scripts/DCS-BIOS/lib/modules/aircraft_modules/?.lua;" .. package.path
package.path = "./Scripts/DCS-BIOS/lib/modules/common_modules/?.lua;" .. package.path
package.path = "./Scripts/DCS-BIOS/lib/modules/documentation/?.lua;" .. package.path
package.path = "./Scripts/DCS-BIOS/lib/modules/memory_map/?.lua;" .. package.path

-- global functions that haven't been refactored yet
BIOS = {}

lfs = require("lfs")

require("AircraftTest") -- high-level tests for specific aircraft
require("ConnectionManagerTest") -- unit tests for send/receive logic
require("MemoryMapTest") -- unit tests for the memory map
require("MemoryMapEntryTest") -- unit tests for memory map entries
require("ModuleTest") -- unit tests for core aircraft module functionality
require("ParseIndicationTest") -- unit tests for the parse_indication function
require("ServerTest") -- unit tests for tcp/udp server code
require("StateMachineTest") -- unit tests for the core state machine loop

local lu = require("luaunit")
os.exit(lu.LuaUnit:run())
