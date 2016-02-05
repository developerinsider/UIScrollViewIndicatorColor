//
//  ViewController.m
//  UIScrollViewIndicatorColor
//
//  Created by Vineet Choudhary on 21/02/15.
//  Copyright (c) 2015 Vineet Choudhary. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    IBOutlet UIScrollView *scrollView;

    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //add imageview in scrollView subView
    UIImage *image = [UIImage imageNamed:@"photo1"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = (CGRect){.origin = CGPointMake(0.0f, 0.0f), .size=image.size};
    scrollView.contentSize = image.size;
    [scrollView addSubview:imageView];
    
    //set sctollView Delegate to self
    scrollView.delegate = self;

}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView1
{
    //get refrence of vertical indicator
    UIImageView *verticalIndicator = ((UIImageView *)[scrollView.subviews objectAtIndex:(scrollView.subviews.count-1)]);
    
    //set color to vertical indicator
    [verticalIndicator setBackgroundColor:[UIColor redColor]];
    
    
    //get refrence of horizontal indicator
    UIImageView *horizontalIndicator = ((UIImageView *)[scrollView.subviews objectAtIndex:(scrollView.subviews.count-2)]);
    
    //set color to horizontal indicator
    [horizontalIndicator setBackgroundColor:[UIColor blueColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
