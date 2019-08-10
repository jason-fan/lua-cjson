target("cjson")
    set_kind("shared")
    if is_plat("windows") then 
        add_defines("LUA_BUILD_AS_DLL")
        add_defines("LUA_LIB")
        add_defines("DISABLE_INVALID_NUMBERS")
    else 
        add_syslinks("pthread", "dl", "m", "readline") 
    end
    add_files("lua_cjson.c")
    add_files("fpconv.c")
    add_deps("lua53")
