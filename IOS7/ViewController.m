//
//  ViewController.m
//  IOS7
//
//  Created by MAC on 14-3-4.
//  Copyright (c) 2014年 MIchael.li. All rights reserved.
//

#import "ViewController.h"
#import "AControllerViewController.h"
#import "Target.h"
#import "Observer.h"

@interface ViewController ()
{
    Target *target;
    UILabel *label;
    NSThread *A;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    UIView *myview = [[UIView alloc] init];
//   
//     myview.backgroundColor = [UIColor whiteColor];
//    
//     UIView *redView = [[UIView alloc] init];
//   
//     redView.backgroundColor = [UIColor redColor];
//    
//      UIView *blueView = [[UIView alloc] init];
//    
//      blueView.backgroundColor = [UIColor grayColor];
//      [myview addSubview:redView];
//        [myview addSubview:blueView];
//    
//    [myview setTranslatesAutoresizingMaskIntoConstraints:NO];
//    [redView setTranslatesAutoresizingMaskIntoConstraints:NO];
//    [blueView setTranslatesAutoresizingMaskIntoConstraints:NO];
//    
//    NSMutableArray *tmpConstraints = [NSMutableArray array];
//    
////    [tmpConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"|-50-[redView(==100)]-30-[blueView(100)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(redView,blueView)]];
//    [tmpConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[redView(==30)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(redView)]];
//    
//    [tmpConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"|-50-[redView(==100)]-30-[blueView(==100)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(redView,blueView)]];
//    
////    [tmpConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[redView(==30)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(redView)]];
//
//
//    
////    [tmpConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-(blueView(==redView)" options:0 metrics:nil views:NSDictionaryOfVariableBindings(blueView,redView)]];
//
////    [tmpConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[blueView(==redView)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(blueView,redView)]];
//    [myview addConstraints:tmpConstraints];
//    
//    self.view = myview;
//   
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"aaaa" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(button) forControlEvents:UIControlEventTouchUpInside];
//    
    button.frame = CGRectMake(50, 50, 200, 100);
     self.navigationItem.title =@"AAAAA";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:button];
    
    
    NSDateFormatter *formatter_minDate = [[NSDateFormatter alloc] init];
    [formatter_minDate setDateFormat:@"YYYY-MM-DD"];
    NSDate *minDate = [formatter_minDate dateFromString:@"2004-01-01"];
    formatter_minDate = nil;
    
