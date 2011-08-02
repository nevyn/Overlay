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
}

@property (strong) IBOutlet NSWindow *window;

@end
