#line 1 "Tweak.x"
#include <RemoteLog.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class IGStoryFullscreenSectionController; @class IGDirectRealtimeIrisDeltaApplicator; 


#line 3 "Tweak.x"
static void (*_logos_orig$DisableStorySeenRecept$IGStoryFullscreenSectionController$_markItemAsSeen)(_LOGOS_SELF_TYPE_NORMAL IGStoryFullscreenSectionController* _LOGOS_SELF_CONST, SEL); static void _logos_method$DisableStorySeenRecept$IGStoryFullscreenSectionController$_markItemAsSeen(_LOGOS_SELF_TYPE_NORMAL IGStoryFullscreenSectionController* _LOGOS_SELF_CONST, SEL); 
	@interface IGStoryFullscreenSectionController
		- (void)_markItemAsSeen;
	@end
	
		static void _logos_method$DisableStorySeenRecept$IGStoryFullscreenSectionController$_markItemAsSeen(_LOGOS_SELF_TYPE_NORMAL IGStoryFullscreenSectionController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
			
			RLog(@"markseen");
		}
	


static void (*_logos_orig$DisableMessageSeenRecept$IGDirectRealtimeIrisDeltaApplicator$_handleMarkSeenMutationForThreadId$messageId$userId$timestamp$)(_LOGOS_SELF_TYPE_NORMAL IGDirectRealtimeIrisDeltaApplicator* _LOGOS_SELF_CONST, SEL, id, id, id, id); static void _logos_method$DisableMessageSeenRecept$IGDirectRealtimeIrisDeltaApplicator$_handleMarkSeenMutationForThreadId$messageId$userId$timestamp$(_LOGOS_SELF_TYPE_NORMAL IGDirectRealtimeIrisDeltaApplicator* _LOGOS_SELF_CONST, SEL, id, id, id, id); 
	@interface IGDirectRealtimeIrisDeltaApplicator
		- (void)_handleMarkSeenMutationForThreadId:(id)arg1 messageId:(id)arg2 userId:(id)arg3 timestamp:(id)arg4;
	@end
	
		static void _logos_method$DisableMessageSeenRecept$IGDirectRealtimeIrisDeltaApplicator$_handleMarkSeenMutationForThreadId$messageId$userId$timestamp$(_LOGOS_SELF_TYPE_NORMAL IGDirectRealtimeIrisDeltaApplicator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, id arg4) {
			RLog(@"arg1 = %@", arg1);
			RLog(@"arg1 = %@", arg2);
			RLog(@"arg1 = %@", arg3);
			_logos_orig$DisableMessageSeenRecept$IGDirectRealtimeIrisDeltaApplicator$_handleMarkSeenMutationForThreadId$messageId$userId$timestamp$(self, _cmd, arg1, arg2, arg3, arg4);
		}
	


static __attribute__((constructor)) void _logosLocalCtor_533cf254(int __unused argc, char __unused **argv, char __unused **envp) {
	dlopen([[[NSBundle mainBundle].bundlePath stringByAppendingPathComponent:@"Frameworks/InstagramAppCoreFramework.framework/InstagramAppCoreFramework"] UTF8String], RTLD_NOW);
	{Class _logos_class$DisableStorySeenRecept$IGStoryFullscreenSectionController = objc_getClass("IGStoryFullscreenSectionController"); MSHookMessageEx(_logos_class$DisableStorySeenRecept$IGStoryFullscreenSectionController, @selector(_markItemAsSeen), (IMP)&_logos_method$DisableStorySeenRecept$IGStoryFullscreenSectionController$_markItemAsSeen, (IMP*)&_logos_orig$DisableStorySeenRecept$IGStoryFullscreenSectionController$_markItemAsSeen);}
	{Class _logos_class$DisableMessageSeenRecept$IGDirectRealtimeIrisDeltaApplicator = objc_getClass("IGDirectRealtimeIrisDeltaApplicator"); MSHookMessageEx(_logos_class$DisableMessageSeenRecept$IGDirectRealtimeIrisDeltaApplicator, @selector(_handleMarkSeenMutationForThreadId:messageId:userId:timestamp:), (IMP)&_logos_method$DisableMessageSeenRecept$IGDirectRealtimeIrisDeltaApplicator$_handleMarkSeenMutationForThreadId$messageId$userId$timestamp$, (IMP*)&_logos_orig$DisableMessageSeenRecept$IGDirectRealtimeIrisDeltaApplicator$_handleMarkSeenMutationForThreadId$messageId$userId$timestamp$);}
}
