package sdl_ttf;

import sdl.Types.Color;
import sdl.Types.Surface;
import sdl_ttf.Types;
import sdl_ttf.Types.Font;
import cpp.UInt32;
import cpp.ConstCharStar;

@:include("vendor/include/Headers.h")
@:buildXml("<include name=\"${haxelib:hxsdl_ttf}/include.xml\"/>")

// WARNING: This will not have every feature SDL TTF has to offer!
//
// Make an issue explaining what feature you want implemented over on GitHub!
// https://github.com/swordcube/hxsdl_ttf/issues

extern class TTF {
    @:native("TTF_Init")
    static function init():Int;

    @:native("TTF_Quit")
    static function quit():Void;

    @:native("TTF_SetFontOutline")
    static function setFontOutline(font:Font, size:Int = 0):Void;

    @:native("TTF_RenderUTF8_Blended_Wrapped")
    static function renderUTF8BlendedWrapped(font:Font, text:ConstCharStar, fg:Color, wrapLength:UInt32):Surface;
    
    @:native("TTF_RenderUTF8_Solid_Wrapped")
    static function renderUTF8SolidWrapped(font:Font, text:ConstCharStar, fg:Color, wrapLength:UInt32):Surface;

    @:native("TTF_RenderText_Blended_Wrapped")
    static function renderTextBlendedWrapped(font:Font, text:ConstCharStar, fg:Color, wrapLength:UInt32):Surface;
    
    @:native("TTF_RenderText_Solid_Wrapped")
    static function renderTextSolidWrapped(font:Font, text:ConstCharStar, fg:Color, wrapLength:UInt32):Surface;

    @:native("TTF_OpenFont")
    static function openFont(path:ConstCharStar, size:Int):Font;

    @:native("TTF_CloseFont")
    static function closeFont(font:Font):Void;
}