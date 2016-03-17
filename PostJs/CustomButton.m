//
//  CustomButton.m
//  PostJs
//
//  Created by gitBurning on 15/5/6.
//  Copyright (c) 2015年 BR. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton
-(instancetype)init{
    if (self==[super init]) {
        
        NSLog(@"%@",NSStringFromClass([self class]));
    }
    return self;
}
//-(void)sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event{
//    
//    NSLog(@"%@--%@",NSStringFromSelector(action),[target class]);
//}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
