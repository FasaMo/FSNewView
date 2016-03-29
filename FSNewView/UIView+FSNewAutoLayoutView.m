//
//  UITableViewCell+FSNewAutoLayoutView.m
//  SKGShop
//
//  Created by Fasa Mo on 15/6/17.
//  Copyright (c) 2015年 SKG. All rights reserved.
//

#import "UIView+FSNewAutoLayoutView.h"

/**
 *  new一个AutoLayoutView
 */
@implementation UIView (FSNewAutoLayoutView)

#pragma mark
+ (instancetype)fs_newAutoLayoutView
{
    UIView *view = [self new];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    return view;
}

#pragma mark
- (UIView *)fs_newView
{
    UIView *view = [UIView fs_newAutoLayoutView];
    [self addSubview:view];
    return view;
}

- (UIView *)fs_newViewWithColor:(UIColor *)bgColor
{
    UIView *view = [self fs_newView];
    view.backgroundColor = bgColor;
    return view;
}

+ (UIView *)fs_newViewToSuperView:(UIView *)superView
{
    UIView *view = [UIView fs_newAutoLayoutView];
    [superView addSubview:view];
    return view;
}

+ (UIView *)fs_newViewToSuperView:(UIView *)superView color:(UIColor *)bgColor
{
    UIView *view = [self fs_newViewToSuperView:superView];
    view.backgroundColor = bgColor;
    return view;
}

#pragma mark
- (UIImageView *)fs_newImageView
{
    UIImageView *imageView = [UIImageView fs_newAutoLayoutView];
    [self addSubview:imageView];
    return imageView;
}

- (UIImageView *)fs_newImageViewWithColor:(UIColor *)bgColor
{
    UIImageView *imageView = [self fs_newImageView];
    imageView.backgroundColor = bgColor;
    return imageView;
}

- (UIImageView *)fs_newImageViewWithName:(NSString *)name
{
    UIImageView *imageView = [self fs_newImageView];
    imageView.image = [UIImage imageNamed:name];
    return imageView;
}

+ (UIImageView *)fs_newImageViewToSuperView:(UIView *)superView
{
    UIImageView *imageView = [UIImageView fs_newAutoLayoutView];
    [superView addSubview:imageView];
    return imageView;
}

+ (UIImageView *)fs_newImageViewToSuperView:(UIView *)superView color:(UIColor *)bgColor
{
    UIImageView *imageView = [self fs_newImageViewToSuperView:superView];
    imageView.backgroundColor = bgColor;
    return imageView;
}

#pragma mark
- (UILabel *)fs_newLabelWithFont:(UIFont *)font color:(UIColor *)color
{
    UILabel *label = [UILabel fs_newAutoLayoutView];
    label.font = font;
    label.textColor = color;
    [self addSubview:label];
    return label;
}

+ (UILabel *)fs_newLabelToSuperView:(UIView *)superView font:(UIFont *)font color:(UIColor *)color
{
    UILabel *label = [UILabel fs_newAutoLayoutView];
    label.font = font;
    label.textColor = color;
    [superView addSubview:label];
    return label;
}

#pragma mark
- (UIButton *)fs_newButtonWithFont:(UIFont *)font color:(UIColor *)color
{
    UIButton *button = [UIButton fs_newAutoLayoutView];
    button.titleLabel.font = font;
    [button setTitleColor:color forState:UIControlStateNormal];
    [self addSubview:button];
    return button;
}

- (UIButton *)fs_newButtonWithImage:(NSString *)image selectedImage:(NSString *)selectedImage
{
    UIButton *button = [UIButton fs_newAutoLayoutView];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selectedImage] forState:UIControlStateSelected];
    [self addSubview:button];
    return button;
}

- (UIButton *)fs_newButtonWithTitle:(NSString *)title font:(UIFont *)font color:(UIColor *)color image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    UIButton *button = [UIButton fs_newAutoLayoutView];
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.font = font;
    [button setTitleColor:color forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selectedImage] forState:UIControlStateSelected];
    [self addSubview:button];
    return button;
}

