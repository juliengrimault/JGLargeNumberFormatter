JGLargeNumberFormatter
======================

NSNumberFormatter subclass that allows formatting of large number using an abbreviations for billions, millions and/or thousands.

Usage
=====
	JGLargeNumberFormatter* formatter = [[JGLargeNumberFormatter alloc] init];
	formatter.numberStyle = NSNumberFormatterDecimalStyle;
	formatter.billionsAbbreviation = @"B";
	formatter.millionsAbbreviation = @"M";
	formatter.thousandsAbbreviation = @"K";
	
	NSUInteger someBillions = 3670000000;
	NSUInteger someMillions = 70400000;
	NSUInteger someThousands = 3100;
  
	self.billionsLabel.text = [formatter stringFromNumber:[NSNumber numberWithUnsignedInteger:someBillions]];
	self.millionsLabel.text = [formatter stringFromNumber:[NSNumber numberWithUnsignedInteger:someMillions]];
	self.thousandsLabel.text = [formatter stringFromNumber:[NSNumber numberWithUnsignedInteger:someThousands]];
