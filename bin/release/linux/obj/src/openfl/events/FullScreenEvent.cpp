// Generated by Haxe 4.0.5
#include <hxcpp.h>

#ifndef INCLUDED_openfl_events_ActivityEvent
#include <openfl/events/ActivityEvent.h>
#endif
#ifndef INCLUDED_openfl_events_Event
#include <openfl/events/Event.h>
#endif
#ifndef INCLUDED_openfl_events_FullScreenEvent
#include <openfl/events/FullScreenEvent.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_9acd580c71eb88b0_85_new,"openfl.events.FullScreenEvent","new",0x08c8725a,"openfl.events.FullScreenEvent.new","openfl/events/FullScreenEvent.hx",85,0x5d391076)
HX_LOCAL_STACK_FRAME(_hx_pos_9acd580c71eb88b0_95_clone,"openfl.events.FullScreenEvent","clone",0xd0bfa7d7,"openfl.events.FullScreenEvent.clone","openfl/events/FullScreenEvent.hx",95,0x5d391076)
HX_LOCAL_STACK_FRAME(_hx_pos_9acd580c71eb88b0_105_toString,"openfl.events.FullScreenEvent","toString",0x75cac472,"openfl.events.FullScreenEvent.toString","openfl/events/FullScreenEvent.hx",105,0x5d391076)
static const ::String _hx_array_data_551dfd68_3[] = {
	HX_("type",ba,f2,08,4d),HX_("bubbles",67,bb,56,61),HX_("cancelable",14,a0,79,c4),HX_("fullscreen",3b,3a,b4,f9),HX_("interactive",e2,3d,59,3c),
};
HX_LOCAL_STACK_FRAME(_hx_pos_9acd580c71eb88b0_109___init,"openfl.events.FullScreenEvent","__init",0xbd58f476,"openfl.events.FullScreenEvent.__init","openfl/events/FullScreenEvent.hx",109,0x5d391076)
HX_LOCAL_STACK_FRAME(_hx_pos_9acd580c71eb88b0_31_boot,"openfl.events.FullScreenEvent","boot",0x9eb49cf8,"openfl.events.FullScreenEvent.boot","openfl/events/FullScreenEvent.hx",31,0x5d391076)
HX_LOCAL_STACK_FRAME(_hx_pos_9acd580c71eb88b0_47_boot,"openfl.events.FullScreenEvent","boot",0x9eb49cf8,"openfl.events.FullScreenEvent.boot","openfl/events/FullScreenEvent.hx",47,0x5d391076)
namespace openfl{
namespace events{

void FullScreenEvent_obj::__construct(::String type,hx::Null< bool >  __o_bubbles,hx::Null< bool >  __o_cancelable,hx::Null< bool >  __o_fullScreen,hx::Null< bool >  __o_interactive){
            		bool bubbles = __o_bubbles.Default(false);
            		bool cancelable = __o_cancelable.Default(false);
            		bool fullScreen = __o_fullScreen.Default(false);
            		bool interactive = __o_interactive.Default(false);
            	HX_STACKFRAME(&_hx_pos_9acd580c71eb88b0_85_new)
HXLINE(  88)		super::__construct(type,bubbles,cancelable,null());
HXLINE(  90)		this->fullScreen = fullScreen;
HXLINE(  91)		this->interactive = interactive;
            	}

Dynamic FullScreenEvent_obj::__CreateEmpty() { return new FullScreenEvent_obj; }

void *FullScreenEvent_obj::_hx_vtable = 0;

Dynamic FullScreenEvent_obj::__Create(hx::DynamicArray inArgs)
{
	hx::ObjectPtr< FullScreenEvent_obj > _hx_result = new FullScreenEvent_obj();
	_hx_result->__construct(inArgs[0],inArgs[1],inArgs[2],inArgs[3],inArgs[4]);
	return _hx_result;
}

bool FullScreenEvent_obj::_hx_isInstanceOf(int inClassId) {
	if (inClassId<=(int)0x39a2f9a2) {
		if (inClassId<=(int)0x3243040d) {
			return inClassId==(int)0x00000001 || inClassId==(int)0x3243040d;
		} else {
			return inClassId==(int)0x39a2f9a2;
		}
	} else {
		return inClassId==(int)0x7ebe750e;
	}
}

