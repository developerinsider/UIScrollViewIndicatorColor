### UIScrollViewIndicatorColor

#### Overview

**UIScrollViewIndicatorColor
**, an example for how to change the color of `UIScrollview` scroll indicator.

##### Add UIScrollViewDelegate

	@interface ViewController : UIViewController<UIScrollViewDelegate>
	@end 

##### Add scrollViewDidScroll in implementation section

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

![Mou icon](http://i.stack.imgur.com/jW54M.png)

### And more?

Check [StackOverflow Answer](http://stackoverflow.com/questions/12005187/ios-changing-uiscrollview-scrollbar-color-to-different-colors/28718210#28718210)
