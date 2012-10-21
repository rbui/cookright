#import "CRCustomView.h"


#pragma mark Constants

#define IB_DEFAULT_AUTORESIZINGMASK (UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth)
#define IB_DEFAULT_CONTENTMODE UIViewContentModeScaleToFill
#define IB_DEFAULT_TAG 0
#define IB_DEFAULT_USERINTERACTIONENABLED YES
#define IB_DEFAULT_MULTIPLETOUCHENABLED YES
#define IB_DEFAULT_ALPHA 1.f
#define IB_DEFAULT_BACKGROUNDCOLOR [UIColor whiteColor]
#define IB_DEFAULT_OPAQUE YES
#define IB_DEFAULT_HIDDEN NO
#define IB_DEFAULT_CLEARSCONTEXTBEFOREDRAWING YES
#define IB_DEFAULT_CLIPSTOBOUNDS NO
#define IB_DEFAULT_AUTORESIZESSUBVIEWS YES


#pragma mark - Class Extension

@interface CRCustomView ()


@end // @interface CRCustomView ()


#pragma mark - Class Variables


#pragma mark - Class Definition

@implementation CRCustomView


#pragma mark - Properties


#pragma mark - Constructors

- (id)initWithNibName: (NSString *)nibName
{
    // Load the composite view.
	if ((self = [super initWithFrame: CGRectZero]) == nil)
	{
		return nil;
	}
    
    [self _loadViewWithNibName: nibName bundle: nil];

    return self;
}


#pragma mark - Public Methods


#pragma mark - Overridden Methods


#pragma mark - Private Methods

#pragma mark - Private Methods

- (void)_loadViewWithNibName: (NSString *)nibName
	bundle: (NSBundle *)nibBundleOrNil
{    
	NSBundle *bundle = nibBundleOrNil == nil 
		? [NSBundle mainBundle] 
		: nibBundleOrNil;

	// Load the nib, with this view as it's owner.
	NSArray *nibContents = [bundle loadNibNamed: nibName 
		owner: self 
		options: nil];

	// Get the decoded view.
	UIView *view = [nibContents objectAtIndex: 0];

	// Transfer the auto-resizing mask, if it's not the Interface Builder default.
	if (self.autoresizingMask == IB_DEFAULT_AUTORESIZINGMASK)
	{
		self.autoresizingMask = view.autoresizingMask;
	}
	
	// Transfer the content mode, if it's not the Interface Builder default.
	if (self.contentMode == IB_DEFAULT_CONTENTMODE)
	{
		self.contentMode = view.contentMode;
	}
	
	// Transfer the tag, if it's not the Interface Builder default.
	if (self.tag == IB_DEFAULT_TAG)
	{
		self.tag = view.tag;
	}
	
	// Transfer the user-interaction enabled flag, if it's not the Interface Builder default.
	if (self.userInteractionEnabled == IB_DEFAULT_USERINTERACTIONENABLED)
	{
		self.userInteractionEnabled = view.userInteractionEnabled;
	}
	
	// Transfer the multiple touch enabled flag, if it's not the Interface Builder default.
	if (self.multipleTouchEnabled == IB_DEFAULT_MULTIPLETOUCHENABLED)
	{
		self.multipleTouchEnabled = view.multipleTouchEnabled;
	}
	
	// Transfer the alpha, if it's not the Interface Builder default.
	if (self.alpha == IB_DEFAULT_ALPHA)
	{
		self.alpha = view.alpha;
	}
	
	// Transfer the opaque value, if it's not the Interface Builder default.
	if (self.opaque == IB_DEFAULT_OPAQUE)
	{
		self.opaque = view.opaque;
	}
	
	// Transfer the hidden value, if it's not the Interface Builder default.
	if (self.hidden == IB_DEFAULT_HIDDEN)
	{
		self.hidden = view.hidden;
	}
	
	// Transfer the clears graphics context value, if it's not the Interface Builder default.
	if (self.clearsContextBeforeDrawing == IB_DEFAULT_CLEARSCONTEXTBEFOREDRAWING)
	{
		self.clearsContextBeforeDrawing = view.clearsContextBeforeDrawing;
	}
	
	// Transfer the clips subviews value, if it's not the Interface Builder default.
	if (self.clipsToBounds == IB_DEFAULT_CLIPSTOBOUNDS)
	{
		self.clipsToBounds = view.clipsToBounds;
	}
	
	// Transfer the autoresizes subviews value, if it's not the Interface Builder default.
	if (self.autoresizesSubviews == IB_DEFAULT_AUTORESIZESSUBVIEWS)
	{
		self.autoresizesSubviews = view.autoresizesSubviews;
	}
	
	// Always transfer the view's background color.
	self.backgroundColor = view.backgroundColor;
	
	// Always transfer the view's width and height values.
	CGRect frame = self.frame;
	frame.size.width = view.frame.size.width;
	frame.size.height = view.frame.size.height;
	self.frame = frame;
	
	// Transfer all subviews of the decoded view to the target view.
	for (UIView *subview in view.subviews)
	{
		[subview removeFromSuperview];
		[self addSubview: subview];
	}
}

@end // @implementation CRCustomView