+ (UIButton *)fs_newButtonToSuperView:(UIView *)superView font:(UIFont *)font color:(UIColor *)color
{
    UIButton *button = [UIButton fs_newAutoLayoutView];
    button.titleLabel.font = font;
    [button setTitleColor:color forState:UIControlStateNormal];
    [superView addSubview:button];
    return button;
}

#pragma mark
- (UITextField *)fs_newTextFieldWithFont:(UIFont *)font textColor:(UIColor *)color placeholder:(NSString *)placeholder
{
    UITextField *textField = [UITextField fs_newAutoLayoutView];
    textField.font = font;
    textField.placeholder = placeholder;
    textField.textColor = color;
    [self addSubview:textField];
    return textField;
}

+ (UITextField *)fs_newTextFieldToSuperView:(UIView *)superView font:(UIFont *)font textColor:(UIColor *)color placeholder:(NSString *)placeholder
{
    UITextField *textField = [UITextField fs_newAutoLayoutView];
    textField.font = font;
    textField.placeholder = placeholder;
    textField.textColor = color;
    [superView addSubview:textField];
    return textField;
}

#pragma mark
- (UITextView *)fs_newTextViewWithFont:(UIFont *)font textColor:(UIColor *)color
{
    UITextView *textView = [UITextView fs_newAutoLayoutView];
    textView.font = font;
    textView.textColor = color;
    [self addSubview:textView];
    return textView;
}

+ (UITextView *)fs_newTextViewToSuperView:(UIView *)superView font:(UIFont *)font textColor:(UIColor *)color
{
    UITextView *textView = [UITextView fs_newAutoLayoutView];
    textView.font = font;
    textView.textColor = color;
    [superView addSubview:textView];
    return textView;
}

- (UIScrollView *)fs_newScrollView
{
    UIScrollView *scrollView = [UIScrollView fs_newAutoLayoutView];
    [self addSubview:scrollView];
    return scrollView;
}

+ (UIScrollView *)fs_newScrollViewToSuperView:(UIView *)superView
{
    return [superView fs_newScrollView];
}
@end

/**
 *  UITableViewCell newAutoLayoutView
 */
@implementation UITableViewCell (FSNewAutoLayoutView)


- (UIView *)fsCell_newView
{
    UIView *view = [UIView fs_newAutoLayoutView];
    [self.contentView addSubview:view];
    return view;
}

- (UIView *)fsCell_newViewWithColor:(UIColor *)bgColor
{
    UIView *view = [self fsCell_newView];
    view.backgroundColor = bgColor;
    return view;
}

- (UIImageView *)fsCell_newImageView
{
    UIImageView *imageView = [UIImageView fs_newAutoLayoutView];
    [self.contentView addSubview:imageView];
    return imageView;
}

- (UIImageView *)fsCell_newImageViewWithColor:(UIColor *)bgColor
{
    UIImageView *imageView = [self fsCell_newImageView];
    imageView.backgroundColor = bgColor;
    return imageView;
}

- (UIImageView *)fsCell_newImageViewWithName:(NSString *)name
{
    UIImageView *imageView = [self fsCell_newImageView];
    imageView.image = [UIImage imageNamed:name];
    return imageView;
}

- (UILabel *)fsCell_newLabelWithFont:(UIFont *)font color:(UIColor *)color
{
    UILabel *label = [UILabel fs_newAutoLayoutView];
    label.font = font;
    label.textColor = color;
    [self.contentView addSubview:label];
    return label;
}


- (UIButton *)fsCell_newButtonWithFont:(UIFont *)font color:(UIColor *)color
{
    UIButton *button = [UIButton fs_newAutoLayoutView];
    button.titleLabel.font = font;
    [button setTitleColor:color forState:UIControlStateNormal];
    [self.contentView addSubview:button];
    return button;
}

- (UIButton *)fsCell_newButtonWithImage:(NSString *)image selectedImage:(NSString *)selectedImage
{
    UIButton *button = [UIButton fs_newAutoLayoutView];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selectedImage] forState:UIControlStateSelected];
    [self.contentView addSubview:button];
    return button;
}

