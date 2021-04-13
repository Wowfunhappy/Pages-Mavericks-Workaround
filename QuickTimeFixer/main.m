#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "ZKSwizzle.h"



@interface mySLScrollView : NSView
- (void)_engageAutolayout;
@end



@implementation mySLScrollView

- (void)awakeFromNib {
    ZKOrig(void);
    [self performSelector:@selector(_engageAutolayout) withObject:nil afterDelay:0.25];
}

@end



@implementation NSObject (main)

+ (void)load {
    ZKSwizzle(mySLScrollView, SLScrollView);
}

@end
