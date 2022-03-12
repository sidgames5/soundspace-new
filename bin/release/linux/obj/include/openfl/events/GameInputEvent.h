// Generated by Haxe 4.0.5
#ifndef INCLUDED_openfl_events_GameInputEvent
#define INCLUDED_openfl_events_GameInputEvent

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#ifndef INCLUDED_openfl_events_Event
#include <openfl/events/Event.h>
#endif
HX_DECLARE_CLASS2(openfl,events,Event)
HX_DECLARE_CLASS2(openfl,events,GameInputEvent)
HX_DECLARE_CLASS2(openfl,ui,GameInputDevice)

namespace openfl{
namespace events{


class HXCPP_CLASS_ATTRIBUTES GameInputEvent_obj : public  ::openfl::events::Event_obj
{
	public:
		typedef  ::openfl::events::Event_obj super;
		typedef GameInputEvent_obj OBJ_;
		GameInputEvent_obj();

	public:
		enum { _hx_ClassId = 0x1db74753 };

		void __construct(::String type,hx::Null< bool >  __o_bubbles,hx::Null< bool >  __o_cancelable, ::openfl::ui::GameInputDevice device);
		inline void *operator new(size_t inSize, bool inContainer=true,const char *inName="openfl.events.GameInputEvent")
			{ return hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return hx::Object::operator new(inSize+extra,true,"openfl.events.GameInputEvent"); }
		static hx::ObjectPtr< GameInputEvent_obj > __new(::String type,hx::Null< bool >  __o_bubbles,hx::Null< bool >  __o_cancelable, ::openfl::ui::GameInputDevice device);
		static hx::ObjectPtr< GameInputEvent_obj > __alloc(hx::Ctx *_hx_ctx,::String type,hx::Null< bool >  __o_bubbles,hx::Null< bool >  __o_cancelable, ::openfl::ui::GameInputDevice device);
		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		//~GameInputEvent_obj();

		HX_DO_RTTI_ALL;
		hx::Val __Field(const ::String &inString, hx::PropertyAccess inCallProp);
		hx::Val __SetField(const ::String &inString,const hx::Val &inValue, hx::PropertyAccess inCallProp);
		void __GetFields(Array< ::String> &outFields);
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_("GameInputEvent",62,3e,f4,2c); }

		static void __boot();
		static ::String DEVICE_ADDED;
		static ::String DEVICE_REMOVED;
		static ::String DEVICE_UNUSABLE;
		 ::openfl::ui::GameInputDevice device;
		 ::openfl::events::Event clone();

		virtual ::String toString();

		void _hx___init();

};

} // end namespace openfl
} // end namespace events

#endif /* INCLUDED_openfl_events_GameInputEvent */ 
