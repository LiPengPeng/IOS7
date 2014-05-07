//
//  Observer.m
//  IOS7
//
//  Created by MAC on 14-3-5.
//  Copyright (c) 2014年 MIchael.li. All rights reserved.
//

#import "Observer.h"
#import <objc/runtime.h>
#import "Target.h"


@implementation Observer

- (void) observeValueForKeyPath:(NSString *)keyPath
					   ofObject:(id)object
						 change:(NSDictionary *)change
						context:(void *)context
{
    if ([keyPath isEqualToString:@"age"])
    {
        Class classInfo = (__bridge Class) context;
        
        NSString *className = [NSString stringWithCString:object_getClassName(classInfo) encoding:NSUTF8StringEncoding];
  
        NSLog(@">> class: %@, Age changed",className);
        NSLog(@"old age is %@",[change objectForKey:@"old"]);
        NSLog(@"new age is %@",[change objectForKey:@"new"]);
    }
    else
    {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}
@end
