//
//  UITextField+Wrong.h
//  PostJs
//
//  Created by gitBurning on 15/5/8.
//  Copyright (c) 2015年 BR. All rights reserved.
//

#import <UIKit/UIKit.h>

static char blockKey = 'b';
static char isRemoberKey = 'w';
static char beforeImageKey ='m';
static char leftSelectImageKey ='s';

typedef void(^leftImageSelectdBlock)(UITextField* textFeild,id other);
@interface UITextField (Wrong)
/**
 *  显示错误动画
 *
 *  @param image <#image description#>
 */
-(void)showWrongAnnamtionWithImage:(UIImage*)image;


/**
 *  设置textFeild 图片
 *
 *  @param isLeft       如果 是 no 的时候，并且需要 给 右边增加点击事件，请 给 selected 赋值
 *  @param defalutImage <#defalutImage description#>
 *  @param selecte      <#selecte description#>
 */
-(void)setImageWithIsLeft:(BOOL)isLeft withDefalutImage:(UIImage*)defalutImage withSelectdImage:(UIImage*)selected;

/**
 *  是否显示密码
 */
@property(assign,nonatomic) BOOL isShowPassword;
/**
 *  密码的点击事件
 */
@property(assign,nonatomic) leftImageSelectdBlock leftImageSelectd;


/**
 *  当前图片
 */
@property(strong,nonatomic) UIImage * beforeImage;

/**
 *  点中图片
 */
@property(strong,nonatomic) UIImage * selectedImage;


@end
