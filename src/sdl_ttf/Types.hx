package sdl_ttf;

import cpp.Pointer;

class Types {}

@:native("TTF_Font")
@:include("vendor/include/Headers.h")
extern class TTF_Font {}

typedef Font = Pointer<TTF_Font>;