#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#if defined(HX_WINDOWS) || defined(HX_MACOS) || defined(HX_LINUX)
#define NEKO_COMPATIBLE
#endif


#include <hx/CFFI.h>
#include "Utils.h"


using namespace navtivetouchpoint;

static void navtivetouchpoint_start () {
    start();
}
DEFINE_PRIM (navtivetouchpoint_start, 0);

static value stage_x(){
	return alloc_float(stageX());
}
DEFINE_PRIM (stage_x, 0);

static value stage_y(){
	return alloc_float(stageY());
}
DEFINE_PRIM (stage_y, 0);



extern "C" void navtivetouchpoint_main () {
	
	val_int(0); // Fix Neko init
	
}
DEFINE_ENTRY_POINT (navtivetouchpoint_main);



extern "C" int navtivetouchpoint_register_prims () { return 0; }