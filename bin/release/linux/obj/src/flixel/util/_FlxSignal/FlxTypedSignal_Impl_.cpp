// Generated by Haxe 4.0.5
#include <hxcpp.h>

#ifndef INCLUDED_flixel_util_IFlxDestroyable
#include <flixel/util/IFlxDestroyable.h>
#endif
#ifndef INCLUDED_flixel_util_IFlxSignal
#include <flixel/util/IFlxSignal.h>
#endif
#ifndef INCLUDED_flixel_util__FlxSignal_FlxBaseSignal
#include <flixel/util/_FlxSignal/FlxBaseSignal.h>
#endif
#ifndef INCLUDED_flixel_util__FlxSignal_FlxSignal0
#include <flixel/util/_FlxSignal/FlxSignal0.h>
#endif
#ifndef INCLUDED_flixel_util__FlxSignal_FlxSignal1
#include <flixel/util/_FlxSignal/FlxSignal1.h>
#endif
#ifndef INCLUDED_flixel_util__FlxSignal_FlxSignal2
#include <flixel/util/_FlxSignal/FlxSignal2.h>
#endif
#ifndef INCLUDED_flixel_util__FlxSignal_FlxSignal3
#include <flixel/util/_FlxSignal/FlxSignal3.h>
#endif
#ifndef INCLUDED_flixel_util__FlxSignal_FlxSignal4
#include <flixel/util/_FlxSignal/FlxSignal4.h>
#endif
#ifndef INCLUDED_flixel_util__FlxSignal_FlxTypedSignal_Impl_
#include <flixel/util/_FlxSignal/FlxTypedSignal_Impl_.h>
#endif

