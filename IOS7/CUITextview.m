//
//  CUITextview.m
//  IOS7
//
//  Created by MAC on 14-3-16.
//  Copyright (c) 2014年 MIchael.li. All rights reserved.
//

#import "CUITextview.h"
#import <CoreText/CoreText.h>
@implementation CUITextview

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
*/

- (void)layoutSubviews
{

//    self.textContainer
    
//    self.textContainerInset
//    self.attributedText
    
//    self.sty
}

- (void)drawRect:(CGRect)rect forViewPrintFormatter:(UIViewPrintFormatter *)formatter
{
    
}



- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]initWithString:self.text];
    
    
    CTParagraphStyleSetting lineSpacing;
    CGFloat spacing = 10.0;
    lineSpacing.spec = kCTParagraphStyleSpecifierLineSpacingAdjustment;
    lineSpacing.value = &spacing;
    lineSpacing.valueSize = sizeof(CGFloat);
    
    CTParagraphStyleSetting settings[] = {lineSpacing};
    CTParagraphStyleRef paragraphStyle = CTParagraphStyleCreate(settings, 2);
    
    [attributedString addAttribute:(NSString *)kCTParagraphStyleAttributeName
                             value:(__bridge id)paragraphStyle
                             range:NSMakeRange(0, attributedString.length)];
    CGContextConcatCTM(context, CGAffineTransformScale(CGAffineTransformMakeTranslation(0, rect.size.height), 1.f, -1.f));
    
    CTFramesetterRef framesetter = CTFramesetterCreateWithAttributedString((CFAttributedStringRef)attributedString);
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, rect);
    
    CTFrameRef frame = CTFramesetterCreateFrame(framesetter, CFRangeMake(0, 0), path, NULL);
    CFRelease(framesetter);
    CFRelease(path);
    CTFrameDraw(frame, context);
    CFRelease(frame);
    
    [super drawRect:rect];
//    CGContextSetLineWidth(context, 1.0f);
//    
//        CGContextBeginPath(context);
//        CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
//        
//        // Create un-mutated floats outside of the for loop.
//        // Reduces memory access.
//        CGFloat baseOffset = 7.0f + self.font.descender;
//        CGFloat screenScale = [UIScreen mainScreen].scale;
//        CGFloat boundsX = self.bounds.origin.x;
//        CGFloat boundsWidth = self.bounds.size.width;
//        
//        // Only draw lines that are visible on the screen.
//        // (As opposed to throughout the entire view's contents)
//        NSInteger firstVisibleLine = MAX(1, (self.contentOffset.y / self.font.lineHeight));
//        NSInteger lastVisibleLine = ceilf((self.contentOffset.y + self.bounds.size.height) / self.font.lineHeight);
//        for (NSInteger line = firstVisibleLine; line <= lastVisibleLine; ++line)
//        {
//            CGFloat linePointY = (baseOffset + (self.font.lineHeight * line));
//            // Rounding the point to the nearest pixel.
//            // Greatly reduces drawing time.
//            CGFloat roundedLinePointY = roundf(linePointY * screenScale) / screenScale;
//            CGContextMoveToPoint(context, boundsX, roundedLinePointY);
//            CGContextAddLineToPoint(context, boundsWidth, roundedLinePointY);
//        }
//    
//    
//        CGContextClosePath(context);
//        CGContextStrokePath(context);
//
}

@end
