//
//  UIView+Frame.m
//  Pods
//
//  Created by 张宏伟 on 2017/3/25.
//
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

-(void)setCenterX:(CGFloat)centerX {
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

-(CGFloat)centerX {
    return self.center.x;
}

-(void)setCenterY:(CGFloat)centerY {
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

-(CGFloat)centerY {
    return self.center.y;
}


-(CGFloat)x{
    return self.frame.origin.x;
}

-(void)setX:(CGFloat)x {
    CGRect temp = self.frame;
    temp.origin.x = x;
    self.frame = temp;
}

-(CGFloat)y{
    return self.frame.origin.y;
}

-(void)setY:(CGFloat)y {
    CGRect temp = self.frame;
    temp.origin.y = y;
    self.frame = temp;
}

-(CGFloat)width{
    return self.frame.size.width;
}

-(void)setWidth:(CGFloat)width {
    CGRect temp = self.frame;
    temp.size.width = width;
    self.frame = temp;
}


-(CGFloat)height{
    return self.frame.size.height;
}

-(void)setHeight:(CGFloat)height {
    CGRect temp = self.frame;
    temp.size.height = height;
    self.frame = temp;
}

- (void)setTop:(CGFloat)top{
    CGRect temp = self.frame;
    temp.origin.y = top;
    self.frame = temp;
}

- (CGFloat)top{
    return self.frame.origin.y;
}

- (void)setLeft:(CGFloat)left{
    CGRect temp = self.frame;
    temp.origin.x = left;
    self.frame = temp;
}

- (CGFloat)left{
    return self.frame.origin.x;
}

- (void)setBottom:(CGFloat)bottom{
    CGRect temp = self.frame;
    temp.origin.y = bottom - temp.size.height;
    self.frame = temp;
}

- (CGFloat)bottom{
    return self.top + self.width;
}

- (void)setRight:(CGFloat)right{
   CGRect temp = self.frame;
    temp.origin.x = right - temp.size.width;
    self.frame = temp;
}

- (CGFloat)right{
    return self.left + self.width;
}
@end