HX_LOCAL_STACK_FRAME(_hx_pos_69abc00f883f2355_19_add,"flixel.util._FlxSignal.FlxTypedSignal_Impl_","add",0x0a4ba52c,"flixel.util._FlxSignal.FlxTypedSignal_Impl_.add","flixel/util/FlxSignal.hx",19,0x3c758c5e)
HX_LOCAL_STACK_FRAME(_hx_pos_69abc00f883f2355_24_addOnce,"flixel.util._FlxSignal.FlxTypedSignal_Impl_","addOnce",0x33af54cd,"flixel.util._FlxSignal.FlxTypedSignal_Impl_.addOnce","flixel/util/FlxSignal.hx",24,0x3c758c5e)
HX_LOCAL_STACK_FRAME(_hx_pos_69abc00f883f2355_29_remove,"flixel.util._FlxSignal.FlxTypedSignal_Impl_","remove",0xc99e2219,"flixel.util._FlxSignal.FlxTypedSignal_Impl_.remove","flixel/util/FlxSignal.hx",29,0x3c758c5e)
HX_LOCAL_STACK_FRAME(_hx_pos_69abc00f883f2355_34_has,"flixel.util._FlxSignal.FlxTypedSignal_Impl_","has",0x0a50f265,"flixel.util._FlxSignal.FlxTypedSignal_Impl_.has","flixel/util/FlxSignal.hx",34,0x3c758c5e)
HX_LOCAL_STACK_FRAME(_hx_pos_69abc00f883f2355_39_removeAll,"flixel.util._FlxSignal.FlxTypedSignal_Impl_","removeAll",0x171b2488,"flixel.util._FlxSignal.FlxTypedSignal_Impl_.removeAll","flixel/util/FlxSignal.hx",39,0x3c758c5e)
HX_LOCAL_STACK_FRAME(_hx_pos_69abc00f883f2355_44_get_dispatch,"flixel.util._FlxSignal.FlxTypedSignal_Impl_","get_dispatch",0x56609658,"flixel.util._FlxSignal.FlxTypedSignal_Impl_.get_dispatch","flixel/util/FlxSignal.hx",44,0x3c758c5e)
HX_LOCAL_STACK_FRAME(_hx_pos_69abc00f883f2355_50_toSignal0,"flixel.util._FlxSignal.FlxTypedSignal_Impl_","toSignal0",0xbcacb1d8,"flixel.util._FlxSignal.FlxTypedSignal_Impl_.toSignal0","flixel/util/FlxSignal.hx",50,0x3c758c5e)
HX_LOCAL_STACK_FRAME(_hx_pos_69abc00f883f2355_56_toSignal1,"flixel.util._FlxSignal.FlxTypedSignal_Impl_","toSignal1",0xbcacb1d9,"flixel.util._FlxSignal.FlxTypedSignal_Impl_.toSignal1","flixel/util/FlxSignal.hx",56,0x3c758c5e)
HX_LOCAL_STACK_FRAME(_hx_pos_69abc00f883f2355_62_toSignal2,"flixel.util._FlxSignal.FlxTypedSignal_Impl_","toSignal2",0xbcacb1da,"flixel.util._FlxSignal.FlxTypedSignal_Impl_.toSignal2","flixel/util/FlxSignal.hx",62,0x3c758c5e)
HX_LOCAL_STACK_FRAME(_hx_pos_69abc00f883f2355_68_toSignal3,"flixel.util._FlxSignal.FlxTypedSignal_Impl_","toSignal3",0xbcacb1db,"flixel.util._FlxSignal.FlxTypedSignal_Impl_.toSignal3","flixel/util/FlxSignal.hx",68,0x3c758c5e)
HX_LOCAL_STACK_FRAME(_hx_pos_69abc00f883f2355_74_toSignal4,"flixel.util._FlxSignal.FlxTypedSignal_Impl_","toSignal4",0xbcacb1dc,"flixel.util._FlxSignal.FlxTypedSignal_Impl_.toSignal4","flixel/util/FlxSignal.hx",74,0x3c758c5e)
namespace flixel{
namespace util{
namespace _FlxSignal{

void FlxTypedSignal_Impl__obj::__construct() { }

Dynamic FlxTypedSignal_Impl__obj::__CreateEmpty() { return new FlxTypedSignal_Impl__obj; }

void *FlxTypedSignal_Impl__obj::_hx_vtable = 0;

Dynamic FlxTypedSignal_Impl__obj::__Create(hx::DynamicArray inArgs)
{
	hx::ObjectPtr< FlxTypedSignal_Impl__obj > _hx_result = new FlxTypedSignal_Impl__obj();
	_hx_result->__construct();
	return _hx_result;
}

bool FlxTypedSignal_Impl__obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x7646644d;
}

void FlxTypedSignal_Impl__obj::add(::Dynamic this1, ::Dynamic listener){
            	HX_STACKFRAME(&_hx_pos_69abc00f883f2355_19_add)
HXDLIN(  19)		::flixel::util::IFlxSignal_obj::add(this1,listener);
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(FlxTypedSignal_Impl__obj,add,(void))

void FlxTypedSignal_Impl__obj::addOnce(::Dynamic this1, ::Dynamic listener){
            	HX_STACKFRAME(&_hx_pos_69abc00f883f2355_24_addOnce)
HXDLIN(  24)		::flixel::util::IFlxSignal_obj::addOnce(this1,listener);
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(FlxTypedSignal_Impl__obj,addOnce,(void))

void FlxTypedSignal_Impl__obj::remove(::Dynamic this1, ::Dynamic listener){
            	HX_STACKFRAME(&_hx_pos_69abc00f883f2355_29_remove)
HXDLIN(  29)		::flixel::util::IFlxSignal_obj::remove(this1,listener);
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(FlxTypedSignal_Impl__obj,remove,(void))

bool FlxTypedSignal_Impl__obj::has(::Dynamic this1, ::Dynamic listener){
            	HX_STACKFRAME(&_hx_pos_69abc00f883f2355_34_has)
HXDLIN(  34)		return ::flixel::util::IFlxSignal_obj::has(this1,listener);
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(FlxTypedSignal_Impl__obj,has,return )

void FlxTypedSignal_Impl__obj::removeAll(::Dynamic this1){
            	HX_STACKFRAME(&_hx_pos_69abc00f883f2355_39_removeAll)
HXDLIN(  39)		::flixel::util::IFlxSignal_obj::removeAll(this1);
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(FlxTypedSignal_Impl__obj,removeAll,(void))

 ::Dynamic FlxTypedSignal_Impl__obj::get_dispatch(::Dynamic this1){
            	HX_STACKFRAME(&_hx_pos_69abc00f883f2355_44_get_dispatch)
HXDLIN(  44)		return  ::Dynamic(this1->__Field(HX_("dispatch",ba,ce,63,1e),hx::paccDynamic));
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(FlxTypedSignal_Impl__obj,get_dispatch,return )

 ::flixel::util::_FlxSignal::FlxSignal0 FlxTypedSignal_Impl__obj::toSignal0(::Dynamic signal){
            	HX_GC_STACKFRAME(&_hx_pos_69abc00f883f2355_50_toSignal0)
HXDLIN(  50)		return  ::flixel::util::_FlxSignal::FlxSignal0_obj::__alloc( HX_CTX );
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(FlxTypedSignal_Impl__obj,toSignal0,return )

 ::flixel::util::_FlxSignal::FlxSignal1 FlxTypedSignal_Impl__obj::toSignal1(::Dynamic signal){
            	HX_GC_STACKFRAME(&_hx_pos_69abc00f883f2355_56_toSignal1)
HXDLIN(  56)		return  ::flixel::util::_FlxSignal::FlxSignal1_obj::__alloc( HX_CTX );
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(FlxTypedSignal_Impl__obj,toSignal1,return )

 ::flixel::util::_FlxSignal::FlxSignal2 FlxTypedSignal_Impl__obj::toSignal2(::Dynamic signal){
            	HX_GC_STACKFRAME(&_hx_pos_69abc00f883f2355_62_toSignal2)
HXDLIN(  62)		return  ::flixel::util::_FlxSignal::FlxSignal2_obj::__alloc( HX_CTX );
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(FlxTypedSignal_Impl__obj,toSignal2,return )

 ::flixel::util::_FlxSignal::FlxSignal3 FlxTypedSignal_Impl__obj::toSignal3(::Dynamic signal){
            	HX_GC_STACKFRAME(&_hx_pos_69abc00f883f2355_68_toSignal3)
HXDLIN(  68)		return  ::flixel::util::_FlxSignal::FlxSignal3_obj::__alloc( HX_CTX );
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(FlxTypedSignal_Impl__obj,toSignal3,return )

 ::flixel::util::_FlxSignal::FlxSignal4 FlxTypedSignal_Impl__obj::toSignal4(::Dynamic signal){
            	HX_GC_STACKFRAME(&_hx_pos_69abc00f883f2355_74_toSignal4)
HXDLIN(  74)		return  ::flixel::util::_FlxSignal::FlxSignal4_obj::__alloc( HX_CTX );
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(FlxTypedSignal_Impl__obj,toSignal4,return )


FlxTypedSignal_Impl__obj::FlxTypedSignal_Impl__obj()
{
}

bool FlxTypedSignal_Impl__obj::__GetStatic(const ::String &inName, Dynamic &outValue, hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 3:
		if (HX_FIELD_EQ(inName,"add") ) { outValue = add_dyn(); return true; }
		if (HX_FIELD_EQ(inName,"has") ) { outValue = has_dyn(); return true; }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"remove") ) { outValue = remove_dyn(); return true; }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"addOnce") ) { outValue = addOnce_dyn(); return true; }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"removeAll") ) { outValue = removeAll_dyn(); return true; }
		if (HX_FIELD_EQ(inName,"toSignal0") ) { outValue = toSignal0_dyn(); return true; }
		if (HX_FIELD_EQ(inName,"toSignal1") ) { outValue = toSignal1_dyn(); return true; }
		if (HX_FIELD_EQ(inName,"toSignal2") ) { outValue = toSignal2_dyn(); return true; }
		if (HX_FIELD_EQ(inName,"toSignal3") ) { outValue = toSignal3_dyn(); return true; }
		if (HX_FIELD_EQ(inName,"toSignal4") ) { outValue = toSignal4_dyn(); return true; }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"get_dispatch") ) { outValue = get_dispatch_dyn(); return true; }
	}
	return false;
}

#ifdef HXCPP_SCRIPTABLE
static hx::StorageInfo *FlxTypedSignal_Impl__obj_sMemberStorageInfo = 0;
static hx::StaticInfo *FlxTypedSignal_Impl__obj_sStaticStorageInfo = 0;
#endif

hx::Class FlxTypedSignal_Impl__obj::__mClass;

static ::String FlxTypedSignal_Impl__obj_sStaticFields[] = {
	HX_("add",21,f2,49,00),
	HX_("addOnce",42,c0,ef,85),
	HX_("remove",44,9c,88,04),
	HX_("has",5a,3f,4f,00),
	HX_("removeAll",3d,17,e5,ca),
	HX_("get_dispatch",c3,82,7d,d3),
	HX_("toSignal0",8d,a4,76,70),
	HX_("toSignal1",8e,a4,76,70),
	HX_("toSignal2",8f,a4,76,70),
	HX_("toSignal3",90,a4,76,70),
	HX_("toSignal4",91,a4,76,70),
	::String(null())
};

void FlxTypedSignal_Impl__obj::__register()
{
	FlxTypedSignal_Impl__obj _hx_dummy;
	FlxTypedSignal_Impl__obj::_hx_vtable = *(void **)&_hx_dummy;
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_("flixel.util._FlxSignal.FlxTypedSignal_Impl_",f9,f1,06,80);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &FlxTypedSignal_Impl__obj::__GetStatic;
	__mClass->mSetStaticField = &hx::Class_obj::SetNoStaticField;
	__mClass->mStatics = hx::Class_obj::dupFunctions(FlxTypedSignal_Impl__obj_sStaticFields);
	__mClass->mMembers = hx::Class_obj::dupFunctions(0 /* sMemberFields */);
	__mClass->mCanCast = hx::TCanCast< FlxTypedSignal_Impl__obj >;
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = FlxTypedSignal_Impl__obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = FlxTypedSignal_Impl__obj_sStaticStorageInfo;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace flixel
} // end namespace util
} // end namespace _FlxSignal
