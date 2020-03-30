//
//  NSTimer+WeakTimer.h
//  Kit
//
//  Created by LTF on 2020/3/30.
//  Copyright © 2020 ltf. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTimer (WeakTimer)

+ (NSTimer *)weakTimerWithTimeInterval:(NSTimeInterval)ti
                                target:(id)aTarget
                              selector:(SEL)aSelector
                              userInfo:(nullable id)userInfo
                               repeats:(BOOL)repeats;

+ (NSTimer *)scheduledWeakTimerWithTimeInterval:(NSTimeInterval)interval
                                         target:(id)aTarget
                                       selector:(SEL)aSelector
                                       userInfo:(nullable id)userInfo
                                        repeats:(BOOL)repeats;

@end

NS_ASSUME_NONNULL_END
