//
//  OverlayAppDelegate.m
//  Overlay
//
//  Created by Joachim Bengtsson on 2011-08-02.
//  Copyright 2011 Spotify AB. All rights reserved.
//

#import "OverlayAppDelegate.h"

@implementation OverlayAppDelegate
@synthesize image = _image;

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	[_window setLevel:NSFloatingWindowLevel];
}
-(void)applicationDidBecomeActive:(NSNotification *)notification;
{
	[_window setIgnoresMouseEvents:NO];
}
-(void)applicationDidResignActive:(NSNotification *)notification
{
	[_window setIgnoresMouseEvents:YES];
}
- (IBAction)takeOpacityFrom:(id)sender {
	[_window setAlphaValue:[sender floatValue]];
}

- (IBAction)sizeToFit:(id)sender {
	NSRect r = _window.frame;
	r.size = [[_image image] size];
	r.size.height += 22 + _image.frame.origin.y;
	[_window setFrame:r display:YES animate:YES];
}
@end

