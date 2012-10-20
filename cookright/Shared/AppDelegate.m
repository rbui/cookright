#import "AppDelegate.h"
#import "CRRootNavigationController.h"

#pragma mark Class Extension

@interface AppDelegate ()
{
	@private UIWindow *_mainWindow;
}


@end // @interface AppDelegate ()


#pragma mark -
#pragma mark Class Definition

@implementation AppDelegate


#pragma mark -
#pragma mark UIApplicationDelegate Methods

- (BOOL)application: (UIApplication *)application 
	didFinishLaunchingWithOptions: (NSDictionary *)launchOptions
{
	// Create the main window.
	UIScreen *mainScreen = [UIScreen mainScreen];
	
	_mainWindow = [[UIWindow alloc] 
		initWithFrame: mainScreen.bounds];
	
	_mainWindow.backgroundColor = [UIColor blackColor];

    // Creat root controller and make it mainwindow's root.
    CRRootNavigationController *rootNavController = [CRRootNavigationController sharedInstance];
    _mainWindow.rootViewController = rootNavController;

	
	// Show the main window.
    [_mainWindow makeKeyAndVisible];
	
	// Indicate success.
	return YES;
}

- (void)applicationWillResignActive: (UIApplication *)application
{
	// Pause ongoing tasks and disable timers.
}

- (void)applicationDidEnterBackground: (UIApplication *)application
{
	// Save application data, invalidate timers and store enough information to recover previous state if the application becomes active again.
}

- (void)applicationWillEnterForeground: (UIApplication *)application
{
	// Undo any changes that were made when the application entered the background.
}

- (void)applicationDidBecomeActive: (UIApplication *)application
{
	 // Restart tasks that were paused when the application resigned its active status.
}

- (void)applicationWillTerminate: (UIApplication *)application
{
	// Save application data and invalidate timers.
}

- (void)applicationDidReceiveMemoryWarning: (UIApplication *)application
{
	// Free up as much memory as possible by purging cached data or any other data that can be read back from disk.
}


#pragma mark -
#pragma mark Private Methods


@end // @implementation AppDelegate