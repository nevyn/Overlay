//
//  OverlayAppDelegate.h
//  Overlay
//
//  Created by Joachim Bengtsson on 2011-08-02.
//  Copyright 2011 Spotify AB. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface OverlayAppDelegate : NSObject <NSApplicationDelegate> {
	NSWindow *_window;
	NSImageView *_image;
}

@property (strong) IBOutlet NSWindow *window;
- (IBAction)takeOpacityFrom:(id)sender;
- (IBAction)sizeToFit:(id)sender;

@property (strong) IBOutlet NSImageView *image;
@end
