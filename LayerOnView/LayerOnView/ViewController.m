//
//  ViewController.m
//  LayerOnView
//
//  Created by Tom King on 2023/3/14.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = UIColor.orangeColor;
    view1.frame = CGRectMake(50, 100, 100, 100);
    UITapGestureRecognizer *tapGes1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGesAction:)];
    [view1 addGestureRecognizer:tapGes1];
    
    
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = UIColor.cyanColor;
    view2.frame = CGRectMake(200, 100, 100, 100);
    UITapGestureRecognizer *tapGes2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGesAction:)];
    [view2 addGestureRecognizer:tapGes2];
    
    // 1.On iOS16,it will add the view3 on the view1.But the view1 is not the view3's superview
    // 2.On iOS16 before, it will not add the view3 on the view1.
    UIView *view3 = [[UIView alloc] init];
    view3.frame = view1.bounds;
    [view1.layer addSublayer:view3.layer];
    
    
    [self.view addSubview:view1];
    [self.view addSubview:view2];
    
}

- (void)tapGesAction:(UITapGestureRecognizer *)ges {
    NSLog(@"%@",ges.view);
}

@end
