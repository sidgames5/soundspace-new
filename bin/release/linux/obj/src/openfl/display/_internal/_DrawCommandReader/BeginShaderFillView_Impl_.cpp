// Generated by Haxe 4.0.5
#include <hxcpp.h>

#ifndef INCLUDED_openfl_display__internal_DrawCommandBuffer
#include <openfl/display/_internal/DrawCommandBuffer.h>
#endif
#ifndef INCLUDED_openfl_display__internal_DrawCommandReader
#include <openfl/display/_internal/DrawCommandReader.h>
#endif
#ifndef INCLUDED_openfl_display__internal_ShaderBuffer
#include <openfl/display/_internal/ShaderBuffer.h>
#endif
#ifndef INCLUDED_openfl_display__internal__DrawCommandReader_BeginShaderFillView_Impl_
#include <openfl/display/_internal/_DrawCommandReader/BeginShaderFillView_Impl_.h>
#endif

HX_LOCAL_STACK_FRAME(_hx_pos_3514654c679e6cb8_457__new,"openfl.display._internal._DrawCommandReader.BeginShaderFillView_Impl_","_new",0x40adeac0,"openfl.display._internal._DrawCommandReader.BeginShaderFillView_Impl_._new","openfl/display/_internal/DrawCommandReader.hx",457,0x29f77eb3)
HX_LOCAL_STACK_FRAME(_hx_pos_3514654c679e6cb8_466_get_shaderBuffer,"openfl.display._internal._DrawCommandReader.BeginShaderFillView_Impl_","get_shaderBuffer",0x6e852e6d,"openfl.display._internal._DrawCommandReader.BeginShaderFillView_Impl_.get_shaderBuffer","openfl/display/_internal/DrawCommandReader.hx",466,0x29f77eb3)
namespace openfl{
namespace display{
namespace _internal{
namespace _DrawCommandReader{

void BeginShaderFillView_Impl__obj::__construct() { }

Dynamic BeginShaderFillView_Impl__obj::__CreateEmpty() { return new BeginShaderFillView_Impl__obj; }

void *BeginShaderFillView_Impl__obj::_hx_vtable = 0;

Dynamic BeginShaderFillView_Impl__obj::__Create(hx::DynamicArray inArgs)
{
	hx::ObjectPtr< BeginShaderFillView_Impl__obj > _hx_result = new BeginShaderFillView_Impl__obj();
	_hx_result->__construct();
	return _hx_result;
}

bool BeginShaderFillView_Impl__obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x25d61f61;
}

 ::openfl::display::_internal::DrawCommandReader BeginShaderFillView_Impl__obj::_new( ::openfl::display::_internal::DrawCommandReader d){
            	HX_STACKFRAME(&_hx_pos_3514654c679e6cb8_457__new)
HXDLIN( 457)		 ::openfl::display::_internal::DrawCommandReader this1 = d;
HXDLIN( 457)		return this1;
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(BeginShaderFillView_Impl__obj,_new,return )

 ::openfl::display::_internal::ShaderBuffer BeginShaderFillView_Impl__obj::get_shaderBuffer( ::openfl::display::_internal::DrawCommandReader this1){
            	HX_STACKFRAME(&_hx_pos_3514654c679e6cb8_466_get_shaderBuffer)
HXDLIN( 466)		return ( ( ::openfl::display::_internal::ShaderBuffer)(this1->buffer->o->__get(this1->oPos)) );
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(BeginShaderFillView_Impl__obj,get_shaderBuffer,return )


BeginShaderFillView_Impl__obj::BeginShaderFillView_Impl__obj()
{
}

bool BeginShaderFillView_Impl__obj::__GetStatic(const ::String &inName, Dynamic &outValue, hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"_new") ) { outValue = _new_dyn(); return true; }
		break;
	case 16:
		if (HX_FIELD_EQ(inName,"get_shaderBuffer") ) { outValue = get_shaderBuffer_dyn(); return true; }
	}
	return false;
}

#ifdef HXCPP_SCRIPTABLE
static hx::StorageInfo *BeginShaderFillView_Impl__obj_sMemberStorageInfo = 0;
static hx::StaticInfo *BeginShaderFillView_Impl__obj_sStaticStorageInfo = 0;
#endif

hx::Class BeginShaderFillView_Impl__obj::__mClass;

static ::String BeginShaderFillView_Impl__obj_sStaticFields[] = {
	HX_("_new",61,15,1f,3f),
	HX_("get_shaderBuffer",8e,46,1c,45),
	::String(null())
};

void BeginShaderFillView_Impl__obj::__register()
{
	BeginShaderFillView_Impl__obj _hx_dummy;
	BeginShaderFillView_Impl__obj::_hx_vtable = *(void **)&_hx_dummy;
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_("openfl.display._internal._DrawCommandReader.BeginShaderFillView_Impl_",6f,87,53,dd);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &BeginShaderFillView_Impl__obj::__GetStatic;
	__mClass->mSetStaticField = &hx::Class_obj::SetNoStaticField;
	__mClass->mStatics = hx::Class_obj::dupFunctions(BeginShaderFillView_Impl__obj_sStaticFields);
	__mClass->mMembers = hx::Class_obj::dupFunctions(0 /* sMemberFields */);
	__mClass->mCanCast = hx::TCanCast< BeginShaderFillView_Impl__obj >;
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = BeginShaderFillView_Impl__obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = BeginShaderFillView_Impl__obj_sStaticStorageInfo;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace openfl
} // end namespace display
} // end namespace _internal
} // end namespace _DrawCommandReader
