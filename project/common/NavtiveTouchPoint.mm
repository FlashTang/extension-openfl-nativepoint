#include "Utils.h"
#import <UIKit/UIKit.h>
float x; float y;
bool added = false;
@interface LongPress:NSObject
	-(void)longPressGRHandler:(UILongPressGestureRecognizer *) sender;
@end
@implementation LongPress
	-(void)longPressGRHandler:(UILongPressGestureRecognizer *) sender{
		CGPoint point = [sender locationInView:[UIApplication sharedApplication].windows[0].rootViewController.view];
		x = point.x;
		y = point.y;
	}
@end

namespace navtivetouchpoint {
	
	
	void start(){
		if(!added){
			UIView *firstView = [UIApplication sharedApplication].windows[0].rootViewController.view;
			
			UILongPressGestureRecognizer *longPressGR = [[UILongPressGestureRecognizer alloc]init];
			
			longPressGR.minimumPressDuration = 0;
			
			[longPressGR addTarget:[[LongPress alloc] init] action: @selector(longPressGRHandler:)];
			
			[firstView addGestureRecognizer:longPressGR];

			added = true;
		}
		
	}

	float stageX(){
		return x;
	}
	float stageY(){
		return y;
	}

}