 ::openfl::events::Event FullScreenEvent_obj::clone(){
            	HX_GC_STACKFRAME(&_hx_pos_9acd580c71eb88b0_95_clone)
HXLINE(  96)		 ::openfl::events::FullScreenEvent event =  ::openfl::events::FullScreenEvent_obj::__alloc( HX_CTX ,this->type,this->bubbles,this->cancelable,this->fullScreen,this->interactive);
HXLINE(  97)		event->target = this->target;
HXLINE(  98)		event->currentTarget = this->currentTarget;
HXLINE(  99)		event->eventPhase = this->eventPhase;
HXLINE( 100)		return event;
            	}


::String FullScreenEvent_obj::toString(){
            	HX_STACKFRAME(&_hx_pos_9acd580c71eb88b0_105_toString)
HXDLIN( 105)		return this->_hx___formatToString(HX_("FullscreenEvent",bf,0f,46,0d),::Array_obj< ::String >::fromData( _hx_array_data_551dfd68_3,5));
            	}


void FullScreenEvent_obj::_hx___init(){
            	HX_STACKFRAME(&_hx_pos_9acd580c71eb88b0_109___init)
HXLINE( 110)		this->super::_hx___init();
HXLINE( 111)		this->fullScreen = false;
HXLINE( 112)		this->interactive = false;
            	}


::String FullScreenEvent_obj::FULL_SCREEN;

::String FullScreenEvent_obj::FULL_SCREEN_INTERACTIVE_ACCEPTED;


hx::ObjectPtr< FullScreenEvent_obj > FullScreenEvent_obj::__new(::String type,hx::Null< bool >  __o_bubbles,hx::Null< bool >  __o_cancelable,hx::Null< bool >  __o_fullScreen,hx::Null< bool >  __o_interactive) {
	hx::ObjectPtr< FullScreenEvent_obj > __this = new FullScreenEvent_obj();
	__this->__construct(type,__o_bubbles,__o_cancelable,__o_fullScreen,__o_interactive);
	return __this;
}

hx::ObjectPtr< FullScreenEvent_obj > FullScreenEvent_obj::__alloc(hx::Ctx *_hx_ctx,::String type,hx::Null< bool >  __o_bubbles,hx::Null< bool >  __o_cancelable,hx::Null< bool >  __o_fullScreen,hx::Null< bool >  __o_interactive) {
	FullScreenEvent_obj *__this = (FullScreenEvent_obj*)(hx::Ctx::alloc(_hx_ctx, sizeof(FullScreenEvent_obj), true, "openfl.events.FullScreenEvent"));
	*(void **)__this = FullScreenEvent_obj::_hx_vtable;
	__this->__construct(type,__o_bubbles,__o_cancelable,__o_fullScreen,__o_interactive);
	return __this;
}

FullScreenEvent_obj::FullScreenEvent_obj()
{
}

hx::Val FullScreenEvent_obj::__Field(const ::String &inName,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 5:
		if (HX_FIELD_EQ(inName,"clone") ) { return hx::Val( clone_dyn() ); }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"__init") ) { return hx::Val( _hx___init_dyn() ); }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"toString") ) { return hx::Val( toString_dyn() ); }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"fullScreen") ) { return hx::Val( fullScreen ); }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"interactive") ) { return hx::Val( interactive ); }
	}
	return super::__Field(inName,inCallProp);
}

hx::Val FullScreenEvent_obj::__SetField(const ::String &inName,const hx::Val &inValue,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 10:
		if (HX_FIELD_EQ(inName,"fullScreen") ) { fullScreen=inValue.Cast< bool >(); return inValue; }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"interactive") ) { interactive=inValue.Cast< bool >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void FullScreenEvent_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_("fullScreen",5b,ae,48,2e));
	outFields->push(HX_("interactive",e2,3d,59,3c));
	super::__GetFields(outFields);
};

