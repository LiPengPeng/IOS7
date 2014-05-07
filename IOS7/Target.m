
//
//  Target.m
//  IOS7
//
//  Created by MAC on 14-3-5.
//  Copyright (c) 2014年 MIchael.li. All rights reserved.
//

#import "Target.h"

@implementation Target


- (id) init
{
    self = [super init];
    
    if (nil != self)
    {
        age = 10;
    }
    
    return self;
}

- (int)age
{
    return age;
}

//- (void)setAge:(int)theAge
//{
//    [self willChangeValueForKey:@"age"];
//    age = theAge;
//
//    [self didChangeValueForKey:@"age"];
//}

//+ (BOOL) automaticallyNotifiesObserversForKey:(NSString *)key
//{
//    if ([key isEqualToString:@"age"])
//    {
//        return NO;
//    }
//    return [super automaticallyNotifiesObserversForKey:key];
//}
@end
