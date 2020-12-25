#if SNIPPET01

#include <LuaJIT\src\lua.hpp>
#include <iostream>



#pragma comment(lib,"lua51.lib")
extern "C"
{
#include <LuaJIT\src\lua.h>
#include <LuaJIT\src\lualib.h> 
}

int main(int argc, char* argv[])
{
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    luaL_loadfile(L, "script.lua");
    lua_pcall(L, 0, 0, 0);
    lua_close(L);
    
    system("pause");
    return 0;
}


#endif