#ifdef HXCPP_SCRIPTABLE
static hx::StorageInfo FullScreenEvent_obj_sMemberStorageInfo[] = {
	{hx::fsBool,(int)offsetof(FullScreenEvent_obj,fullScreen),HX_("fullScreen",5b,ae,48,2e)},
	{hx::fsBool,(int)offsetof(FullScreenEvent_obj,interactive),HX_("interactive",e2,3d,59,3c)},
	{ hx::fsUnknown, 0, null()}
};
static hx::StaticInfo FullScreenEvent_obj_sStaticStorageInfo[] = {
	{hx::fsString,(void *) &FullScreenEvent_obj::FULL_SCREEN,HX_("FULL_SCREEN",5c,27,87,18)},
	{hx::fsString,(void *) &FullScreenEvent_obj::FULL_SCREEN_INTERACTIVE_ACCEPTED,HX_("FULL_SCREEN_INTERACTIVE_ACCEPTED",c7,ef,c6,d8)},
	{ hx::fsUnknown, 0, null()}
};
#endif

static ::String FullScreenEvent_obj_sMemberFields[] = {
	HX_("fullScreen",5b,ae,48,2e),
	HX_("interactive",e2,3d,59,3c),
	HX_("clone",5d,13,63,48),
	HX_("toString",ac,d0,6e,38),
	HX_("__init",30,9e,b3,f4),
	::String(null()) };

static void FullScreenEvent_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(FullScreenEvent_obj::FULL_SCREEN,"FULL_SCREEN");
	HX_MARK_MEMBER_NAME(FullScreenEvent_obj::FULL_SCREEN_INTERACTIVE_ACCEPTED,"FULL_SCREEN_INTERACTIVE_ACCEPTED");
};

#ifdef HXCPP_VISIT_ALLOCS
static void FullScreenEvent_obj_sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(FullScreenEvent_obj::FULL_SCREEN,"FULL_SCREEN");
	HX_VISIT_MEMBER_NAME(FullScreenEvent_obj::FULL_SCREEN_INTERACTIVE_ACCEPTED,"FULL_SCREEN_INTERACTIVE_ACCEPTED");
};

#endif

hx::Class FullScreenEvent_obj::__mClass;

static ::String FullScreenEvent_obj_sStaticFields[] = {
	HX_("FULL_SCREEN",5c,27,87,18),
	HX_("FULL_SCREEN_INTERACTIVE_ACCEPTED",c7,ef,c6,d8),
	::String(null())
};

void FullScreenEvent_obj::__register()
{
	FullScreenEvent_obj _hx_dummy;
	FullScreenEvent_obj::_hx_vtable = *(void **)&_hx_dummy;
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_("openfl.events.FullScreenEvent",68,fd,1d,55);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &hx::Class_obj::SetNoStaticField;
	__mClass->mMarkFunc = FullScreenEvent_obj_sMarkStatics;
	__mClass->mStatics = hx::Class_obj::dupFunctions(FullScreenEvent_obj_sStaticFields);
	__mClass->mMembers = hx::Class_obj::dupFunctions(FullScreenEvent_obj_sMemberFields);
	__mClass->mCanCast = hx::TCanCast< FullScreenEvent_obj >;
#ifdef HXCPP_VISIT_ALLOCS
	__mClass->mVisitFunc = FullScreenEvent_obj_sVisitStatics;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = FullScreenEvent_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = FullScreenEvent_obj_sStaticStorageInfo;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

void FullScreenEvent_obj::__boot()
{
{
            	HX_STACKFRAME(&_hx_pos_9acd580c71eb88b0_31_boot)
HXDLIN(  31)		FULL_SCREEN = HX_("fullScreen",5b,ae,48,2e);
            	}
{
            	HX_STACKFRAME(&_hx_pos_9acd580c71eb88b0_47_boot)
HXDLIN(  47)		FULL_SCREEN_INTERACTIVE_ACCEPTED = HX_("fullScreenInteractiveAccepted",ce,77,06,29);
            	}
}

} // end namespace openfl
} // end namespace events
