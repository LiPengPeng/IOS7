//
//  ViewController.h
//  IOS7
//
//  Created by MAC on 14-3-4.
//  Copyright (c) 2014年 MIchael.li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CUITextview.h"

@interface ViewController : UIViewController
{
    int tickets;
    int count;
    NSThread *ticketsThreadOne;
    NSThread *ticketsThreadTwo;
    NSThread *ticketsThreadThree;
    NSCondition *ticketsCondition;
    NSLock *theLock;
}
@end
