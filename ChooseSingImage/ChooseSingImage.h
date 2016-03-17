//
//  ChooseSingImage.h
//  Meirong
//
//  Created by gitBurning on 15/8/30.
//  Copyright (c) 2015年 BR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ChooseSingImage : UIView

@property(copy,nonatomic) void(^chooseImageBlock)(UIImage*image);

+(instancetype)shareChooseImage;
/**
 *  显示 图片选择器
 *
 *  @param vc <#vc description#>
 */
-(void)showPhotoWithVC:(UIViewController*)vc;
@end
