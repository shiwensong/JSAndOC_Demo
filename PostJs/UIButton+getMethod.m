//
//  UIButton+getMethod.m
//  PostJs
//
//  Created by gitBurning on 15/5/6.
//  Copyright (c) 2015年 BR. All rights reserved.
//

#import "UIButton+getMethod.h"

@implementation UIButton (getMethod)
-(void)sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event{
    
    NSLog(@"%@--%@",NSStringFromSelector(action),[target class]);

}
@end