//     NSDate *maxDate = [NSDate date];
    
    // 初始化UIDatePicker
    UIDatePicker *datePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 200, 320, 216)];
    // 设置时区
    [datePicker setTimeZone:[NSTimeZone timeZoneWithName:@"GMT"]];
    // 设置当前显示时间
    [datePicker setDate:minDate animated:YES];
    // 设置显示最大时间（此处为当前时间）
    [datePicker setMaximumDate:[NSDate date]];
    // 设置UIDatePicker的显示模式
    [datePicker setDatePickerMode:UIDatePickerModeDate];
    // 当值发生改变的时候调用的方法
    [datePicker addTarget:self action:@selector(dataValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:datePicker];
//    [datePicker release];
    
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_cn"];
    datePicker.locale = locale;
    
    // 获得当前UIPickerDate所在的时间
    NSDate *selected = [datePicker date];
//
//    Observer *observer = [[Observer alloc]init];
//    
//    target = [[Target alloc]init];
//    
//    [target setValue:@"20" forKey:@"age"];
//    [target addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:NULL];
////    [target setAge:30];
//    
////    [target removeObserver:observer forKeyPath:@"age"];
//    
//    label = [[UILabel alloc]initWithFrame:CGRectMake(100, 110, 110, 50)];
//    label.text = [NSString stringWithFormat:@"%@",[target valueForKey:@"age"]];
//    label.textColor = [UIColor redColor];
//    [self.view addSubview:label];
    
//    
//    tickets = 90;
//    count = 0;
//    theLock = [[NSLock alloc]init];
    
//    ticketsCondition = [[NSCondition alloc]init];
//    ticketsThreadOne = [[NSThread alloc]initWithTarget:self selector:@selector(run) object:nil];
//    [ticketsThreadOne setName:@"Thread-1"];
//    [ticketsThreadOne start];
//    
//    ticketsThreadTwo = [[NSThread alloc]initWithTarget:self selector:@selector(run) object:nil];
//    [ticketsThreadTwo setName:@"Thread-2"];
//    [ticketsThreadTwo start];
//    
//    ticketsThreadThree = [[NSThread alloc]initWithTarget:self selector:@selector(run3) object:nil];
//    [ticketsThreadThree setName:@"Thread-3"];
//    [ticketsThreadThree start];
    
    
//   A = [[NSThread alloc]initWithTarget:self selector:@selector(runA) object:nil];
//    [A start];
//
    
    
//    	UIView *myview = [[UIView alloc] init];
//    
//    	myview.backgroundColor = [UIColor greenColor];
//    
//    	UIView *redView = [[UIView alloc] init];
//    
//    	redView.backgroundColor = [UIColor redColor];
//    
//    	UIView *blueView = [[UIView alloc] init];
//    
//    	blueView.backgroundColor = [UIColor blueColor];
//    
//    	[myview addSubview:redView];
//    
//    	[myview addSubview:blueView];
//    
//    	[myview setTranslatesAutoresizingMaskIntoConstraints:NO];
//    
//    	[redView setTranslatesAutoresizingMaskIntoConstraints:NO];
//    
//    	[blueView setTranslatesAutoresizingMaskIntoConstraints:NO];
//    
//    	NSMutableArray *tmpConstraints = [NSMutableArray array];
//    
//    	[tmpConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"|-10-[redView(==100)]-30-[blueView(==100)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(redView,blueView)]];
//    
//    	[tmpConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[redView(==30)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(redView)]];
//    
//    	[tmpConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[blueView(==redView)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(blueView,redView)]];
//    
//    	[myview addConstraints:tmpConstraints];
//    
//    	self.view = myview;
    
       
//    CUITextview *text = [[CUITextview alloc]initWithFrame:CGRectMake(0, 0, 320, 200)];
//    text.textColor = [UIColor blueColor];
//    
//    [self.view addSubview:text];
}

//- (void) runA
//{
//    [NSThread detachNewThreadSelector:@selector(runB) toTarget:self withObject:nil];
//    
//    while (1)
//    {
//        if ([[NSRunLoop currentRunLoop]runMode:@"customRunLoopMode" beforeDate:[NSDate distantFuture]])
//        {
//            NSLog(@"现成B结束");
//            break;
//        }
//    }
//}
//
//- (void)runB
//{
//    sleep(1);
//    
//    [self performSelector:@selector(setData) onThread:A withObject:nil waitUntilDone:YES modes:@[@"customRunLoopMode"]];
//}
//
//- (void) run3
//{
//    while (YES)
//    {
//        [ticketsCondition lock];
//        [NSThread sleepForTimeInterval:3];
//        
//        NSLog(@"等待");
//        [ticketsCondition signal];
//        [ticketsCondition unlock];
//    }
//}
//
//- (void) run
//{
//    while (true)
//    {
//        [ticketsCondition lock];
//        [ticketsCondition wait];
//        
//        [theLock lock];
//        
//        if (tickets >= 0)
//        {
////            [NSThread sleepForTimeInterval:0.09];
//            count = 100 - tickets;
//            
//            NSLog(@"当前票数是:%d,售出：%d,线程名:%@",tickets,count,[[NSThread currentThread]name]);
//            
//            tickets --;
//        }
//        else
//        {
//            break;
//        }
//        
//        [theLock unlock];
//        [ticketsCondition unlock];
//    }
//}
//
//
//- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
//{
//    if ([keyPath isEqualToString:@"age"])
//    {
//        label.text = [target valueForKey:@"age"];
//    }
//}

- (void) dataValueChanged:(UIDatePicker *)sender
{
    UIDatePicker *dataPicker_one = (UIDatePicker *)sender;
    NSDate *date_one = dataPicker_one.date;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSString *text = [formatter stringFromDate:date_one];
    formatter = nil;
    
    UIAlertView *aler = [[UIAlertView alloc]initWithTitle:@"" message:text delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [aler show];

}
- (void) button
{
    AControllerViewController *controller = [[AControllerViewController alloc]init];
//    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    [self.navigationController pushViewController:controller animated:YES];
    ///我擦
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
