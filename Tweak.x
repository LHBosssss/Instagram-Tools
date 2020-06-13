#include <RemoteLog.h>

%group DisableStorySeenRecept
	@interface IGStoryFullscreenSectionController
		- (void)_markItemAsSeen;
	@end
	%hook IGStoryFullscreenSectionController
		- (void)_markItemAsSeen {
			// %orig;
			RLog(@"markseen");
		}
	%end
%end

%ctor {
	dlopen([[[NSBundle mainBundle].bundlePath stringByAppendingPathComponent:@"Frameworks/InstagramAppCoreFramework.framework/InstagramAppCoreFramework"] UTF8String], RTLD_NOW);
	%init(DisableStorySeenRecept);
}
