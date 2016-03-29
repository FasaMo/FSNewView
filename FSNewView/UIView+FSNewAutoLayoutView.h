//
//  UITableViewCell+FSNewAutoLayoutView.h
//  SKGShop
//
//  Created by Fasa Mo on 15/6/17.
//  Copyright (c) 2015年 SKG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FSNewAutoLayoutView)
+ (instancetype)fs_newAutoLayoutView;

- (UIView *)fs_newView;
- (UIView *)fs_newViewWithColor:(UIColor *)bgColor;

- (UIImageView *)fs_newImageView;
- (UIImageView *)fs_newImageViewWithColor:(UIColor *)bgColor;
- (UIImageView *)fs_newImageViewWithName:(NSString *)name;

- (UILabel *)fs_newLabelWithFont:(UIFont *)font color:(UIColor *)color;

- (UIButton *)fs_newButtonWithFont:(UIFont *)font color:(UIColor *)color;
- (UIButton *)fs_newButtonWithImage:(NSString *)image selectedImage:(NSString *)selectedImage;
- (UIButton *)fs_newButtonWithTitle:(NSString *)title font:(UIFont *)font color:(UIColor *)color image:(NSString *)image selectedImage:(NSString *)selectedImage;

+ (UIView *)fs_newViewToSuperView:(UIView *)superView;
+ (UIView *)fs_newViewToSuperView:(UIView *)superView color:(UIColor *)bgColor;

+ (UIImageView *)fs_newImageViewToSuperView:(UIView *)superView;
+ (UIImageView *)fs_newImageViewToSuperView:(UIView *)superView color:(UIColor *)bgColor;

+ (UILabel *)fs_newLabelToSuperView:(UIView *)superView font:(UIFont *)font color:(UIColor *)color;
+ (UIButton *)fs_newButtonToSuperView:(UIView *)superView font:(UIFont *)font color:(UIColor *)color;

- (UITextField *)fs_newTextFieldWithFont:(UIFont *)font textColor:(UIColor *)color placeholder:(NSString *)placeholder;
+ (UITextField *)fs_newTextFieldToSuperView:(UIView *)superView font:(UIFont *)font textColor:(UIColor *)color placeholder:(NSString *)placeholder;

- (UITextView *)fs_newTextViewWithFont:(UIFont *)font textColor:(UIColor *)color;
+ (UITextView *)fs_newTextViewToSuperView:(UIView *)superView font:(UIFont *)font textColor:(UIColor *)color;

- (UIScrollView *)fs_newScrollView;
+ (UIScrollView *)fs_newScrollViewToSuperView:(UIView *)superView;

@end

@interface UITableViewCell (FSNewAutoLayoutView)

- (UIView *)fsCell_newView;
- (UIView *)fsCell_newViewWithColor:(UIColor *)bgColor;

- (UIImageView *)fsCell_newImageView;
- (UIImageView *)fsCell_newImageViewWithColor:(UIColor *)bgColor;
- (UIImageView *)fsCell_newImageViewWithName:(NSString *)name;

- (UILabel *)fsCell_newLabelWithFont:(UIFont *)font color:(UIColor *)color;

- (UIButton *)fsCell_newButtonWithFont:(UIFont *)font color:(UIColor *)color;
- (UIButton *)fsCell_newButtonWithImage:(NSString *)image selectedImage:(NSString *)selectedImage;
- (UIButton *)fsCell_newButtonWithTitle:(NSString *)title font:(UIFont *)font color:(UIColor *)color image:(NSString *)image selectedImage:(NSString *)selectedImage;

- (UITextField *)fsCell_newTextFieldWithFont:(UIFont *)font textColor:(UIColor *)color placeholder:(NSString *)placeholder;

- (UITextView *)fsCell_newTextViewWithFont:(UIFont *)font textColor:(UIColor *)color;
@end

@interface UICollectionViewCell (FSNewAutoLayoutView)

- (UIView *)fsCell_newView;
- (UIView *)fsCell_newViewWithColor:(UIColor *)bgColor;

- (UIImageView *)fsCell_newImageView;
- (UIImageView *)fsCell_newImageViewWithColor:(UIColor *)bgColor;
- (UIImageView *)fsCell_newImageViewWithName:(NSString *)name;

- (UILabel *)fsCell_newLabelWithFont:(UIFont *)font color:(UIColor *)color;

- (UIButton *)fsCell_newButtonWithFont:(UIFont *)font color:(UIColor *)color;
- (UIButton *)fsCell_newButtonWithImage:(NSString *)image selectedImage:(NSString *)selectedImage;
- (UIButton *)fsCell_newButtonWithTitle:(NSString *)title font:(UIFont *)font color:(UIColor *)color image:(NSString *)image selectedImage:(NSString *)selectedImage;

- (UITextField *)fsCell_newTextFieldWithFont:(UIFont *)font textColor:(UIColor *)color placeholder:(NSString *)placeholder;

- (UITextView *)fsCell_newTextViewWithFont:(UIFont *)font textColor:(UIColor *)color;
@end