- (UIButton *)fsCell_newButtonWithTitle:(NSString *)title font:(UIFont *)font color:(UIColor *)color image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    UIButton *button = [UIButton fs_newAutoLayoutView];
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.font = font;
    [button setTitleColor:color forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selectedImage] forState:UIControlStateSelected];
    [self.contentView addSubview:button];
    return button;
}

- (UITextField *)fsCell_newTextFieldWithFont:(UIFont *)font textColor:(UIColor *)color placeholder:(NSString *)placeholder
{
    UITextField *textField = [UITextField fs_newAutoLayoutView];
    textField.font = font;
    textField.placeholder = placeholder;
    textField.textColor = color;
    [self.contentView addSubview:textField];
    return textField;
}

- (UITextView *)fsCell_newTextViewWithFont:(UIFont *)font textColor:(UIColor *)color
{
    UITextView *textView = [UITextView fs_newAutoLayoutView];
    textView.font = font;
    textView.textColor = color;
    [self.contentView addSubview:textView];
    return textView;
}
@end

/**
 *  UICollectionViewCell newAutoLayoutView
 */
@implementation UICollectionViewCell (FSNewAutoLayoutView)


- (UIView *)fsCell_newView
{
    UIView *view = [UIView fs_newAutoLayoutView];
    [self addSubview:view];
    return view;
}

- (UIView *)fsCell_newViewWithColor:(UIColor *)bgColor
{
    UIView *view = [self fsCell_newView];
    view.backgroundColor = bgColor;
    return view;
}

- (UIImageView *)fsCell_newImageView
{
    UIImageView *imageView = [UIImageView fs_newAutoLayoutView];
    [self addSubview:imageView];
    return imageView;
}

- (UIImageView *)fsCell_newImageViewWithColor:(UIColor *)bgColor
{
    UIImageView *imageView = [self fsCell_newImageView];
    imageView.backgroundColor = bgColor;
    return imageView;
}

- (UIImageView *)fsCell_newImageViewWithName:(NSString *)name
{
    UIImageView *imageView = [self fsCell_newImageView];
    imageView.image = [UIImage imageNamed:name];
    return imageView;
}

- (UILabel *)fsCell_newLabelWithFont:(UIFont *)font color:(UIColor *)color
{
    UILabel *label = [UILabel fs_newAutoLayoutView];
    label.font = font;
    label.textColor = color;
    [self addSubview:label];
    return label;
}


- (UIButton *)fsCell_newButtonWithFont:(UIFont *)font color:(UIColor *)color
{
    UIButton *button = [UIButton fs_newAutoLayoutView];
    button.titleLabel.font = font;
    [button setTitleColor:color forState:UIControlStateNormal];
    [self addSubview:button];
    return button;
}

- (UIButton *)fsCell_newButtonWithImage:(NSString *)image selectedImage:(NSString *)selectedImage
{
    UIButton *button = [UIButton fs_newAutoLayoutView];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selectedImage] forState:UIControlStateSelected];
    [self.contentView addSubview:button];
    return button;
}

- (UIButton *)fsCell_newButtonWithTitle:(NSString *)title font:(UIFont *)font color:(UIColor *)color image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    UIButton *button = [UIButton fs_newAutoLayoutView];
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.font = font;
    [button setTitleColor:color forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selectedImage] forState:UIControlStateSelected];
    [self.contentView addSubview:button];
    return button;
}

- (UITextField *)fsCell_newTextFieldWithFont:(UIFont *)font textColor:(UIColor *)color placeholder:(NSString *)placeholder
{
    UITextField *textField = [UITextField fs_newAutoLayoutView];
    textField.font = font;
    textField.placeholder = placeholder;
    textField.textColor = color;
    [self addSubview:textField];
    return textField;
}

- (UITextView *)fsCell_newTextViewWithFont:(UIFont *)font textColor:(UIColor *)color
{
    UITextView *textView = [UITextView fs_newAutoLayoutView];
    textView.font = font;
    textView.textColor = color;
    [self addSubview:textView];
    return textView;
}

@end