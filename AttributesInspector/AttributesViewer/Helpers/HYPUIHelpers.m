//  Copyright (c) 2017 WillowTree, Inc.

//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:

//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.

//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "HYPUIHelpers.h"

@implementation HYPUIHelpers

+(NSString *)rgbTextForColor:(UIColor *)color
{
    CGFloat red = 0;
    CGFloat green = 0;
    CGFloat blue = 0;
    CGFloat alpha = 0;

    if ([color getRed:&red green:&green blue:&blue alpha:&alpha])
    {

        return  [NSString stringWithFormat:@"%.0f %.0f %.0f %.1f", round(red * 255), round(green * 255), round(blue * 255), alpha];
    }

    return nil;
}

+(NSString * _Nullable)hexTextForColor:(UIColor * _Nullable )color
{
    if (color == nil)
    {
        return nil;
    }
    CGColorRef refColor = color.CGColor;
    return [HYPUIHelpers hexTextForCGColor:refColor];
}

+(NSString * _Nullable)hexTextForCGColor:(CGColorRef _Nullable)color {
    if (color == nil) {
        return nil;
    }

    const CGFloat *components = CGColorGetComponents(color);
    CGFloat r = components[0];
    CGFloat g = components[1];
    CGFloat b = components[2];
    CGFloat a = components[3];

    return [NSString stringWithFormat:@"0x%02lX%02lX%02lX %.1f", lround(r * 255), lround(g * 255), lround(b * 255), a];
}

@end
