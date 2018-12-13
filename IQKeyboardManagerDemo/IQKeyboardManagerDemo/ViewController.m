//
//  ViewController.m
//  IQKeyboardManagerDemo
//
//  Created by 党玉华 on 2018/12/13.
//  Copyright © 2018年 dangyuhua. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UITextField *tf1 = [self UITextFieldWithFrame:CGRectMake(10, 100, self.view.bounds.size.width-20, 38) cornerRadius:5 font:15 borderStyle:UITextBorderStyleRoundedRect backgroundColor:[UIColor whiteColor] placeholder:@"请输入" attributes:nil returnKeyType:UIReturnKeyDefault leftview:nil rightView:nil clearButtonMode:UITextFieldViewModeWhileEditing keyboardType:UIKeyboardTypeDefault];
    [self.view addSubview:tf1];
    
    UITextField *tf2 = [self UITextFieldWithFrame:CGRectMake(10, 388, self.view.bounds.size.width-20, 38) cornerRadius:5 font:15 borderStyle:UITextBorderStyleRoundedRect backgroundColor:[UIColor whiteColor] placeholder:@"请输入" attributes:nil returnKeyType:UIReturnKeyDefault leftview:nil rightView:nil clearButtonMode:UITextFieldViewModeWhileEditing keyboardType:UIKeyboardTypeDefault];
    [self.view addSubview:tf2];
    
    UITextField *tf3 = [self UITextFieldWithFrame:CGRectMake(10, 439, self.view.bounds.size.width-20, 38) cornerRadius:5 font:15 borderStyle:UITextBorderStyleRoundedRect backgroundColor:[UIColor whiteColor] placeholder:@"请输入" attributes:nil returnKeyType:UIReturnKeyDefault leftview:nil rightView:nil clearButtonMode:UITextFieldViewModeWhileEditing keyboardType:UIKeyboardTypeDefault];
    [self.view addSubview:tf3];
}


-(UITextField *)UITextFieldWithFrame:(CGRect )frame cornerRadius:(CGFloat )r font:(CGFloat)font borderStyle:(UITextBorderStyle )borderStyle backgroundColor:(UIColor *)bgcolor placeholder:(NSString *)placeholder attributes:(NSDictionary<NSAttributedStringKey, id> *)attrs returnKeyType:(UIReturnKeyType)returnKeyType leftview:(UIView *)leftview rightView:(UIView *)rightView clearButtonMode:(UITextFieldViewMode )clearButtonMode keyboardType:(UIKeyboardType )keyboardType{
    UITextField *tf = [[UITextField alloc]initWithFrame:frame];
    tf.layer.cornerRadius = r;
    tf.font = [UIFont systemFontOfSize:font];
    tf.backgroundColor = bgcolor;
    tf.placeholder = placeholder;
    tf.attributedPlaceholder = [[NSAttributedString alloc]initWithString:placeholder attributes:attrs];
    tf.borderStyle = borderStyle;
    leftview.layer.cornerRadius = r;
    tf.leftView = leftview;
    rightView.layer.cornerRadius = r;
    tf.rightView = rightView;
    tf.returnKeyType = returnKeyType;
    tf.leftViewMode = UITextFieldViewModeAlways;
    tf.rightViewMode = UITextFieldViewModeAlways;
    tf.clearButtonMode = clearButtonMode;
    tf.keyboardType = keyboardType;
    return tf;
}

@end
